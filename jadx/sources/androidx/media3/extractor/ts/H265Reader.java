package androidx.media3.extractor.ts;

import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import b7.b;
import java.util.Collections;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class H265Reader implements ElementaryStreamReader {
    private final String containerMimeType;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private SampleReader sampleReader;
    private final SeiReader seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final NalUnitTargetBuffer vps = new NalUnitTargetBuffer(32, 128);
    private final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(33, 128);
    private final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(34, 128);
    private final NalUnitTargetBuffer prefixSei = new NalUnitTargetBuffer(39, 128);
    private final NalUnitTargetBuffer suffixSei = new NalUnitTargetBuffer(40, 128);
    private long pesTimeUs = C.TIME_UNSET;
    private final ParsableByteArray seiWrapper = new ParsableByteArray();

    /* compiled from: MyApplication */
    public static final class SampleReader {
        private static final int FIRST_SLICE_FLAG_OFFSET = 2;
        private boolean isFirstPrefixNalUnit;
        private boolean isFirstSlice;
        private boolean lookingForFirstSliceFlag;
        private int nalUnitBytesRead;
        private boolean nalUnitHasKeyframeData;
        private long nalUnitPosition;
        private long nalUnitTimeUs;
        private final TrackOutput output;
        private boolean readingPrefix;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;

        public SampleReader(TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        private static boolean isPrefixNalUnit(int i6) {
            return (32 <= i6 && i6 <= 35) || i6 == 39;
        }

        private static boolean isVclBodyNalUnit(int i6) {
            return i6 < 32 || i6 == 40;
        }

        private void outputSample(int i6) {
            long j10 = this.sampleTimeUs;
            if (j10 != C.TIME_UNSET) {
                long j11 = this.nalUnitPosition;
                long j12 = this.samplePosition;
                if (j11 == j12) {
                    return;
                }
                boolean z7 = this.sampleIsKeyframe;
                this.output.sampleMetadata(j10, z7 ? 1 : 0, (int) (j11 - j12), i6, null);
            }
        }

        public void endNalUnit(long j10, int i6, boolean z7) {
            if (this.readingPrefix && this.isFirstSlice) {
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingPrefix = false;
            } else if (this.isFirstPrefixNalUnit || this.isFirstSlice) {
                if (z7 && this.readingSample) {
                    outputSample(i6 + ((int) (j10 - this.nalUnitPosition)));
                }
                this.samplePosition = this.nalUnitPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingSample = true;
            }
        }

        public void readNalUnitData(byte[] bArr, int i6, int i10) {
            if (this.lookingForFirstSliceFlag) {
                int i11 = this.nalUnitBytesRead;
                int i12 = (i6 + 2) - i11;
                if (i12 >= i10) {
                    this.nalUnitBytesRead = (i10 - i6) + i11;
                } else {
                    this.isFirstSlice = (bArr[i12] & 128) != 0;
                    this.lookingForFirstSliceFlag = false;
                }
            }
        }

        public void reset() {
            this.lookingForFirstSliceFlag = false;
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.readingSample = false;
            this.readingPrefix = false;
        }

        public void startNalUnit(long j10, int i6, int i10, long j11, boolean z7) {
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.nalUnitTimeUs = j11;
            this.nalUnitBytesRead = 0;
            this.nalUnitPosition = j10;
            if (!isVclBodyNalUnit(i10)) {
                if (this.readingSample && !this.readingPrefix) {
                    if (z7) {
                        outputSample(i6);
                    }
                    this.readingSample = false;
                }
                if (isPrefixNalUnit(i10)) {
                    this.isFirstPrefixNalUnit = !this.readingPrefix;
                    this.readingPrefix = true;
                }
            }
            boolean z10 = i10 >= 16 && i10 <= 21;
            this.nalUnitHasKeyframeData = z10;
            this.lookingForFirstSliceFlag = z10 || i10 <= 9;
        }
    }

    public H265Reader(SeiReader seiReader, String str) {
        this.seiReader = seiReader;
        this.containerMimeType = str;
    }

    private void assertTracksCreated() {
        Assertions.checkStateNotNull(this.output);
        Util.castNonNull(this.sampleReader);
    }

    private void endNalUnit(long j10, int i6, int i10, long j11) {
        this.sampleReader.endNalUnit(j10, i6, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.endNalUnit(i10);
            this.sps.endNalUnit(i10);
            this.pps.endNalUnit(i10);
            if (this.vps.isCompleted() && this.sps.isCompleted() && this.pps.isCompleted()) {
                Format mediaFormat = parseMediaFormat(this.formatId, this.vps, this.sps, this.pps, this.containerMimeType);
                this.output.format(mediaFormat);
                b.o(mediaFormat.maxNumReorderSamples != -1);
                this.seiReader.setReorderingQueueSize(mediaFormat.maxNumReorderSamples);
                this.hasOutputFormat = true;
            }
        }
        if (this.prefixSei.endNalUnit(i10)) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.prefixSei;
            this.seiWrapper.reset(this.prefixSei.nalData, NalUnitUtil.unescapeStream(nalUnitTargetBuffer.nalData, nalUnitTargetBuffer.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j11, this.seiWrapper);
        }
        if (this.suffixSei.endNalUnit(i10)) {
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.suffixSei;
            this.seiWrapper.reset(this.suffixSei.nalData, NalUnitUtil.unescapeStream(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j11, this.seiWrapper);
        }
    }

    private void nalUnitData(byte[] bArr, int i6, int i10) {
        this.sampleReader.readNalUnitData(bArr, i6, i10);
        if (!this.hasOutputFormat) {
            this.vps.appendToNalUnit(bArr, i6, i10);
            this.sps.appendToNalUnit(bArr, i6, i10);
            this.pps.appendToNalUnit(bArr, i6, i10);
        }
        this.prefixSei.appendToNalUnit(bArr, i6, i10);
        this.suffixSei.appendToNalUnit(bArr, i6, i10);
    }

    private static Format parseMediaFormat(String str, NalUnitTargetBuffer nalUnitTargetBuffer, NalUnitTargetBuffer nalUnitTargetBuffer2, NalUnitTargetBuffer nalUnitTargetBuffer3, String str2) {
        int i6 = nalUnitTargetBuffer.nalLength;
        byte[] bArr = new byte[nalUnitTargetBuffer2.nalLength + i6 + nalUnitTargetBuffer3.nalLength];
        System.arraycopy(nalUnitTargetBuffer.nalData, 0, bArr, 0, i6);
        System.arraycopy(nalUnitTargetBuffer2.nalData, 0, bArr, nalUnitTargetBuffer.nalLength, nalUnitTargetBuffer2.nalLength);
        System.arraycopy(nalUnitTargetBuffer3.nalData, 0, bArr, nalUnitTargetBuffer.nalLength + nalUnitTargetBuffer2.nalLength, nalUnitTargetBuffer3.nalLength);
        NalUnitUtil.H265SpsData h265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(nalUnitTargetBuffer2.nalData, 3, nalUnitTargetBuffer2.nalLength, null);
        NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = h265SpsNalUnit.profileTierLevel;
        return new Format.Builder().setId(str).setContainerMimeType(str2).setSampleMimeType(MimeTypes.VIDEO_H265).setCodecs(h265ProfileTierLevel != null ? CodecSpecificDataUtil.buildHevcCodecString(h265ProfileTierLevel.generalProfileSpace, h265ProfileTierLevel.generalTierFlag, h265ProfileTierLevel.generalProfileIdc, h265ProfileTierLevel.generalProfileCompatibilityFlags, h265ProfileTierLevel.constraintBytes, h265ProfileTierLevel.generalLevelIdc) : null).setWidth(h265SpsNalUnit.width).setHeight(h265SpsNalUnit.height).setColorInfo(new ColorInfo.Builder().setColorSpace(h265SpsNalUnit.colorSpace).setColorRange(h265SpsNalUnit.colorRange).setColorTransfer(h265SpsNalUnit.colorTransfer).setLumaBitdepth(h265SpsNalUnit.bitDepthLumaMinus8 + 8).setChromaBitdepth(h265SpsNalUnit.bitDepthChromaMinus8 + 8).build()).setPixelWidthHeightRatio(h265SpsNalUnit.pixelWidthHeightRatio).setMaxNumReorderSamples(h265SpsNalUnit.maxNumReorderPics).setMaxSubLayers(h265SpsNalUnit.maxSubLayersMinus1 + 1).setInitializationData(Collections.singletonList(bArr)).build();
    }

    private void startNalUnit(long j10, int i6, int i10, long j11) {
        this.sampleReader.startNalUnit(j10, i6, i10, j11, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.startNalUnit(i10);
            this.sps.startNalUnit(i10);
            this.pps.startNalUnit(i10);
        }
        this.prefixSei.startNalUnit(i10);
        this.suffixSei.startNalUnit(i10);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        int i6;
        int i10;
        assertTracksCreated();
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int iLimit = parsableByteArray.limit();
            byte[] data = parsableByteArray.getData();
            this.totalBytesWritten += parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            while (position < iLimit) {
                int iFindNalUnit = NalUnitUtil.findNalUnit(data, position, iLimit, this.prefixFlags);
                if (iFindNalUnit == iLimit) {
                    nalUnitData(data, position, iLimit);
                    return;
                }
                int h265NalUnitType = NalUnitUtil.getH265NalUnitType(data, iFindNalUnit);
                if (iFindNalUnit <= 0 || data[iFindNalUnit - 1] != 0) {
                    i6 = iFindNalUnit;
                    i10 = 3;
                } else {
                    i6 = iFindNalUnit - 1;
                    i10 = 4;
                }
                int i11 = i6 - position;
                if (i11 > 0) {
                    nalUnitData(data, position, i6);
                }
                int i12 = iLimit - i6;
                long j10 = this.totalBytesWritten - i12;
                endNalUnit(j10, i12, i11 < 0 ? -i11 : 0, this.pesTimeUs);
                startNalUnit(j10, i12, h265NalUnitType, this.pesTimeUs);
                position = i6 + i10;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack);
        this.seiReader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished(boolean z7) {
        assertTracksCreated();
        if (z7) {
            this.seiReader.flush();
            endNalUnit(this.totalBytesWritten, 0, 0, this.pesTimeUs);
            startNalUnit(this.totalBytesWritten, 0, 48, this.pesTimeUs);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j10, int i6) {
        this.pesTimeUs = j10;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.pesTimeUs = C.TIME_UNSET;
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.vps.reset();
        this.sps.reset();
        this.pps.reset();
        this.prefixSei.reset();
        this.suffixSei.reset();
        this.seiReader.clear();
        SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.reset();
        }
    }
}
