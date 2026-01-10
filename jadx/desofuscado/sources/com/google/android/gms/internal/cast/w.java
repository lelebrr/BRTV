package com.google.android.gms.internal.cast;

import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4446a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f4447b;

    public /* synthetic */ w(x xVar, int i6) {
        this.f4446a = i6;
        this.f4447b = xVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x xVar = this.f4447b;
        int i6 = 2;
        switch (this.f4446a) {
            case 0:
                xVar.getClass();
                v4.b bVar = x.f4455g;
                Log.i(bVar.f10671a, bVar.d("transfer with type = %d has timed out", 0));
                bVar.b("notify failed transfer with type = %d, reason = %d", 0, 101);
                Iterator it = new HashSet(xVar.f4457b).iterator();
                while (it.hasNext()) {
                    d2 d2Var = (d2) it.next();
                    switch (d2Var.f4130a) {
                        case 0:
                            g2.f4161i.b("onTransferFailed with type = %d and reason = %d", 0, 101);
                            g2 g2Var = (g2) d2Var.f4131b;
                            g2Var.c();
                            b3 b3VarB = g2Var.f4164c.b(g2Var.f4166g);
                            v2 v2VarM = w2.m(b3VarB.d());
                            v2VarM.c();
                            w2.x((w2) v2VarM.f4117b);
                            v2VarM.c();
                            w2.w((w2) v2VarM.f4117b);
                            b3VarB.e((w2) v2VarM.a());
                            g2Var.f4162a.a((c3) b3VarB.a(), 232);
                            break;
                        default:
                            e0 e0Var = new e0(11);
                            e0Var.f4144b = 101;
                            c2.b bVar2 = (c2.b) d2Var.f4131b;
                            e0Var.f4145c = Boolean.valueOf(((h) bVar2.f3341c).f == 2);
                            c2.b.k(bVar2, new f0(e0Var));
                            break;
                    }
                }
                xVar.a();
                break;
            default:
                l7 l7Var = new l7(i6, xVar);
                q4.f fVar = xVar.f;
                b5.l.e(fVar);
                fVar.a(l7Var);
                break;
        }
    }
}
