package androidx.appcompat.widget;

import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f910a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ListPopupWindow f911b;

    public /* synthetic */ z1(ListPopupWindow listPopupWindow, int i6) {
        this.f910a = i6;
        this.f911b = listPopupWindow;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListPopupWindow listPopupWindow = this.f911b;
        switch (this.f910a) {
            case 0:
                s1 s1Var = listPopupWindow.f563c;
                if (s1Var != null) {
                    s1Var.setListSelectionHidden(true);
                    s1Var.requestLayout();
                    break;
                }
                break;
            default:
                s1 s1Var2 = listPopupWindow.f563c;
                if (s1Var2 != null) {
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    if (s1Var2.isAttachedToWindow() && listPopupWindow.f563c.getCount() > listPopupWindow.f563c.getChildCount() && listPopupWindow.f563c.getChildCount() <= listPopupWindow.f571m) {
                        listPopupWindow.f583y.setInputMethodMode(2);
                        listPopupWindow.a();
                        break;
                    }
                }
                break;
        }
    }
}
