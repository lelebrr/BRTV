package androidx.appcompat.widget;

import android.graphics.Rect;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class y1 {
    public static void a(PopupWindow popupWindow, Rect rect) {
        popupWindow.setEpicenterBounds(rect);
    }

    public static void b(PopupWindow popupWindow, boolean z7) {
        popupWindow.setIsClippedToScreen(z7);
    }
}
