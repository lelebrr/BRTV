package ya;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends va.a {

    /* renamed from: b, reason: collision with root package name */
    public static final Object[] f11432b = new Object[0];

    /* renamed from: a, reason: collision with root package name */
    public final c f11433a;

    public a(c cVar) {
        this.f11433a = cVar;
    }

    public static a a() {
        return new a(new c());
    }

    public final void b(Object obj) {
        if (this.f11433a.f11436a == null || this.f11433a.f11437b) {
            if (obj == null) {
                obj = wa.b.f10837b;
            }
            c cVar = this.f11433a;
            cVar.f11436a = obj;
            a2.a[] aVarArr = ((b) cVar.get()).f11435a;
        }
    }
}
