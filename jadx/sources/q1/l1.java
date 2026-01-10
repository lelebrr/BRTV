package q1;

import android.content.Intent;
import android.os.Bundle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l1 extends c0 implements i1 {

    /* renamed from: a, reason: collision with root package name */
    public final String f9058a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9059b;

    /* renamed from: c, reason: collision with root package name */
    public final d0 f9060c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public int f9061e = -1;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public h1 f9062g;

    /* renamed from: h, reason: collision with root package name */
    public int f9063h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ m1 f9064i;

    public l1(m1 m1Var, String str, String str2, d0 d0Var) {
        this.f9064i = m1Var;
        this.f9058a = str;
        this.f9059b = str2;
        this.f9060c = d0Var;
    }

    @Override // q1.i1
    public final int a() {
        return this.f9063h;
    }

    @Override // q1.i1
    public final void b(h1 h1Var) {
        this.f9062g = h1Var;
        int i6 = h1Var.f9015e;
        h1Var.f9015e = i6 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("routeId", this.f9058a);
        bundle.putString("routeGroupId", this.f9059b);
        bundle.putParcelable("routeControllerOptions", this.f9060c.f8950a);
        int i10 = h1Var.d;
        h1Var.d = i10 + 1;
        h1Var.b(3, i10, i6, null, bundle);
        this.f9063h = i6;
        if (this.d) {
            h1Var.a(i6);
            int i11 = this.f9061e;
            if (i11 >= 0) {
                h1Var.c(this.f9063h, i11);
                this.f9061e = -1;
            }
            int i12 = this.f;
            if (i12 != 0) {
                h1Var.d(this.f9063h, i12);
                this.f = 0;
            }
        }
    }

    @Override // q1.i1
    public final void c() {
        h1 h1Var = this.f9062g;
        if (h1Var != null) {
            int i6 = this.f9063h;
            int i10 = h1Var.d;
            h1Var.d = i10 + 1;
            h1Var.b(4, i10, i6, null, null);
            this.f9062g = null;
            this.f9063h = 0;
        }
    }

    @Override // q1.c0
    public final boolean d(Intent intent, o0 o0Var) {
        h1 h1Var = this.f9062g;
        if (h1Var == null) {
            return false;
        }
        int i6 = this.f9063h;
        int i10 = h1Var.d;
        h1Var.d = i10 + 1;
        if (!h1Var.b(9, i10, i6, intent, null)) {
            return false;
        }
        if (o0Var != null) {
            h1Var.f9017h.put(i10, o0Var);
        }
        return true;
    }

    @Override // q1.c0
    public final void e() {
        m1 m1Var = this.f9064i;
        m1Var.f9070k.remove(this);
        c();
        m1Var.l();
    }

    @Override // q1.c0
    public final void f() {
        this.d = true;
        h1 h1Var = this.f9062g;
        if (h1Var != null) {
            h1Var.a(this.f9063h);
        }
    }

    @Override // q1.c0
    public final void g(int i6) {
        h1 h1Var = this.f9062g;
        if (h1Var != null) {
            h1Var.c(this.f9063h, i6);
        } else {
            this.f9061e = i6;
            this.f = 0;
        }
    }

    @Override // q1.c0
    public final void h() {
        i(0);
    }

    @Override // q1.c0
    public final void i(int i6) {
        this.d = false;
        h1 h1Var = this.f9062g;
        if (h1Var != null) {
            int i10 = this.f9063h;
            Bundle bundle = new Bundle();
            bundle.putInt("unselectReason", i6);
            int i11 = h1Var.d;
            h1Var.d = i11 + 1;
            h1Var.b(6, i11, i10, null, bundle);
        }
    }

    @Override // q1.c0
    public final void j(int i6) {
        h1 h1Var = this.f9062g;
        if (h1Var != null) {
            h1Var.d(this.f9063h, i6);
        } else {
            this.f += i6;
        }
    }
}
