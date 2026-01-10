package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class v0 extends u0 {

    /* renamed from: e, reason: collision with root package name */
    public final y0 f10237e;
    public final w0 f;

    /* renamed from: g, reason: collision with root package name */
    public final i f10238g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f10239h;

    public v0(y0 y0Var, w0 w0Var, i iVar, Object obj) {
        this.f10237e = y0Var;
        this.f = w0Var;
        this.f10238g = iVar;
        this.f10239h = obj;
    }

    @Override // i9.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        j((Throwable) obj);
        return w8.l.f10832a;
    }

    @Override // t9.u0
    public final void j(Throwable th) {
        i iVar = this.f10238g;
        y0 y0Var = this.f10237e;
        y0Var.getClass();
        i iVarB = y0.B(iVar);
        w0 w0Var = this.f;
        Object obj = this.f10239h;
        if (iVarB != null) {
            while (u.i(iVarB.f10198e, false, new v0(y0Var, w0Var, iVarB, obj), 1) == a1.f10178a) {
                iVarB = y0.B(iVarB);
                if (iVarB == null) {
                }
            }
            return;
        }
        y0Var.h(y0Var.p(w0Var, obj));
    }
}
