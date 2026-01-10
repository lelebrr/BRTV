package n0;

import android.os.Build;
import android.view.View;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class o1 {

    /* renamed from: b, reason: collision with root package name */
    public static final r1 f8343b;

    /* renamed from: a, reason: collision with root package name */
    public final r1 f8344a;

    static {
        int i6 = Build.VERSION.SDK_INT;
        f8343b = (i6 >= 30 ? new h1() : i6 >= 29 ? new g1() : new e1()).b().f8352a.a().f8352a.b().f8352a.c();
    }

    public o1(r1 r1Var) {
        this.f8344a = r1Var;
    }

    public r1 a() {
        return this.f8344a;
    }

    public r1 b() {
        return this.f8344a;
    }

    public r1 c() {
        return this.f8344a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o1)) {
            return false;
        }
        o1 o1Var = (o1) obj;
        return o() == o1Var.o() && n() == o1Var.n() && Objects.equals(k(), o1Var.k()) && Objects.equals(i(), o1Var.i()) && Objects.equals(f(), o1Var.f());
    }

    public k f() {
        return null;
    }

    public f0.c g(int i6) {
        return f0.c.f6753e;
    }

    public f0.c h() {
        return k();
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
    }

    public f0.c i() {
        return f0.c.f6753e;
    }

    public f0.c j() {
        return k();
    }

    public f0.c k() {
        return f0.c.f6753e;
    }

    public f0.c l() {
        return k();
    }

    public r1 m(int i6, int i10, int i11, int i12) {
        return f8343b;
    }

    public boolean n() {
        return false;
    }

    public boolean o() {
        return false;
    }

    public void d(View view) {
    }

    public void e(r1 r1Var) {
    }

    public void p(f0.c[] cVarArr) {
    }

    public void q(f0.c cVar) {
    }

    public void r(r1 r1Var) {
    }

    public void s(f0.c cVar) {
    }
}
