package androidx.lifecycle;

import androidx.fragment.app.FragmentActivity;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f1944a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1945b;

    /* renamed from: c, reason: collision with root package name */
    public int f1946c = -1;
    public final /* synthetic */ d0 d;

    public c0(d0 d0Var, e0 e0Var) {
        this.d = d0Var;
        this.f1944a = e0Var;
    }

    public final void d(boolean z7) {
        if (z7 == this.f1945b) {
            return;
        }
        this.f1945b = z7;
        int i6 = z7 ? 1 : -1;
        d0 d0Var = this.d;
        int i10 = d0Var.f1953c;
        d0Var.f1953c = i6 + i10;
        if (!d0Var.d) {
            d0Var.d = true;
            while (true) {
                try {
                    int i11 = d0Var.f1953c;
                    if (i10 == i11) {
                        break;
                    }
                    boolean z10 = i10 == 0 && i11 > 0;
                    boolean z11 = i10 > 0 && i11 == 0;
                    if (z10) {
                        d0Var.getClass();
                    } else if (z11) {
                        d0Var.getClass();
                    }
                    i10 = i11;
                } catch (Throwable th) {
                    d0Var.d = false;
                    throw th;
                }
            }
            d0Var.d = false;
        }
        if (this.f1945b) {
            d0Var.c(this);
        }
    }

    public boolean h(FragmentActivity fragmentActivity) {
        return false;
    }

    public abstract boolean i();

    public void g() {
    }
}
