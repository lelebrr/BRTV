package a;

import androidx.fragment.app.b0;
import java.util.ArrayDeque;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements a {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f25a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f26b;

    public p(q qVar, b0 b0Var) {
        this.f26b = qVar;
        this.f25a = b0Var;
    }

    @Override // a.a
    public final void cancel() {
        q qVar = this.f26b;
        ArrayDeque arrayDeque = (ArrayDeque) qVar.f29c;
        b0 b0Var = this.f25a;
        arrayDeque.remove(b0Var);
        b0Var.f1431b.remove(this);
        if (j0.b.a()) {
            b0Var.f1432c = null;
            qVar.d();
        }
    }
}
