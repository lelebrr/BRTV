package androidx.mediarouter.app;

import android.view.View;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2574a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q0 f2575b;

    public /* synthetic */ d0(q0 q0Var, int i6) {
        this.f2574a = i6;
        this.f2575b = q0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2574a) {
            case 0:
                this.f2575b.dismiss();
                break;
            default:
                q0 q0Var = this.f2575b;
                if (q0Var.f2660h.g()) {
                    q0Var.f2658e.getClass();
                    u0.i(2);
                }
                q0Var.dismiss();
                break;
        }
    }
}
