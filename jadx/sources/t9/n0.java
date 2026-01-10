package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n0 implements b1, i9.l {

    /* renamed from: a, reason: collision with root package name */
    public final i9.l f10218a;

    public n0(i9.l lVar) {
        this.f10218a = lVar;
    }

    public final void a(Throwable th) {
        this.f10218a.invoke(th);
    }

    @Override // i9.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        a((Throwable) obj);
        return w8.l.f10832a;
    }

    public final String toString() {
        return "InvokeOnCancel[" + this.f10218a.getClass().getSimpleName() + '@' + u.f(this) + ']';
    }
}
