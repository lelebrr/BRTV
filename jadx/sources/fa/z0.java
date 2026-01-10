package fa;

import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6988a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6989b;

    public /* synthetic */ z0(int i6, Object obj) {
        this.f6988a = i6;
        this.f6989b = obj;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        x6.h hVarH;
        x6.k kVar;
        switch (this.f6988a) {
            case 0:
                return ((b1) this.f6989b).d.onKey(view, i6, keyEvent);
            case 1:
                View.OnKeyListener onKeyListener = ((m1) this.f6989b).d;
                if (onKeyListener != null) {
                    return onKeyListener.onKey(view, i6, keyEvent);
                }
                return false;
            case 2:
                return ((o1) this.f6989b).d.onKey(view, i6, keyEvent);
            case 3:
                return ((o1) this.f6989b).d.onKey(view, i6, keyEvent);
            case 4:
                ka.d0 d0Var = (ka.d0) this.f6989b;
                if (i6 == 4) {
                    if (keyEvent.getAction() != 0) {
                        return true;
                    }
                    d0Var.d.U.f();
                    return true;
                }
                if (((Integer) view.getTag()).intValue() != 0 || i6 != 19) {
                    return false;
                }
                if (keyEvent.getAction() != 0 || (hVarH = d0Var.d.X.h(d0Var.f7767b.getCurrentItem())) == null || (kVar = hVarH.f11062g) == null) {
                    return true;
                }
                kVar.requestFocus();
                return true;
            default:
                if (i6 != 20 && i6 != 19) {
                    return false;
                }
                ((sa.g) this.f6989b).dismiss();
                return true;
        }
    }
}
