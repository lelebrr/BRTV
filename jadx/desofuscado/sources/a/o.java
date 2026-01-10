package a;

import androidx.fragment.app.b0;
import androidx.lifecycle.u;
import androidx.lifecycle.w;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements u, a {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.p f22a;

    /* renamed from: b, reason: collision with root package name */
    public final b0 f23b;

    /* renamed from: c, reason: collision with root package name */
    public p f24c;
    public final /* synthetic */ q d;

    public o(q qVar, androidx.lifecycle.p pVar, b0 b0Var) {
        this.d = qVar;
        this.f22a = pVar;
        this.f23b = b0Var;
        pVar.a(this);
    }

    @Override // a.a
    public final void cancel() {
        this.f22a.c(this);
        this.f23b.f1431b.remove(this);
        p pVar = this.f24c;
        if (pVar != null) {
            pVar.cancel();
            this.f24c = null;
        }
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, androidx.lifecycle.n nVar) {
        if (nVar != androidx.lifecycle.n.ON_START) {
            if (nVar != androidx.lifecycle.n.ON_STOP) {
                if (nVar == androidx.lifecycle.n.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                p pVar = this.f24c;
                if (pVar != null) {
                    pVar.cancel();
                    return;
                }
                return;
            }
        }
        q qVar = this.d;
        ArrayDeque arrayDeque = (ArrayDeque) qVar.f29c;
        b0 b0Var = this.f23b;
        arrayDeque.add(b0Var);
        p pVar2 = new p(qVar, b0Var);
        b0Var.f1431b.add(pVar2);
        if (j0.b.a()) {
            qVar.d();
            b0Var.f1432c = (l) qVar.d;
        }
        this.f24c = pVar2;
    }
}
