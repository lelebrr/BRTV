package n0;

import android.view.VelocityTracker;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class y {
    public static float a(VelocityTracker velocityTracker, int i6) {
        return velocityTracker.getAxisVelocity(i6);
    }

    public static float b(VelocityTracker velocityTracker, int i6, int i10) {
        return velocityTracker.getAxisVelocity(i6, i10);
    }

    public static boolean c(VelocityTracker velocityTracker, int i6) {
        return velocityTracker.isAxisSupported(i6);
    }
}
