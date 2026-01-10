package k3;

import com.google.android.gms.internal.cast.q0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7722a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f7723b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7724c;

    public /* synthetic */ q(int i6, Object obj, boolean z7) {
        this.f7722a = i6;
        this.f7724c = obj;
        this.f7723b = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7722a) {
            case 0:
                q0 q0Var = (q0) this.f7724c;
                q0Var.getClass();
                r3.n.a();
                e2.c cVar = (e2.c) q0Var.f4387b;
                boolean z7 = cVar.f6448a;
                boolean z10 = this.f7723b;
                cVar.f6448a = z10;
                if (z7 != z10) {
                    ((n) cVar.f6449b).a(z10);
                    break;
                }
                break;
            default:
                ((s) this.f7724c).f7729b.a(this.f7723b);
                break;
        }
    }
}
