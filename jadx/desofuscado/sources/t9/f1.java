package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class f1 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f10190a = new ThreadLocal();

    public static g0 a() {
        ThreadLocal threadLocal = f10190a;
        g0 g0Var = (g0) threadLocal.get();
        if (g0Var != null) {
            return g0Var;
        }
        c cVar = new c(Thread.currentThread());
        threadLocal.set(cVar);
        return cVar;
    }
}
