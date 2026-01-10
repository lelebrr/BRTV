package j9;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c implements p9.a, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient p9.a f7463a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7464b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f7465c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f7466e;
    public final boolean f;

    public c(Object obj, Class cls, String str, String str2, boolean z7) {
        this.f7464b = obj;
        this.f7465c = cls;
        this.d = str;
        this.f7466e = str2;
        this.f = z7;
    }

    public final d a() {
        Class cls = this.f7465c;
        if (!this.f) {
            return o.a(cls);
        }
        o.f7477a.getClass();
        return new k(cls);
    }
}
