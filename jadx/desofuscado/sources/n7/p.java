package n7;

import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f8503b;

    public p(Method method) {
        this.f8503b = method;
    }

    @Override // n7.d
    public final Object i(Class cls) {
        d.a(cls);
        return this.f8503b.invoke(null, cls, Object.class);
    }
}
