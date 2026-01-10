package q1;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k1 extends b0 implements i1 {
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final d0 f9036g;

    /* renamed from: h, reason: collision with root package name */
    public String f9037h;

    /* renamed from: i, reason: collision with root package name */
    public String f9038i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9039j;

    /* renamed from: l, reason: collision with root package name */
    public int f9041l;

    /* renamed from: m, reason: collision with root package name */
    public h1 f9042m;

    /* renamed from: o, reason: collision with root package name */
    public final /* synthetic */ m1 f9044o;

    /* renamed from: k, reason: collision with root package name */
    public int f9040k = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f9043n = -1;

    public k1(m1 m1Var, String str, d0 d0Var) {
        this.f9044o = m1Var;
        this.f = str;
        this.f9036g = d0Var;
    }

    @Override // q1.i1
    public final int a() {
        return this.f9043n;
    }

    @Override // q1.i1
    public final void b(h1 h1Var) {
        j1 j1Var = new j1(this);
        this.f9042m = h1Var;
        int i6 = h1Var.f9015e;
        h1Var.f9015e = i6 + 1;
        int i10 = h1Var.d;
        h1Var.d = i10 + 1;
        Bundle bundle = new Bundle();
        bundle.putString("memberRouteId", this.f);
        bundle.putParcelable("routeControllerOptions", this.f9036g.f8950a);
        h1Var.b(11, i10, i6, null, bundle);
        h1Var.f9017h.put(i10, j1Var);
        this.f9043n = i6;
        if (this.f9039j) {
            h1Var.a(i6);
            int i11 = this.f9040k;
            if (i11 >= 0) {
                h1Var.c(this.f9043n, i11);
                this.f9040k = -1;
            }
            int i12 = this.f9041l;
            if (i12 != 0) {
                h1Var.d(this.f9043n, i12);
                this.f9041l = 0;
            }
        }
    }

    @Override // q1.i1
    public final void c() {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            int i6 = this.f9043n;
            int i10 = h1Var.d;
            h1Var.d = i10 + 1;
            h1Var.b(4, i10, i6, null, null);
            this.f9042m = null;
            this.f9043n = 0;
        }
    }

    @Override // q1.c0
    public final boolean d(Intent intent, o0 o0Var) {
        h1 h1Var = this.f9042m;
        if (h1Var == null) {
            return false;
        }
        int i6 = this.f9043n;
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
        m1 m1Var = this.f9044o;
        m1Var.f9070k.remove(this);
        c();
        m1Var.l();
    }

    @Override // q1.c0
    public final void f() {
        this.f9039j = true;
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            h1Var.a(this.f9043n);
        }
    }

    @Override // q1.c0
    public final void g(int i6) {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            h1Var.c(this.f9043n, i6);
        } else {
            this.f9040k = i6;
            this.f9041l = 0;
        }
    }

    @Override // q1.c0
    public final void h() {
        i(0);
    }

    @Override // q1.c0
    public final void i(int i6) {
        this.f9039j = false;
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            int i10 = this.f9043n;
            Bundle bundle = new Bundle();
            bundle.putInt("unselectReason", i6);
            int i11 = h1Var.d;
            h1Var.d = i11 + 1;
            h1Var.b(6, i11, i10, null, bundle);
        }
    }

    @Override // q1.c0
    public final void j(int i6) {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            h1Var.d(this.f9043n, i6);
        } else {
            this.f9041l += i6;
        }
    }

    @Override // q1.b0
    public final String k() {
        return this.f9037h;
    }

    @Override // q1.b0
    public final String l() {
        return this.f9038i;
    }

    @Override // q1.b0
    public final void n(String str) {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            int i6 = this.f9043n;
            h1Var.getClass();
            Bundle bundle = new Bundle();
            bundle.putString("memberRouteId", str);
            int i10 = h1Var.d;
            h1Var.d = i10 + 1;
            h1Var.b(12, i10, i6, null, bundle);
        }
    }

    @Override // q1.b0
    public final void o(String str) {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            int i6 = this.f9043n;
            h1Var.getClass();
            Bundle bundle = new Bundle();
            bundle.putString("memberRouteId", str);
            int i10 = h1Var.d;
            h1Var.d = i10 + 1;
            h1Var.b(13, i10, i6, null, bundle);
        }
    }

    @Override // q1.b0
    public final void p(List list) {
        h1 h1Var = this.f9042m;
        if (h1Var != null) {
            int i6 = this.f9043n;
            h1Var.getClass();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("memberRouteIds", new ArrayList<>(list));
            int i10 = h1Var.d;
            h1Var.d = i10 + 1;
            h1Var.b(14, i10, i6, null, bundle);
        }
    }
}
