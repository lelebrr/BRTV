package androidx.media3.common.util;

import androidx.media3.common.C;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ConstantRateTimestampIterator implements TimestampIterator {
    private final long endPositionUs;
    private final float frameRate;
    private int framesAdded;
    private final double framesDurationUs;
    private final long startPositionUs;
    private final int totalNumberOfFramesToAdd;

    public ConstantRateTimestampIterator(long j10, float f) {
        this(0L, j10, f);
    }

    private long getTimestampUsAfter(int i6) {
        long jRound = Math.round(this.framesDurationUs * i6) + this.startPositionUs;
        Assertions.checkState(jRound >= 0);
        return jRound;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long getLastTimestampUs() {
        int i6 = this.totalNumberOfFramesToAdd;
        return i6 == 0 ? C.TIME_UNSET : getTimestampUsAfter(i6 - 1);
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public boolean hasNext() {
        return this.framesAdded < this.totalNumberOfFramesToAdd;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long next() {
        Assertions.checkState(hasNext());
        int i6 = this.framesAdded;
        this.framesAdded = i6 + 1;
        return getTimestampUsAfter(i6);
    }

    public ConstantRateTimestampIterator(long j10, long j11, float f) {
        boolean z7 = false;
        Assertions.checkArgument(j11 > 0);
        Assertions.checkArgument(f > 0.0f);
        if (0 <= j10 && j10 < j11) {
            z7 = true;
        }
        Assertions.checkArgument(z7);
        this.startPositionUs = j10;
        this.endPositionUs = j11;
        this.frameRate = f;
        this.totalNumberOfFramesToAdd = Math.max(Math.round(((j11 - j10) / 1000000.0f) * f), 1);
        this.framesDurationUs = 1000000.0f / f;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public ConstantRateTimestampIterator copyOf() {
        return new ConstantRateTimestampIterator(this.startPositionUs, this.endPositionUs, this.frameRate);
    }
}
