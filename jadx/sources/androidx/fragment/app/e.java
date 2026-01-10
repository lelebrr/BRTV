package androidx.fragment.app;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1441a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1442b;

    public /* synthetic */ e(int i6, Object obj) {
        this.f1441a = i6;
        this.f1442b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1441a) {
            case 0:
                f fVar = (f) this.f1442b;
                fVar.f1444a.endViewTransition(fVar.f1445b);
                fVar.f1446c.d();
                break;
            case 1:
                m mVar = (m) this.f1442b;
                mVar.W.onDismiss(mVar.f1492f0);
                break;
            default:
                ((j0) this.f1442b).u(true);
                break;
        }
    }
}
