package n7;

import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f8499b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8500c;

    public n(Method method, Object obj) {
        this.f8499b = method;
        this.f8500c = obj;
    }

    @Override // n7.d
    public final Object i(Class cls) {
        d.a(cls);
        return this.f8499b.invoke(this.f8500c, cls);
    }
}
