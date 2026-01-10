package r7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f9608a;

    /* renamed from: b, reason: collision with root package name */
    public static final o7.a f9609b;

    /* renamed from: c, reason: collision with root package name */
    public static final o7.a f9610c;
    public static final o7.a d;

    static {
        boolean z7;
        try {
            Class.forName("java.sql.Date");
            z7 = true;
        } catch (ClassNotFoundException unused) {
            z7 = false;
        }
        f9608a = z7;
        if (z7) {
            f9609b = a.f9604c;
            f9610c = a.d;
            d = a.f9605e;
        } else {
            f9609b = null;
            f9610c = null;
            d = null;
        }
    }
}
