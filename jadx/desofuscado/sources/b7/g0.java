package b7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements e0 {
    public static final androidx.media3.exoplayer.analytics.z d = new androidx.media3.exoplayer.analytics.z(1);

    /* renamed from: a, reason: collision with root package name */
    public final Object f3305a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile e0 f3306b;

    /* renamed from: c, reason: collision with root package name */
    public Object f3307c;

    public g0(e0 e0Var) {
        this.f3306b = e0Var;
    }

    @Override // b7.e0
    public final Object get() {
        e0 e0Var = this.f3306b;
        androidx.media3.exoplayer.analytics.z zVar = d;
        if (e0Var != zVar) {
            synchronized (this.f3305a) {
                try {
                    if (this.f3306b != zVar) {
                        Object obj = this.f3306b.get();
                        this.f3307c = obj;
                        this.f3306b = zVar;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f3307c;
    }

    public final String toString() {
        Object obj = this.f3306b;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == d) {
            obj = "<supplier that returned " + this.f3307c + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
