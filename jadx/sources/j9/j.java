package j9;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j implements g, Serializable {
    private final int arity;

    public j(int i6) {
        this.arity = i6;
    }

    @Override // j9.g
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        o.f7477a.getClass();
        String strA = p.a(this);
        i.e(strA, "renderLambdaToString(...)");
        return strA;
    }
}
