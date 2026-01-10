package n0;

import android.view.ViewConfiguration;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class v0 {
    public static int a(ViewConfiguration viewConfiguration, int i6, int i10, int i11) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i6, i10, i11);
    }

    public static int b(ViewConfiguration viewConfiguration, int i6, int i10, int i11) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i6, i10, i11);
    }
}
