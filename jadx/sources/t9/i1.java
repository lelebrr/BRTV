package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i1 extends x9.r {

    /* renamed from: e, reason: collision with root package name */
    public final ThreadLocal f10200e;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public i1(a9.i iVar, c9.c cVar) {
        j1 j1Var = j1.f10206a;
        super(iVar.e(j1Var) == null ? iVar.f(j1Var) : iVar, cVar);
        this.f10200e = new ThreadLocal();
        if (cVar.getContext().e(a9.e.f178a) instanceof p) {
            return;
        }
        Object objJ = x9.a.j(iVar, null);
        x9.a.e(iVar, objJ);
        K(iVar, objJ);
    }

    public final boolean J() {
        boolean z7 = this.threadLocalIsSet && this.f10200e.get() == null;
        this.f10200e.remove();
        return !z7;
    }

    public final void K(a9.i iVar, Object obj) {
        this.threadLocalIsSet = true;
        this.f10200e.set(new w8.f(iVar, obj));
    }

    @Override // x9.r, t9.y0
    public final void i(Object obj) {
        if (this.threadLocalIsSet) {
            w8.f fVar = (w8.f) this.f10200e.get();
            if (fVar != null) {
                x9.a.e((a9.i) fVar.f10825a, fVar.f10826b);
            }
            this.f10200e.remove();
        }
        Object objL = u.l(obj);
        c9.c cVar = this.d;
        a9.i context = cVar.getContext();
        Object objJ = x9.a.j(context, null);
        i1 i1VarO = objJ != x9.a.f ? u.o(cVar, context, objJ) : null;
        try {
            this.d.resumeWith(objL);
        } finally {
            if (i1VarO == null || i1VarO.J()) {
                x9.a.e(context, objJ);
            }
        }
    }
}
