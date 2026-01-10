package b7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public enum w extends y {
    public w() {
        super("IS_NULL", 2);
    }

    @Override // b7.n
    public final boolean apply(Object obj) {
        return obj == null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.isNull()";
    }
}
