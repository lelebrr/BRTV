package c9;

import a9.j;
import j9.o;
import j9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h extends g implements j9.g {
    private final int arity;

    public h(a9.d dVar) {
        super(dVar);
        if (dVar != null && dVar.getContext() != j.f179a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
        this.arity = 2;
    }

    @Override // j9.g
    public int getArity() {
        return this.arity;
    }

    @Override // c9.a
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        o.f7477a.getClass();
        String strA = p.a(this);
        j9.i.e(strA, "renderLambdaToString(...)");
        return strA;
    }
}
