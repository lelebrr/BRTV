package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity;
import java.nio.charset.Charset;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l7 implements w5.a, q4.g, s4.a, n7 {

    /* renamed from: c, reason: collision with root package name */
    public static final k2 f4308c = new k2(25);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4309a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4310b;

    public /* synthetic */ l7(int i6, Object obj) {
        this.f4309a = i6;
        this.f4310b = obj;
    }

    public void A(int i6, Object obj, v7 v7Var) throws y6 {
        x6 x6Var = (x6) this.f4310b;
        x6Var.C(i6, 3);
        v7Var.a((r6) obj, x6Var.d);
        x6Var.C(i6, 4);
    }

    public void B(int i6, int i10) throws y6 {
        ((x6) this.f4310b).z(i6, i10);
    }

    public void C(int i6, long j10) throws y6 {
        ((x6) this.f4310b).F(i6, j10);
    }

    public void D(int i6, Object obj, v7 v7Var) throws y6 {
        r6 r6Var = (r6) obj;
        x6 x6Var = (x6) this.f4310b;
        x6Var.E((i6 << 3) | 2);
        x6Var.E(r6Var.a(v7Var));
        v7Var.a(r6Var, x6Var.d);
    }

    public void E(int i6, int i10) throws y6 {
        ((x6) this.f4310b).v(i6, i10);
    }

    public void F(int i6, long j10) throws y6 {
        ((x6) this.f4310b).x(i6, j10);
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void a(q4.e eVar, int i6) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                g2 g2Var = (g2) this.f4310b;
                g2Var.f4167h = (q4.b) eVar;
                g2.a(g2Var, i6);
                break;
        }
    }

    @Override // com.google.android.gms.internal.cast.n7
    public u7 b(Class cls) {
        for (int i6 = 0; i6 < 2; i6++) {
            n7 n7Var = ((n7[]) this.f4310b)[i6];
            if (n7Var.c(cls)) {
                return n7Var.b(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.cast.n7
    public boolean c(Class cls) {
        for (int i6 = 0; i6 < 2; i6++) {
            if (((n7[]) this.f4310b)[i6].c(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // q4.g
    public void d(q4.e eVar, boolean z7) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                g2.f4161i.b("onSessionResumed with wasSuspended = %b", Boolean.valueOf(z7));
                g2 g2Var = (g2) this.f4310b;
                g2Var.f4167h = (q4.b) eVar;
                g2Var.c();
                b5.l.e(g2Var.f4166g);
                b3 b3VarB = g2Var.f4164c.b(g2Var.f4166g);
                v2 v2VarM = w2.m(b3VarB.d());
                v2VarM.c();
                w2.t((w2) v2VarM.f4117b, z7);
                b3VarB.c();
                c3.q((c3) b3VarB.f4117b, (w2) v2VarM.a());
                g2Var.f4162a.a((c3) b3VarB.a(), 227);
                g2.b(g2Var);
                g2Var.e();
                break;
        }
    }

    @Override // w5.a
    public void e(w5.g gVar) {
        CastOptions castOptions;
        boolean z7 = false;
        boolean zE = gVar.e();
        v4.b bVar = u.f4424l;
        u uVar = (u) this.f4310b;
        if (zE) {
            Bundle bundle = (Bundle) gVar.d();
            boolean z10 = bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            bVar.b("The module-to-client output switcher flag %s", true != z10 ? "not existed" : "existed");
            if (z10) {
                uVar.f4429j = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            }
        }
        boolean z11 = uVar.f4429j;
        if (uVar.f4425e == null || (castOptions = uVar.f) == null) {
            return;
        }
        boolean z12 = z11 && castOptions.f3800m;
        q1.w0 w0Var = new q1.w0();
        int i6 = Build.VERSION.SDK_INT;
        w0Var.f9171a = i6 >= 30;
        if (i6 >= 30) {
            w0Var.f9171a = z12;
        }
        boolean z13 = castOptions.f3798k;
        if (i6 >= 30) {
            w0Var.f9173c = z13;
        }
        boolean z14 = castOptions.f3797j;
        if (i6 >= 30) {
            w0Var.f9172b = z14;
        }
        if (i6 >= 30) {
            w0Var.d = castOptions.f3805r;
        }
        q1.x0 x0Var = new q1.x0(w0Var);
        q1.u0.b();
        q1.h hVarC = q1.u0.c();
        q1.x0 x0Var2 = hVarC.f9004u;
        hVarC.f9004u = x0Var;
        boolean zH = hVarC.h();
        q1.b bVar2 = hVarC.f8986a;
        if (zH) {
            if (hVarC.f9001r == null) {
                q1.p pVar = new q1.p(hVarC.f8990g, new q1.a(hVarC));
                hVarC.f9001r = pVar;
                hVarC.a(pVar, true);
                hVarC.l();
            }
            q1.p pVar2 = hVarC.f9001r;
            boolean z15 = x0Var.d;
            pVar2.f9102p = z15;
            pVar2.i();
            q1.n1 n1Var = hVarC.f8988c;
            n1Var.f = z15;
            n1Var.f9084c.post(n1Var.f9088i);
            if ((x0Var2 != null && x0Var2.f9178c) != x0Var.f9178c) {
                q1.p pVar3 = hVarC.f9001r;
                pVar3.f8959e = hVarC.A;
                if (!pVar3.f) {
                    pVar3.f = true;
                    pVar3.f8958c.sendEmptyMessage(2);
                }
            }
        } else {
            q1.p pVar4 = hVarC.f9001r;
            if (pVar4 != null) {
                q1.r0 r0VarD = hVarC.d(pVar4);
                if (r0VarD != null) {
                    q1.u0.b();
                    pVar4.d = null;
                    pVar4.g(null);
                    hVarC.n(r0VarD, null);
                    bVar2.b(514, r0VarD);
                    hVarC.f8995l.remove(r0VarD);
                }
                hVarC.f9001r = null;
                q1.n1 n1Var2 = hVarC.f8988c;
                n1Var2.f9084c.post(n1Var2.f9088i);
            }
        }
        bVar2.b(769, x0Var);
        boolean z16 = uVar.f4428i;
        Log.i(bVar.f10671a, bVar.d("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(z16), Boolean.valueOf(z12), Boolean.valueOf(z13), Boolean.valueOf(z14)));
        x xVar = uVar.f4427h;
        if (xVar != null) {
            if (z16 && z12) {
                z7 = true;
            }
            xVar.f4459e = z7;
        }
        if (z16 && z12) {
            l2.a(m2.CAST_OUTPUT_SWITCHER_ENABLED);
        }
        if (z13) {
            l2.a(m2.CAST_TRANSFER_TO_LOCAL_ENABLED);
        }
    }

    @Override // s4.a
    public void f(Bitmap bitmap) {
        if (bitmap != null) {
            i0 i0Var = (i0) this.f4310b;
            View view = (View) i0Var.f4219e;
            if (view != null) {
                view.setVisibility(4);
            }
            ImageView imageView = i0Var.f4218c;
            imageView.setVisibility(0);
            imageView.setImageBitmap(bitmap);
            u4.c cVar = (u4.c) i0Var.f;
            if (cVar != null) {
                cVar.getClass();
                int i6 = ExpandedControllerActivity.f3868n0;
                cVar.f10337a.u();
            }
        }
    }

    @Override // q4.g
    public void g(q4.e eVar, int i6) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                g2.f4161i.b("onSessionSuspended with reason = %d", Integer.valueOf(i6));
                g2 g2Var = (g2) this.f4310b;
                g2Var.f4167h = (q4.b) eVar;
                g2Var.c();
                b5.l.e(g2Var.f4166g);
                g2Var.f4162a.a(g2Var.f4164c.a(g2Var.f4166g, i6), 225);
                g2.b(g2Var);
                g2Var.f4165e.removeCallbacks(g2Var.d);
                break;
        }
    }

    @Override // q4.g
    public void h(q4.e eVar, String str) {
        Object obj = this.f4310b;
        switch (this.f4309a) {
            case 2:
                v4.b bVar = x.f4455g;
                x xVar = (x) obj;
                xVar.getClass();
                bVar.b("onSessionStarted with transferType = %d", 0);
                if (xVar.f4459e) {
                    boolean z7 = xVar.f4456a.f3804q;
                }
                xVar.a();
                break;
            default:
                g2.f4161i.b("onSessionStarted with sessionId = %s", str);
                g2 g2Var = (g2) obj;
                g2Var.f4167h = (q4.b) eVar;
                g2Var.c();
                h2 h2Var = g2Var.f4166g;
                h2Var.f = str;
                g2Var.f4162a.a((c3) g2Var.f4164c.b(h2Var).a(), 222);
                g2.b(g2Var);
                g2Var.e();
                break;
        }
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void i(q4.e eVar, int i6) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                g2 g2Var = (g2) this.f4310b;
                g2Var.f4167h = (q4.b) eVar;
                g2.a(g2Var, i6);
                break;
        }
    }

    public void j(int i6, int i10) throws y6 {
        ((x6) this.f4310b).D(i6, (i10 >> 31) ^ (i10 + i10));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f7  */
    @Override // q4.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void k(q4.e r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.l7.k(q4.e, java.lang.String):void");
    }

    @Override // q4.g
    public /* synthetic */ void l(q4.e eVar) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                ((g2) this.f4310b).f4167h = (q4.b) eVar;
                break;
        }
    }

    @Override // q4.g
    public /* bridge */ /* synthetic */ void m(q4.e eVar, int i6) {
        Object obj = this.f4310b;
        switch (this.f4309a) {
            case 2:
                v4.b bVar = x.f4455g;
                bVar.b("onSessionEnded with error = %d", Integer.valueOf(i6));
                x xVar = (x) obj;
                xVar.getClass();
                bVar.b("No need to notify transferred if the transfer type is unknown", new Object[0]);
                xVar.a();
                break;
            default:
                g2 g2Var = (g2) obj;
                g2Var.f4167h = (q4.b) eVar;
                g2.a(g2Var, i6);
                break;
        }
    }

    @Override // q4.g
    public void n(q4.e eVar) {
        switch (this.f4309a) {
            case 2:
                break;
            default:
                v4.b bVar = g2.f4161i;
                bVar.b("onSessionStarting", new Object[0]);
                g2 g2Var = (g2) this.f4310b;
                g2Var.f4167h = (q4.b) eVar;
                if (g2Var.f4166g != null) {
                    Log.w(bVar.f10671a, bVar.d("Start a session while there's already an active session. Create a new one.", new Object[0]));
                }
                g2Var.d();
                h2 h2Var = g2Var.f4166g;
                b3 b3VarB = g2Var.f4164c.b(h2Var);
                if (h2Var.f4189p == 1) {
                    v2 v2VarM = w2.m(b3VarB.d());
                    v2VarM.c();
                    w2.u((w2) v2VarM.f4117b, 17);
                    b3VarB.e((w2) v2VarM.a());
                }
                g2Var.f4162a.a((c3) b3VarB.a(), 221);
                break;
        }
    }

    public void o(int i6, long j10) throws y6 {
        ((x6) this.f4310b).F(i6, (j10 >> 63) ^ (j10 + j10));
    }

    public void p(int i6, List list) throws y6 {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((x6) this.f4310b).B(i6, (String) list.get(i10));
        }
    }

    public void q(int i6, int i10) throws y6 {
        ((x6) this.f4310b).D(i6, i10);
    }

    public void r(int i6, long j10) throws y6 {
        ((x6) this.f4310b).F(i6, j10);
    }

    public void s(int i6, boolean z7) throws y6 {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i10;
        x6 x6Var = (x6) this.f4310b;
        x6Var.E(i6 << 3);
        int i11 = x6Var.f4466g;
        try {
            i10 = i11 + 1;
        } catch (IndexOutOfBoundsException e5) {
            indexOutOfBoundsException = e5;
        }
        try {
            x6Var.f4465e[i11] = z7 ? (byte) 1 : (byte) 0;
            x6Var.f4466g = i10;
        } catch (IndexOutOfBoundsException e10) {
            indexOutOfBoundsException = e10;
            i11 = i10;
            throw new y6(i11, x6Var.f, 1, indexOutOfBoundsException);
        }
    }

    public void t(int i6, w6 w6Var) throws y6 {
        ((x6) this.f4310b).u(i6, w6Var);
    }

    public void u(int i6, List list) throws y6 {
        for (int i10 = 0; i10 < list.size(); i10++) {
            ((x6) this.f4310b).u(i6, (w6) list.get(i10));
        }
    }

    public void v(int i6, double d) throws y6 {
        ((x6) this.f4310b).x(i6, Double.doubleToRawLongBits(d));
    }

    public void w(int i6, int i10) throws y6 {
        ((x6) this.f4310b).z(i6, i10);
    }

    public void x(int i6, int i10) throws y6 {
        ((x6) this.f4310b).v(i6, i10);
    }

    public void y(int i6, long j10) throws y6 {
        ((x6) this.f4310b).x(i6, j10);
    }

    public void z(int i6, float f) throws y6 {
        ((x6) this.f4310b).v(i6, Float.floatToRawIntBits(f));
    }

    public l7() {
        this.f4309a = 0;
        s7 s7Var = s7.f4412c;
        l7 l7Var = new l7(6, new n7[]{k2.f4289p, f4308c});
        Charset charset = h7.f4214a;
        this.f4310b = l7Var;
    }

    public l7(x6 x6Var) {
        this.f4309a = 5;
        Charset charset = h7.f4214a;
        this.f4310b = x6Var;
        x6Var.d = this;
    }
}
