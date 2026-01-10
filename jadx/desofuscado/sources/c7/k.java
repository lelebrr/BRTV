package c7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class k {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3431a = {1, 2, 3, 4, 5, 6, 7, 8};

    public static void a(c0 c0Var, c0 c0Var2) {
        c0Var2.l(c0Var.p());
        c0 c0VarE = c0Var.e();
        e eVar = b0.f3400s;
        c0VarE.h(c0Var2);
        c0Var2.n(c0VarE);
        c0 c0VarI = c0Var.i();
        c0Var2.h(c0VarI);
        c0VarI.n(c0Var2);
        p pVar = p.f3444a;
        c0Var.h(pVar);
        c0Var.n(pVar);
    }

    public static c0 b(int i6, q qVar, c0 c0Var, c0 c0Var2, Object obj) {
        return d(i6, qVar, obj, c0Var.c(), c0Var2);
    }

    public static void c(c0 c0Var, c0 c0Var2) {
        c0Var2.d(c0Var.k());
        c0 c0VarM = c0Var.m();
        e eVar = b0.f3400s;
        c0VarM.f(c0Var2);
        c0Var2.g(c0VarM);
        c0 c0VarO = c0Var.o();
        c0Var2.f(c0VarO);
        c0VarO.g(c0Var2);
        p pVar = p.f3444a;
        c0Var.f(pVar);
        c0Var.g(pVar);
    }

    public static c0 d(int i6, q qVar, Object obj, int i10, c0 c0Var) {
        switch (i6) {
            case 1:
                return new t(obj, i10, c0Var);
            case 2:
                r rVar = new r(obj, i10, c0Var, 0);
                rVar.f = Long.MAX_VALUE;
                e eVar = b0.f3400s;
                p pVar = p.f3444a;
                rVar.f3459g = pVar;
                rVar.f3460h = pVar;
                return rVar;
            case 3:
                r rVar2 = new r(obj, i10, c0Var, 1);
                rVar2.f = Long.MAX_VALUE;
                e eVar2 = b0.f3400s;
                p pVar2 = p.f3444a;
                rVar2.f3459g = pVar2;
                rVar2.f3460h = pVar2;
                return rVar2;
            case 4:
                s sVar = new s(obj, i10, c0Var);
                sVar.f3461e = Long.MAX_VALUE;
                e eVar3 = b0.f3400s;
                p pVar3 = p.f3444a;
                sVar.f = pVar3;
                sVar.f3462g = pVar3;
                sVar.f3463h = Long.MAX_VALUE;
                sVar.f3464i = pVar3;
                sVar.f3465j = pVar3;
                return sVar;
            case 5:
                return new z(qVar.f3451h, obj, i10, c0Var);
            case 6:
                x xVar = new x(qVar.f3451h, obj, i10, c0Var, 0);
                xVar.f3472e = Long.MAX_VALUE;
                e eVar4 = b0.f3400s;
                p pVar4 = p.f3444a;
                xVar.f = pVar4;
                xVar.f3473g = pVar4;
                return xVar;
            case 7:
                x xVar2 = new x(qVar.f3451h, obj, i10, c0Var, 1);
                xVar2.f3472e = Long.MAX_VALUE;
                e eVar5 = b0.f3400s;
                p pVar5 = p.f3444a;
                xVar2.f = pVar5;
                xVar2.f3473g = pVar5;
                return xVar2;
            default:
                y yVar = new y(qVar.f3451h, obj, i10, c0Var);
                yVar.d = Long.MAX_VALUE;
                e eVar6 = b0.f3400s;
                p pVar6 = p.f3444a;
                yVar.f3474e = pVar6;
                yVar.f = pVar6;
                yVar.f3475g = Long.MAX_VALUE;
                yVar.f3476h = pVar6;
                yVar.f3477i = pVar6;
                return yVar;
        }
    }
}
