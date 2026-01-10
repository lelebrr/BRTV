package ka;

import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7758a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f7759b;

    public /* synthetic */ a0(i0 i0Var, int i6) {
        this.f7758a = i6;
        this.f7759b = i0Var;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        switch (this.f7758a) {
            case 0:
                if (i6 == 4) {
                    if (keyEvent.getAction() == 0) {
                        this.f7759b.U.f();
                        break;
                    }
                }
                break;
            default:
                i0 i0Var = this.f7759b;
                if (i0Var.f7796c0.isShown()) {
                    if (i6 != 21 && i6 != 22 && i6 != 19 && i6 != 20) {
                        if (i6 == 4) {
                            if (keyEvent.getAction() == 0) {
                                i0Var.U.f();
                                break;
                            }
                        }
                    }
                }
                break;
        }
        return true;
    }
}
