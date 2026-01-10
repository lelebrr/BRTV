package n0;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n0 {
    public static int a(View view) {
        return view.getImportantForContentCapture();
    }

    public static CharSequence b(View view) {
        return view.getStateDescription();
    }

    public static boolean c(View view) {
        return view.isImportantForContentCapture();
    }

    public static void d(View view, int i6) {
        view.setImportantForContentCapture(i6);
    }

    public static void e(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }
}
