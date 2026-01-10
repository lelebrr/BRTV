package androidx.lifecycle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public o f2013a;

    /* renamed from: b, reason: collision with root package name */
    public u f2014b;

    public final void a(w wVar, n nVar) {
        o oVarA = nVar.a();
        o oVar = this.f2013a;
        j9.i.f(oVar, "state1");
        if (oVarA.compareTo(oVar) < 0) {
            oVar = oVarA;
        }
        this.f2013a = oVar;
        this.f2014b.onStateChanged(wVar, nVar);
        this.f2013a = oVarA;
    }
}
