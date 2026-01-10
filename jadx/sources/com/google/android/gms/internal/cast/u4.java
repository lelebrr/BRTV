package com.google.android.gms.internal.cast;

import android.text.TextUtils;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u4 implements q4.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2.b f4433a;

    public /* synthetic */ u4(c2.b bVar) {
        this.f4433a = bVar;
    }

    @Override // q4.g
    public void a(q4.e eVar, int i6) {
        e0 e0Var = new e0(5);
        e0Var.f4144b = Integer.valueOf(i6);
        f0 f0Var = new f0(e0Var);
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        bVar.m();
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void d(q4.e eVar, boolean z7) {
        f0 f0Var = new f0(new e0(4));
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        x7 x7Var = (x7) bVar.f3342e;
        b5.l.e(x7Var);
        x7Var.a((q4.b) eVar);
    }

    @Override // q4.g
    public void g(q4.e eVar, int i6) {
        e0 e0Var = new e0(6);
        e0Var.f4144b = Integer.valueOf(i6);
        f0 f0Var = new f0(e0Var);
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        x7 x7Var = (x7) bVar.f3342e;
        b5.l.e(x7Var);
        x7Var.a((q4.b) eVar);
    }

    @Override // q4.g
    public void h(q4.e eVar, String str) {
        f0 f0Var = new f0(new e0(4));
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        x7 x7Var = (x7) bVar.f3342e;
        b5.l.e(x7Var);
        x7Var.a((q4.b) eVar);
        x7 x7Var2 = (x7) bVar.f3342e;
        b5.l.e(x7Var2);
        String str2 = x7Var2.f4478k;
        if (str2 == null) {
            x7Var2.f4478k = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            x7Var2.b(4);
        }
    }

    @Override // q4.g
    public void i(q4.e eVar, int i6) {
        e0 e0Var = new e0(8);
        e0Var.f4144b = Integer.valueOf(i6);
        f0 f0Var = new f0(e0Var);
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        bVar.m();
    }

    @Override // q4.g
    public void k(q4.e eVar, String str) {
        f0 f0Var = new f0(new e0(7));
        c2.b bVar = this.f4433a;
        c2.b.k(bVar, f0Var);
        x7 x7Var = (x7) bVar.f3342e;
        b5.l.e(x7Var);
        x7Var.a((q4.b) eVar);
        x7 x7Var2 = (x7) bVar.f3342e;
        b5.l.e(x7Var2);
        String str2 = x7Var2.f4478k;
        if (str2 == null) {
            x7Var2.f4478k = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            x7Var2.b(4);
        }
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void l(q4.e eVar) {
    }

    @Override // q4.g
    public void m(q4.e eVar, int i6) {
        e0 e0Var = new e0(9);
        e0Var.f4144b = Integer.valueOf(i6);
        c2.b bVar = this.f4433a;
        e0Var.f4145c = Boolean.valueOf(((h) bVar.f3341c).f == 2);
        c2.b.k(bVar, new f0(e0Var));
        bVar.m();
    }

    @Override // q4.g
    public void n(q4.e eVar) {
        q4.b bVar = (q4.b) eVar;
        e0 e0Var = new e0(2);
        c2.b bVar2 = this.f4433a;
        e0Var.f4145c = Boolean.valueOf(((h) bVar2.f3341c).f == 2);
        c2.b.k(bVar2, new f0(e0Var));
        x7 x7Var = (x7) bVar2.f3342e;
        b5.l.e(x7Var);
        x7Var.a(bVar);
        bVar.f9220l = (u4) bVar2.f;
    }
}
