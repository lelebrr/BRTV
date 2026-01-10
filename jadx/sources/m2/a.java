package m2;

import androidx.lifecycle.w;
import t9.q0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements p {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.p f8157a;

    /* renamed from: b, reason: collision with root package name */
    public final q0 f8158b;

    public a(androidx.lifecycle.p pVar, q0 q0Var) {
        this.f8157a = pVar;
        this.f8158b = q0Var;
    }

    @Override // m2.p
    public final void a() {
        this.f8157a.c(this);
    }

    @Override // androidx.lifecycle.e
    public final void b(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final void c(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // androidx.lifecycle.e
    public final void onDestroy(w wVar) {
        t9.u.c(this.f8158b);
    }

    @Override // androidx.lifecycle.e
    public final void onStart(w wVar) {
        j9.i.f(wVar, "owner");
    }

    @Override // m2.p
    public final void start() {
        this.f8157a.a(this);
    }

    @Override // m2.p
    public final /* synthetic */ void f() {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void e(w wVar) {
    }

    @Override // androidx.lifecycle.e
    public final /* synthetic */ void onStop(w wVar) {
    }
}
