package androidx.core.widget;

import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m {
    public static boolean a(PopupWindow popupWindow) {
        return popupWindow.getOverlapAnchor();
    }

    public static int b(PopupWindow popupWindow) {
        return popupWindow.getWindowLayoutType();
    }

    public static void c(PopupWindow popupWindow, boolean z7) {
        popupWindow.setOverlapAnchor(z7);
    }

    public static void d(PopupWindow popupWindow, int i6) {
        popupWindow.setWindowLayoutType(i6);
    }
}
