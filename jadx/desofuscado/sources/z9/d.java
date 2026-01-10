package z9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d extends g {
    public static final d d;

    static {
        int i6 = j.f11699c;
        int i10 = j.d;
        long j10 = j.f11700e;
        String str = j.f11697a;
        d dVar = new d();
        dVar.f11693c = new b(i6, i10, j10, str);
        d = dVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // t9.p
    public final String toString() {
        return "Dispatchers.Default";
    }
}
