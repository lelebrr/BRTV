package androidx.lifecycle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements u, t9.s {

    /* renamed from: a, reason: collision with root package name */
    public final p f1995a;

    /* renamed from: b, reason: collision with root package name */
    public final a9.i f1996b;

    public r(p pVar, a9.i iVar) {
        j9.i.f(iVar, "coroutineContext");
        this.f1995a = pVar;
        this.f1996b = iVar;
        if (pVar.b() == o.f1980a) {
            t9.u.a(iVar, null);
        }
    }

    @Override // t9.s
    public final a9.i d() {
        return this.f1996b;
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, n nVar) {
        p pVar = this.f1995a;
        if (pVar.b().compareTo(o.f1980a) <= 0) {
            pVar.c(this);
            t9.u.a(this.f1996b, null);
        }
    }
}
