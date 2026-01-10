package n0;

import android.view.ViewConfiguration;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class u0 {
    public static int a(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static boolean b(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
