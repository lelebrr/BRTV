package q1;

import android.util.SparseArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8984a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h1 f8985b;

    public /* synthetic */ g1(h1 h1Var, int i6) {
        this.f8984a = i6;
        this.f8985b = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8984a) {
            case 0:
                SparseArray sparseArray = this.f8985b.f9017h;
                int size = sparseArray.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((o0) sparseArray.valueAt(i6)).a(null, null);
                }
                sparseArray.clear();
                break;
            default:
                h1 h1Var = this.f8985b;
                m1 m1Var = h1Var.f9018i;
                if (m1Var.f9073n == h1Var) {
                    m1Var.j();
                    break;
                }
                break;
        }
    }
}
