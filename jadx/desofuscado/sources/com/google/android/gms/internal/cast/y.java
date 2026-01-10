package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class y implements w5.c, w5.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w5.d f4489a;

    public /* synthetic */ y(w5.d dVar) {
        this.f4489a = dVar;
    }

    @Override // w5.b
    public void a(Exception exc) {
        a0.d.a(exc, "get checkbox consent failed", new Object[0]);
        this.f4489a.d(Boolean.FALSE);
    }

    @Override // w5.c
    public void onSuccess(Object obj) {
        c1 c1Var = (c1) obj;
        v4.b bVar = a0.d;
        boolean z7 = false;
        if (c1Var != null) {
            zzfk zzfkVar = c1Var.f4122a.f4173a;
            b5.l.e(zzfkVar);
            if (zzfkVar.f4522a == 1) {
                z7 = true;
            }
        }
        this.f4489a.d(Boolean.valueOf(z7));
    }
}
