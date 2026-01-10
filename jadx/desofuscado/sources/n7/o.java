package n7;

import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f8501b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8502c;

    public o(Method method, int i6) {
        this.f8501b = method;
        this.f8502c = i6;
    }

    @Override // n7.d
    public final Object i(Class cls) {
        d.a(cls);
        return this.f8501b.invoke(null, cls, Integer.valueOf(this.f8502c));
    }
}
