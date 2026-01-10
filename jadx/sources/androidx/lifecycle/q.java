package androidx.lifecycle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends c9.i implements i9.p {

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f1990b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f1991c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(r rVar, a9.d dVar) {
        super(dVar);
        this.f1991c = rVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        q qVar = new q(this.f1991c, dVar);
        qVar.f1990b = obj;
        return qVar;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        q qVar = (q) create((t9.s) obj, (a9.d) obj2);
        w8.l lVar = w8.l.f10832a;
        qVar.invokeSuspend(lVar);
        return lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        o9.d.I(obj);
        t9.s sVar = (t9.s) this.f1990b;
        r rVar = this.f1991c;
        p pVar = rVar.f1995a;
        if (pVar.b().compareTo(o.f1981b) >= 0) {
            pVar.a(rVar);
        } else {
            t9.u.a(sVar.d(), null);
        }
        return w8.l.f10832a;
    }
}
