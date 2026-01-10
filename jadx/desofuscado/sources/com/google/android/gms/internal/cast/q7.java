package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q7 implements v7 {

    /* renamed from: a, reason: collision with root package name */
    public final r6 f4390a;

    /* renamed from: b, reason: collision with root package name */
    public final k2 f4391b;

    public q7(k2 k2Var, r6 r6Var) {
        k2 k2Var2 = z6.f4510a;
        this.f4391b = k2Var;
        this.f4390a = r6Var;
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final void a(Object obj, l7 l7Var) {
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final c7 b() {
        r6 r6Var = this.f4390a;
        return r6Var instanceof c7 ? (c7) ((c7) r6Var).h(4, null) : ((b7) ((c7) r6Var).h(5, null)).b();
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final boolean c(c7 c7Var, Object obj) {
        return c7Var.zzc.equals(((c7) obj).zzc);
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final void d(Object obj) {
        this.f4391b.getClass();
        k2.d(obj);
        k2 k2Var = z6.f4510a;
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final int e(c7 c7Var) {
        y7 y7Var = c7Var.zzc;
        int i6 = y7Var.f4499c;
        if (i6 != -1) {
            return i6;
        }
        y7Var.f4499c = 0;
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final boolean f(Object obj) {
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final void g(Object obj, Object obj2) {
        w7.q(obj, obj2);
    }

    @Override // com.google.android.gms.internal.cast.v7
    public final int h(c7 c7Var) {
        c7Var.zzc.getClass();
        return 506991;
    }
}
