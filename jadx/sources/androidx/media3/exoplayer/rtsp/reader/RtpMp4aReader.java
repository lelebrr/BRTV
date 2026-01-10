package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.C;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import d7.z1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtpMp4aReader implements RtpPayloadReader {
    private static final String PARAMETER_MP4A_CONFIG = "config";
    private static final String TAG = "RtpMp4aReader";
    private long firstReceivedTimestamp;
    private int fragmentedSampleSizeBytes;
    private long fragmentedSampleTimeUs;
    private final int numberOfSubframes;
    private final RtpPayloadFormat payloadFormat;
    private int previousSequenceNumber;
    private long startTimeOffsetUs;
    private TrackOutput trackOutput;

    public RtpMp4aReader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
        try {
            this.numberOfSubframes = getNumOfSubframesFromMpeg4AudioConfig(rtpPayloadFormat.fmtpParameters);
            this.firstReceivedTimestamp = C.TIME_UNSET;
            this.previousSequenceNumber = -1;
            this.fragmentedSampleSizeBytes = 0;
            this.startTimeOffsetUs = 0L;
            this.fragmentedSampleTimeUs = C.TIME_UNSET;
        } catch (ParserException e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    private static int getNumOfSubframesFromMpeg4AudioConfig(z1 z1Var) throws ParserException {
        String str = (String) z1Var.get(PARAMETER_MP4A_CONFIG);
        int i6 = 0;
        i6 = 0;
        if (str != null && str.length() % 2 == 0) {
            ParsableBitArray parsableBitArray = new ParsableBitArray(Util.getBytesFromHexString(str));
            int bits = parsableBitArray.readBits(1);
            if (bits != 0) {
                throw ParserException.createForMalformedDataOfUnknownType("unsupported audio mux version: " + bits, null);
            }
            Assertions.checkArgument(parsableBitArray.readBits(1) == 1, "Only supports allStreamsSameTimeFraming.");
            int bits2 = parsableBitArray.readBits(6);
            Assertions.checkArgument(parsableBitArray.readBits(4) == 0, "Only suppors one program.");
            Assertions.checkArgument(parsableBitArray.readBits(3) == 0, "Only suppors one layer.");
            i6 = bits2;
        }
        return i6 + 1;
    }

    private void outputSampleMetadataForFragmentedPackets() {
        ((TrackOutput) Assertions.checkNotNull(this.trackOutput)).sampleMetadata(this.fragmentedSampleTimeUs, 1, this.fragmentedSampleSizeBytes, 0, null);
        this.fragmentedSampleSizeBytes = 0;
        this.fragmentedSampleTimeUs = C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) {
        Assertions.checkStateNotNull(this.trackOutput);
        int nextSequenceNumber = RtpPacket.getNextSequenceNumber(this.previousSequenceNumber);
        if (this.fragmentedSampleSizeBytes > 0 && nextSequenceNumber < i6) {
            outputSampleMetadataForFragmentedPackets();
        }
        for (int i10 = 0; i10 < this.numberOfSubframes; i10++) {
            int i11 = 0;
            while (parsableByteArray.getPosition() < parsableByteArray.limit()) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                i11 += unsignedByte;
                if (unsignedByte != 255) {
                    break;
                }
            }
            this.trackOutput.sampleData(parsableByteArray, i11);
            this.fragmentedSampleSizeBytes += i11;
        }
        this.fragmentedSampleTimeUs = RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j10, this.firstReceivedTimestamp, this.payloadFormat.clockRate);
        if (z7) {
            outputSampleMetadataForFragmentedPackets();
        }
        this.previousSequenceNumber = i6;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i6) {
        TrackOutput trackOutputTrack = extractorOutput.track(i6, 2);
        this.trackOutput = trackOutputTrack;
        ((TrackOutput) Util.castNonNull(trackOutputTrack)).format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j10, int i6) {
        Assertions.checkState(this.firstReceivedTimestamp == C.TIME_UNSET);
        this.firstReceivedTimestamp = j10;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j10, long j11) {
        this.firstReceivedTimestamp = j10;
        this.fragmentedSampleSizeBytes = 0;
        this.startTimeOffsetUs = j11;
    }
}
