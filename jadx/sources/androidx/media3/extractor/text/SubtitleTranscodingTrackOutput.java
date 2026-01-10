package androidx.media3.extractor.text;

import androidx.media3.common.C;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.d;
import androidx.media3.extractor.text.SubtitleParser;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class SubtitleTranscodingTrackOutput implements TrackOutput {
    private static final String TAG = "SubtitleTranscodingTO";
    private Format currentFormat;
    private SubtitleParser currentSubtitleParser;
    private final TrackOutput delegate;
    private boolean shouldSuppressParsingErrors;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final CueEncoder cueEncoder = new CueEncoder();
    private int sampleDataStart = 0;
    private int sampleDataEnd = 0;
    private byte[] sampleData = Util.EMPTY_BYTE_ARRAY;
    private final ParsableByteArray parsableScratch = new ParsableByteArray();

    public SubtitleTranscodingTrackOutput(TrackOutput trackOutput, SubtitleParser.Factory factory) {
        this.delegate = trackOutput;
        this.subtitleParserFactory = factory;
    }

    private void ensureSampleDataCapacity(int i6) {
        int length = this.sampleData.length;
        int i10 = this.sampleDataEnd;
        if (length - i10 >= i6) {
            return;
        }
        int i11 = i10 - this.sampleDataStart;
        int iMax = Math.max(i11 * 2, i6 + i11);
        byte[] bArr = this.sampleData;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.sampleDataStart, bArr2, 0, i11);
        this.sampleDataStart = 0;
        this.sampleDataEnd = i11;
        this.sampleData = bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: outputSample, reason: merged with bridge method [inline-methods] */
    public void lambda$sampleMetadata$0(CuesWithTiming cuesWithTiming, long j10, int i6) {
        Assertions.checkStateNotNull(this.currentFormat);
        byte[] bArrEncode = this.cueEncoder.encode(cuesWithTiming.cues, cuesWithTiming.durationUs);
        this.parsableScratch.reset(bArrEncode);
        this.delegate.sampleData(this.parsableScratch, bArrEncode.length);
        long j11 = cuesWithTiming.startTimeUs;
        if (j11 == C.TIME_UNSET) {
            Assertions.checkState(this.currentFormat.subsampleOffsetUs == Long.MAX_VALUE);
        } else {
            long j12 = this.currentFormat.subsampleOffsetUs;
            j10 = j12 == Long.MAX_VALUE ? j10 + j11 : j11 + j12;
        }
        this.delegate.sampleMetadata(j10, i6 | 1, bArrEncode.length, 0, null);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ void durationUs(long j10) {
        d.a(this, j10);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void format(Format format) {
        Assertions.checkNotNull(format.sampleMimeType);
        Assertions.checkArgument(MimeTypes.getTrackType(format.sampleMimeType) == 3);
        if (!format.equals(this.currentFormat)) {
            this.currentFormat = format;
            this.currentSubtitleParser = this.subtitleParserFactory.supportsFormat(format) ? this.subtitleParserFactory.create(format) : null;
        }
        if (this.currentSubtitleParser == null) {
            this.delegate.format(format);
        } else {
            this.delegate.format(format.buildUpon().setSampleMimeType(MimeTypes.APPLICATION_MEDIA3_CUES).setCodecs(format.sampleMimeType).setSubsampleOffsetUs(Long.MAX_VALUE).setCueReplacementBehavior(this.subtitleParserFactory.getCueReplacementBehavior(format)).build());
        }
    }

    public void resetSubtitleParser() {
        SubtitleParser subtitleParser = this.currentSubtitleParser;
        if (subtitleParser != null) {
            subtitleParser.reset();
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ int sampleData(DataReader dataReader, int i6, boolean z7) {
        return d.b(this, dataReader, i6, z7);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleMetadata(final long j10, final int i6, int i10, int i11, TrackOutput.CryptoData cryptoData) {
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleMetadata(j10, i6, i10, i11, cryptoData);
            return;
        }
        Assertions.checkArgument(cryptoData == null, "DRM on subtitles is not supported");
        int i12 = (this.sampleDataEnd - i11) - i10;
        try {
            this.currentSubtitleParser.parse(this.sampleData, i12, i10, SubtitleParser.OutputOptions.allCues(), new Consumer() { // from class: androidx.media3.extractor.text.b
                @Override // androidx.media3.common.util.Consumer, l8.a
                public final void accept(Object obj) {
                    this.f2485a.lambda$sampleMetadata$0(j10, i6, (CuesWithTiming) obj);
                }
            });
        } catch (RuntimeException e5) {
            if (!this.shouldSuppressParsingErrors) {
                throw e5;
            }
            Log.w(TAG, "Parsing subtitles failed, ignoring sample.", e5);
        }
        int i13 = i12 + i10;
        this.sampleDataStart = i13;
        if (i13 == this.sampleDataEnd) {
            this.sampleDataStart = 0;
            this.sampleDataEnd = 0;
        }
    }

    public void shouldSuppressParsingErrors(boolean z7) {
        this.shouldSuppressParsingErrors = z7;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final /* synthetic */ void sampleData(ParsableByteArray parsableByteArray, int i6) {
        d.c(this, parsableByteArray, i6);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public int sampleData(DataReader dataReader, int i6, boolean z7, int i10) throws IOException {
        if (this.currentSubtitleParser == null) {
            return this.delegate.sampleData(dataReader, i6, z7, i10);
        }
        ensureSampleDataCapacity(i6);
        int i11 = dataReader.read(this.sampleData, this.sampleDataEnd, i6);
        if (i11 != -1) {
            this.sampleDataEnd += i11;
            return i11;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // androidx.media3.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i6, int i10) {
        if (this.currentSubtitleParser == null) {
            this.delegate.sampleData(parsableByteArray, i6, i10);
            return;
        }
        ensureSampleDataCapacity(i6);
        parsableByteArray.readBytes(this.sampleData, this.sampleDataEnd, i6);
        this.sampleDataEnd += i6;
    }
}
