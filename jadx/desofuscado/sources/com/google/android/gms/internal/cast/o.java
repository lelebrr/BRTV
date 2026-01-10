package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4362a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f4363b;

    public /* synthetic */ o(r rVar, int i6) {
        this.f4362a = i6;
        this.f4363b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4362a) {
            case 0:
                r rVar = this.f4363b;
                v vVar = rVar.f4395e;
                if (vVar.f4441b == null) {
                    vVar.f4441b = q1.u0.d(vVar.f4440a);
                }
                q1.u0 u0Var = vVar.f4441b;
                if (u0Var != null) {
                    u0Var.h(rVar);
                    break;
                }
                break;
            default:
                this.f4363b.p();
                break;
        }
    }
}
