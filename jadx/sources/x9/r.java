package x9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class r extends t9.a implements c9.d {
    public final c9.c d;

    public r(a9.i iVar, c9.c cVar) {
        super(iVar, true);
        this.d = cVar;
    }

    @Override // c9.d
    public final c9.d getCallerFrame() {
        c9.c cVar = this.d;
        if (cVar instanceof c9.d) {
            return cVar;
        }
        return null;
    }

    @Override // t9.y0
    public void h(Object obj) {
        a.f(com.bumptech.glide.d.r(this.d), t9.u.l(obj), null);
    }

    @Override // t9.y0
    public void i(Object obj) {
        this.d.resumeWith(t9.u.l(obj));
    }

    @Override // t9.y0
    public final boolean z() {
        return true;
    }
}
