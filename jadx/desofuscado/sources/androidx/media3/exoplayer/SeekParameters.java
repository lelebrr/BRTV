package androidx.media3.exoplayer;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SeekParameters {
    public static final SeekParameters CLOSEST_SYNC;
    public static final SeekParameters DEFAULT;
    public static final SeekParameters EXACT;
    public static final SeekParameters NEXT_SYNC;
    public static final SeekParameters PREVIOUS_SYNC;
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        EXACT = seekParameters;
        CLOSEST_SYNC = new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
        PREVIOUS_SYNC = new SeekParameters(Long.MAX_VALUE, 0L);
        NEXT_SYNC = new SeekParameters(0L, Long.MAX_VALUE);
        DEFAULT = seekParameters;
    }

    public SeekParameters(long j10, long j11) {
        Assertions.checkArgument(j10 >= 0);
        Assertions.checkArgument(j11 >= 0);
        this.toleranceBeforeUs = j10;
        this.toleranceAfterUs = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SeekParameters.class != obj.getClass()) {
            return false;
        }
        SeekParameters seekParameters = (SeekParameters) obj;
        return this.toleranceBeforeUs == seekParameters.toleranceBeforeUs && this.toleranceAfterUs == seekParameters.toleranceAfterUs;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }

    public long resolveSeekPositionUs(long j10, long j11, long j12) {
        long j13 = this.toleranceBeforeUs;
        if (j13 == 0 && this.toleranceAfterUs == 0) {
            return j10;
        }
        long jSubtractWithOverflowDefault = Util.subtractWithOverflowDefault(j10, j13, Long.MIN_VALUE);
        long jAddWithOverflowDefault = Util.addWithOverflowDefault(j10, this.toleranceAfterUs, Long.MAX_VALUE);
        boolean z7 = false;
        boolean z10 = jSubtractWithOverflowDefault <= j11 && j11 <= jAddWithOverflowDefault;
        if (jSubtractWithOverflowDefault <= j12 && j12 <= jAddWithOverflowDefault) {
            z7 = true;
        }
        return (z10 && z7) ? Math.abs(j11 - j10) <= Math.abs(j12 - j10) ? j11 : j12 : z10 ? j11 : z7 ? j12 : jSubtractWithOverflowDefault;
    }
}
