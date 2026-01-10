package androidx.media3.common;

import android.os.SystemClock;
import androidx.media3.common.SimpleBasePlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class f0 {
    static {
        SimpleBasePlayer.PositionSupplier positionSupplier = SimpleBasePlayer.PositionSupplier.ZERO;
    }

    public static SimpleBasePlayer.PositionSupplier a(long j10) {
        return new e0(j10);
    }

    public static SimpleBasePlayer.PositionSupplier b(final long j10, final float f) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        return new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.d0
            @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
            public final long get() {
                return f0.d(j10, jElapsedRealtime, f);
            }
        };
    }

    public static /* synthetic */ long d(long j10, long j11, float f) {
        return j10 + ((long) ((SystemClock.elapsedRealtime() - j11) * f));
    }

    public static /* synthetic */ long c(long j10) {
        return j10;
    }
}
