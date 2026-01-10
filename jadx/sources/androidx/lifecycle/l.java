package androidx.lifecycle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {
    public static n a(o oVar) {
        j9.i.f(oVar, "state");
        int iOrdinal = oVar.ordinal();
        if (iOrdinal == 1) {
            return n.ON_CREATE;
        }
        if (iOrdinal == 2) {
            return n.ON_START;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return n.ON_RESUME;
    }
}
