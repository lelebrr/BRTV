package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i2 extends ListPopupWindow implements d2 {
    public static final Method D;
    public j7.c C;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                D = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    public final s1 b(Context context, boolean z7) {
        h2 h2Var = new h2(context, z7);
        h2Var.setHoverListener(this);
        return h2Var;
    }

    @Override // androidx.appcompat.widget.d2
    public final void d(k.l lVar, k.n nVar) {
        j7.c cVar = this.C;
        if (cVar != null) {
            cVar.d(lVar, nVar);
        }
    }

    @Override // androidx.appcompat.widget.d2
    public final void k(k.l lVar, k.n nVar) {
        j7.c cVar = this.C;
        if (cVar != null) {
            cVar.k(lVar, nVar);
        }
    }
}
