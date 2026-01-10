package androidx.mediarouter.app;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2609a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2610b;

    public /* synthetic */ i(int i6, Object obj) {
        this.f2609a = i6;
        this.f2610b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2609a) {
            case 0:
                u uVar = (u) this.f2610b;
                uVar.l(true);
                uVar.D.requestLayout();
                uVar.D.getViewTreeObserver().addOnGlobalLayoutListener(new h(uVar));
                break;
            default:
                u uVar2 = ((s) this.f2610b).f2691b;
                if (uVar2.L != null) {
                    uVar2.L = null;
                    if (uVar2.f2696c0) {
                        uVar2.s(uVar2.f2697d0);
                        break;
                    }
                }
                break;
        }
    }
}
