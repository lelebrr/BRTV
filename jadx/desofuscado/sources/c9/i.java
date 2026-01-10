package c9;

import j9.o;
import j9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i extends c implements j9.g {

    /* renamed from: a, reason: collision with root package name */
    public final int f3484a;

    public i(a9.d dVar) {
        super(dVar);
        this.f3484a = 2;
    }

    @Override // j9.g
    public final int getArity() {
        return this.f3484a;
    }

    @Override // c9.a
    public final String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        o.f7477a.getClass();
        String strA = p.a(this);
        j9.i.e(strA, "renderLambdaToString(...)");
        return strA;
    }
}
