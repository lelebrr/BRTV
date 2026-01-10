package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a extends y0 implements a9.d, s {

    /* renamed from: c, reason: collision with root package name */
    public final a9.i f10176c;

    public a(a9.i iVar, boolean z7) {
        super(z7);
        x((q0) iVar.e(q.f10225b));
        this.f10176c = iVar.f(this);
    }

    @Override // t9.y0
    public final void D(Object obj) {
        if (obj instanceof k) {
            k kVar = (k) obj;
            Throwable th = kVar.f10208a;
            kVar.getClass();
            k.f10207b.get(kVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(int i6, a aVar, i9.p pVar) {
        int iA = u.h.a(i6);
        if (iA == 0) {
            r4.b.M(pVar, aVar, this);
            return;
        }
        if (iA != 1) {
            if (iA == 2) {
                com.bumptech.glide.d.r(((c9.a) pVar).create(aVar, this)).resumeWith(w8.l.f10832a);
                return;
            }
            if (iA != 3) {
                throw new androidx.fragment.app.q(13);
            }
            try {
                a9.i iVar = this.f10176c;
                Object objJ = x9.a.j(iVar, null);
                try {
                    j9.q.b(pVar);
                    Object objInvoke = pVar.invoke(aVar, this);
                    if (objInvoke != b9.a.f3322a) {
                        resumeWith(objInvoke);
                    }
                } finally {
                    x9.a.e(iVar, objJ);
                }
            } catch (Throwable th) {
                resumeWith(o9.d.f(th));
            }
        }
    }

    @Override // t9.s
    public final a9.i d() {
        return this.f10176c;
    }

    @Override // a9.d
    public final a9.i getContext() {
        return this.f10176c;
    }

    @Override // t9.y0
    public final String l() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // a9.d
    public final void resumeWith(Object obj) {
        Throwable thA = w8.h.a(obj);
        if (thA != null) {
            obj = new k(thA, false);
        }
        Object objA = A(obj);
        if (objA == u.d) {
            return;
        }
        i(objA);
    }

    @Override // t9.y0
    public final void w(androidx.fragment.app.q qVar) {
        u.h(this.f10176c, qVar);
    }
}
