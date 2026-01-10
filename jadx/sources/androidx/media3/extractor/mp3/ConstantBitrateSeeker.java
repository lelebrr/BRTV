package androidx.media3.extractor.mp3;

import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.MpegAudioUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class ConstantBitrateSeeker extends ConstantBitrateSeekMap implements Seeker {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataEndPosition;
    private final long firstFramePosition;
    private final int frameSize;

    public ConstantBitrateSeeker(long j10, long j11, MpegAudioUtil.Header header, boolean z7) {
        this(j10, j11, header.bitrate, header.frameSize, z7);
    }

    public ConstantBitrateSeeker copyWithNewDataEndPosition(long j10) {
        return new ConstantBitrateSeeker(j10, this.firstFramePosition, this.bitrate, this.frameSize, this.allowSeeksIfLengthUnknown);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j10) {
        return getTimeUsAtPosition(j10);
    }

    public ConstantBitrateSeeker(long j10, long j11, int i6, int i10, boolean z7) {
        super(j10, j11, i6, i10, z7);
        this.firstFramePosition = j11;
        this.bitrate = i6;
        this.frameSize = i10;
        this.allowSeeksIfLengthUnknown = z7;
        this.dataEndPosition = j10 == -1 ? -1L : j10;
    }
}
