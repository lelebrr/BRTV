package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.a1;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import d7.c2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 implements androidx.lifecycle.j, v1.e, a1 {

    /* renamed from: a, reason: collision with root package name */
    public final s f1544a;

    /* renamed from: b, reason: collision with root package name */
    public final z0 f1545b;

    /* renamed from: c, reason: collision with root package name */
    public y0 f1546c;
    public androidx.lifecycle.y d = null;

    /* renamed from: e, reason: collision with root package name */
    public k3.t f1547e = null;

    public s0(s sVar, z0 z0Var) {
        this.f1544a = sVar;
        this.f1545b = z0Var;
    }

    @Override // v1.e
    public final androidx.appcompat.widget.v a() {
        g();
        return (androidx.appcompat.widget.v) this.f1547e.d;
    }

    public final void b(androidx.lifecycle.n nVar) {
        this.d.f(nVar);
    }

    @Override // androidx.lifecycle.j
    public final y0 c() {
        Application application;
        s sVar = this.f1544a;
        y0 y0VarC = sVar.c();
        if (!y0VarC.equals(sVar.P)) {
            this.f1546c = y0VarC;
            return y0VarC;
        }
        if (this.f1546c == null) {
            Context applicationContext = sVar.K().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f1546c = new androidx.lifecycle.s0(application, this, sVar.f1524g);
        }
        return this.f1546c;
    }

    @Override // androidx.lifecycle.j
    public final c2 d() {
        return j1.a.f7427b;
    }

    @Override // androidx.lifecycle.a1
    public final z0 e() {
        g();
        return this.f1545b;
    }

    @Override // androidx.lifecycle.w
    public final androidx.lifecycle.p f() {
        g();
        return this.d;
    }

    public final void g() {
        if (this.d == null) {
            this.d = new androidx.lifecycle.y(this);
            this.f1547e = new k3.t(this);
        }
    }
}
