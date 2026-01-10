package androidx.media3.extractor;

import androidx.media3.common.C;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.SeekMap;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class ConstantBitrateSeekMap implements SeekMap {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFrameBytePosition;
    private final int frameSize;
    private final long inputLength;

    public ConstantBitrateSeekMap(long j10, long j11, int i6, int i10) {
        this(j10, j11, i6, i10, false);
    }

    private long getFramePositionForTimeUs(long j10) {
        int i6 = this.frameSize;
        long jMin = (((j10 * this.bitrate) / 8000000) / i6) * i6;
        long j11 = this.dataSize;
        if (j11 != -1) {
            jMin = Math.min(jMin, j11 - i6);
        }
        return this.firstFrameBytePosition + Math.max(jMin, 0L);
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j10) {
        if (this.dataSize == -1 && !this.allowSeeksIfLengthUnknown) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstFrameBytePosition));
        }
        long framePositionForTimeUs = getFramePositionForTimeUs(j10);
        long timeUsAtPosition = getTimeUsAtPosition(framePositionForTimeUs);
        SeekPoint seekPoint = new SeekPoint(timeUsAtPosition, framePositionForTimeUs);
        if (this.dataSize != -1 && timeUsAtPosition < j10) {
            int i6 = this.frameSize;
            if (i6 + framePositionForTimeUs < this.inputLength) {
                long j11 = framePositionForTimeUs + i6;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUsAtPosition(j11), j11));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUsAtPosition(long j10) {
        return getTimeUsAtPosition(j10, this.firstFrameBytePosition, this.bitrate);
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1 || this.allowSeeksIfLengthUnknown;
    }

    public ConstantBitrateSeekMap(long j10, long j11, int i6, int i10, boolean z7) {
        this.inputLength = j10;
        this.firstFrameBytePosition = j11;
        this.frameSize = i10 == -1 ? 1 : i10;
        this.bitrate = i6;
        this.allowSeeksIfLengthUnknown = z7;
        if (j10 == -1) {
            this.dataSize = -1L;
            this.durationUs = C.TIME_UNSET;
        } else {
            this.dataSize = j10 - j11;
            this.durationUs = getTimeUsAtPosition(j10, j11, i6);
        }
    }

    private static long getTimeUsAtPosition(long j10, long j11, int i6) {
        return (Math.max(0L, j10 - j11) * 8000000) / i6;
    }
}
