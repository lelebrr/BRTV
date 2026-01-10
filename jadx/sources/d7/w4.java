package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w4 {
    public abstract int a();

    public abstract Object b();

    public final boolean equals(Object obj) {
        if (!(obj instanceof w4)) {
            return false;
        }
        w4 w4Var = (w4) obj;
        return a() == w4Var.a() && b7.b.p(b(), w4Var.b());
    }

    public final int hashCode() {
        Object objB = b();
        return (objB == null ? 0 : objB.hashCode()) ^ a();
    }

    public final String toString() {
        String strValueOf = String.valueOf(b());
        int iA = a();
        if (iA == 1) {
            return strValueOf;
        }
        return strValueOf + " x " + iA;
    }
}
