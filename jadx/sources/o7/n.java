package o7;

import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements s {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f8603a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f8604b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f8605c;

    public n(Class cls, Class cls2, r rVar) {
        this.f8603a = cls;
        this.f8604b = cls2;
        this.f8605c = rVar;
    }

    @Override // l7.s
    public final r a(l7.k kVar, s7.a aVar) {
        Class cls = this.f8603a;
        Class cls2 = aVar.f9827a;
        if (cls2 == cls || cls2 == this.f8604b) {
            return this.f8605c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f8604b.getName() + "+" + this.f8603a.getName() + ",adapter=" + this.f8605c + "]";
    }
}
