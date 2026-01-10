package o7;

import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8600a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f8601b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f8602c;

    public /* synthetic */ m(Class cls, r rVar, int i6) {
        this.f8600a = i6;
        this.f8601b = cls;
        this.f8602c = rVar;
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        switch (this.f8600a) {
            case 0:
                if (aVar.f9827a == this.f8601b) {
                    return this.f8602c;
                }
                return null;
            default:
                Class cls = this.f8601b;
                Class<?> cls2 = aVar.f9827a;
                if (cls.isAssignableFrom(cls2)) {
                    return new b(this, cls2);
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.f8600a) {
            case 0:
                return "Factory[type=" + this.f8601b.getName() + ",adapter=" + this.f8602c + "]";
            default:
                return "Factory[typeHierarchy=" + this.f8601b.getName() + ",adapter=" + this.f8602c + "]";
        }
    }
}
