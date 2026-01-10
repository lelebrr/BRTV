package l7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends r {

    /* renamed from: a, reason: collision with root package name */
    public r f8068a;

    @Override // l7.r
    public final Object a(t7.a aVar) {
        r rVar = this.f8068a;
        if (rVar != null) {
            return rVar.a(aVar);
        }
        throw new IllegalStateException();
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) {
        r rVar = this.f8068a;
        if (rVar == null) {
            throw new IllegalStateException();
        }
        rVar.b(bVar, obj);
    }
}
