package sa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9879a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f9880b;

    public /* synthetic */ n(p pVar, int i6) {
        this.f9879a = i6;
        this.f9880b = pVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f9879a) {
            case 0:
                p pVar = this.f9880b;
                Runnable runnable = pVar.f9882k0;
                if (runnable != null) {
                    runnable.run();
                }
                pVar.Q(false, false);
                break;
            case 1:
                p pVar2 = this.f9880b;
                Runnable runnable2 = pVar2.f9883l0;
                if (runnable2 != null) {
                    runnable2.run();
                    pVar2.f9887p0.setEnabled(false);
                    break;
                }
                break;
            default:
                this.f9880b.Q(false, false);
                break;
        }
    }
}
