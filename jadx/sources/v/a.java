package v;

import ea.q;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends j {
    public int i0 = 0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f10507j0 = true;

    /* renamed from: k0, reason: collision with root package name */
    public int f10508k0 = 0;

    @Override // v.e
    public final void a(u.e eVar) {
        boolean z7;
        int i6;
        c[] cVarArr = this.G;
        c cVar = this.f10561y;
        cVarArr[0] = cVar;
        c cVar2 = this.f10562z;
        int i10 = 2;
        cVarArr[2] = cVar2;
        c cVar3 = this.A;
        cVarArr[1] = cVar3;
        c cVar4 = this.B;
        cVarArr[3] = cVar4;
        for (c cVar5 : cVarArr) {
            cVar5.f10528g = eVar.j(cVar5);
        }
        int i11 = this.i0;
        if (i11 < 0 || i11 >= 4) {
            return;
        }
        c cVar6 = cVarArr[i11];
        for (int i12 = 0; i12 < this.f10614h0; i12++) {
            e eVar2 = this.f10613g0[i12];
            if (this.f10507j0 || eVar2.b()) {
                int i13 = this.i0;
                d dVar = d.f10531c;
                if (((i13 == 0 || i13 == 1) && eVar2.J[0] == dVar && eVar2.f10561y.d != null && eVar2.A.d != null) || ((i13 == 2 || i13 == 3) && eVar2.J[1] == dVar && eVar2.f10562z.d != null && eVar2.B.d != null)) {
                    z7 = true;
                    break;
                }
            }
        }
        z7 = false;
        boolean z10 = cVar.e() || cVar3.e();
        boolean z11 = cVar2.e() || cVar4.e();
        int i14 = (z7 || !(((i6 = this.i0) == 0 && z10) || ((i6 == 2 && z11) || ((i6 == 1 && z10) || (i6 == 3 && z11))))) ? 4 : 5;
        int i15 = 0;
        while (i15 < this.f10614h0) {
            e eVar3 = this.f10613g0[i15];
            if (this.f10507j0 || eVar3.b()) {
                u.i iVarJ = eVar.j(eVar3.G[this.i0]);
                int i16 = this.i0;
                c cVar7 = eVar3.G[i16];
                cVar7.f10528g = iVarJ;
                c cVar8 = cVar7.d;
                int i17 = (cVar8 == null || cVar8.f10525b != this) ? 0 : cVar7.f10527e;
                if (i16 == 0 || i16 == i10) {
                    u.i iVar = cVar6.f10528g;
                    int i18 = this.f10508k0 - i17;
                    u.c cVarK = eVar.k();
                    u.i iVarL = eVar.l();
                    iVarL.d = 0;
                    cVarK.c(iVar, iVarJ, iVarL, i18);
                    eVar.c(cVarK);
                } else {
                    u.i iVar2 = cVar6.f10528g;
                    int i19 = this.f10508k0 + i17;
                    u.c cVarK2 = eVar.k();
                    u.i iVarL2 = eVar.l();
                    iVarL2.d = 0;
                    cVarK2.b(iVar2, iVarJ, iVarL2, i19);
                    eVar.c(cVarK2);
                }
                eVar.e(cVar6.f10528g, iVarJ, this.f10508k0 + i17, i14);
            }
            i15++;
            i10 = 2;
        }
        int i20 = this.i0;
        if (i20 == 0) {
            eVar.e(cVar3.f10528g, cVar.f10528g, 0, 8);
            eVar.e(cVar.f10528g, this.K.A.f10528g, 0, 4);
            eVar.e(cVar.f10528g, this.K.f10561y.f10528g, 0, 0);
            return;
        }
        if (i20 == 1) {
            eVar.e(cVar.f10528g, cVar3.f10528g, 0, 8);
            eVar.e(cVar.f10528g, this.K.f10561y.f10528g, 0, 4);
            eVar.e(cVar.f10528g, this.K.A.f10528g, 0, 0);
        } else if (i20 == 2) {
            eVar.e(cVar4.f10528g, cVar2.f10528g, 0, 8);
            eVar.e(cVar2.f10528g, this.K.B.f10528g, 0, 4);
            eVar.e(cVar2.f10528g, this.K.f10562z.f10528g, 0, 0);
        } else if (i20 == 3) {
            eVar.e(cVar2.f10528g, cVar4.f10528g, 0, 8);
            eVar.e(cVar2.f10528g, this.K.f10562z.f10528g, 0, 4);
            eVar.e(cVar2.f10528g, this.K.B.f10528g, 0, 0);
        }
    }

    @Override // v.e
    public final boolean b() {
        return true;
    }

    @Override // v.j, v.e
    public final void f(e eVar, HashMap map) {
        super.f(eVar, map);
        a aVar = (a) eVar;
        this.i0 = aVar.i0;
        this.f10507j0 = aVar.f10507j0;
        this.f10508k0 = aVar.f10508k0;
    }

    @Override // v.e
    public final String toString() {
        String strT = a.e.t(new StringBuilder("[Barrier] "), this.Y, " {");
        for (int i6 = 0; i6 < this.f10614h0; i6++) {
            e eVar = this.f10613g0[i6];
            if (i6 > 0) {
                strT = q.h(strT, ", ");
            }
            StringBuilder sbM = q.m(strT);
            sbM.append(eVar.Y);
            strT = sbM.toString();
        }
        return q.h(strT, "}");
    }
}
