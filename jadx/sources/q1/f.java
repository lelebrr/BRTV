package q1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends u7.d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8974b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8975c;

    public /* synthetic */ f(int i6, Object obj) {
        this.f8974b = i6;
        this.f8975c = obj;
    }

    @Override // u7.d
    public final void w(e0 e0Var, androidx.appcompat.app.r0 r0Var) {
        switch (this.f8974b) {
            case 0:
                h hVar = (h) this.f8975c;
                r0 r0VarD = hVar.d(e0Var);
                if (r0VarD != null) {
                    hVar.n(r0VarD, r0Var);
                    break;
                }
                break;
            default:
                ((k0) this.f8975c).g(r0Var);
                break;
        }
    }
}
