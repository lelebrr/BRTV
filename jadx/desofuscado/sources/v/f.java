package v;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import w.m;
import w.n;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends e {

    /* renamed from: g0, reason: collision with root package name */
    public ArrayList f10563g0 = new ArrayList();

    /* renamed from: h0, reason: collision with root package name */
    public final s.g f10564h0 = new s.g(this);
    public final w.f i0;

    /* renamed from: j0, reason: collision with root package name */
    public w.c f10565j0;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f10566k0;

    /* renamed from: l0, reason: collision with root package name */
    public final u.e f10567l0;

    /* renamed from: m0, reason: collision with root package name */
    public int f10568m0;

    /* renamed from: n0, reason: collision with root package name */
    public int f10569n0;

    /* renamed from: o0, reason: collision with root package name */
    public int f10570o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f10571p0;

    /* renamed from: q0, reason: collision with root package name */
    public b[] f10572q0;

    /* renamed from: r0, reason: collision with root package name */
    public b[] f10573r0;

    /* renamed from: s0, reason: collision with root package name */
    public int f10574s0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f10575t0;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f10576u0;

    public f() {
        w.f fVar = new w.f();
        fVar.f10762b = true;
        fVar.f10763c = true;
        fVar.f10764e = new ArrayList();
        new ArrayList();
        fVar.f = null;
        fVar.f10765g = new w.b();
        fVar.f10766h = new ArrayList();
        fVar.f10761a = this;
        fVar.d = this;
        this.i0 = fVar;
        this.f10565j0 = null;
        this.f10566k0 = false;
        this.f10567l0 = new u.e();
        this.f10570o0 = 0;
        this.f10571p0 = 0;
        this.f10572q0 = new b[4];
        this.f10573r0 = new b[4];
        this.f10574s0 = 263;
        this.f10575t0 = false;
        this.f10576u0 = false;
    }

    @Override // v.e
    public final void A(boolean z7, boolean z10) {
        super.A(z7, z10);
        int size = this.f10563g0.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((e) this.f10563g0.get(i6)).A(z7, z10);
        }
    }

    public final void C(e eVar, int i6) {
        if (i6 == 0) {
            int i10 = this.f10570o0 + 1;
            b[] bVarArr = this.f10573r0;
            if (i10 >= bVarArr.length) {
                this.f10573r0 = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
            }
            b[] bVarArr2 = this.f10573r0;
            int i11 = this.f10570o0;
            bVarArr2[i11] = new b(eVar, 0, this.f10566k0);
            this.f10570o0 = i11 + 1;
            return;
        }
        if (i6 == 1) {
            int i12 = this.f10571p0 + 1;
            b[] bVarArr3 = this.f10572q0;
            if (i12 >= bVarArr3.length) {
                this.f10572q0 = (b[]) Arrays.copyOf(bVarArr3, bVarArr3.length * 2);
            }
            b[] bVarArr4 = this.f10572q0;
            int i13 = this.f10571p0;
            bVarArr4[i13] = new b(eVar, 1, this.f10566k0);
            this.f10571p0 = i13 + 1;
        }
    }

    public final void D(u.e eVar) {
        a(eVar);
        int size = this.f10563g0.size();
        boolean z7 = false;
        for (int i6 = 0; i6 < size; i6++) {
            e eVar2 = (e) this.f10563g0.get(i6);
            boolean[] zArr = eVar2.I;
            zArr[0] = false;
            zArr[1] = false;
            if (eVar2 instanceof a) {
                z7 = true;
            }
        }
        if (z7) {
            for (int i10 = 0; i10 < size; i10++) {
                e eVar3 = (e) this.f10563g0.get(i10);
                if (eVar3 instanceof a) {
                    a aVar = (a) eVar3;
                    for (int i11 = 0; i11 < aVar.f10614h0; i11++) {
                        e eVar4 = aVar.f10613g0[i11];
                        int i12 = aVar.i0;
                        if (i12 == 0 || i12 == 1) {
                            eVar4.I[0] = true;
                        } else if (i12 == 2 || i12 == 3) {
                            eVar4.I[1] = true;
                        }
                    }
                }
            }
        }
        for (int i13 = 0; i13 < size; i13++) {
            e eVar5 = (e) this.f10563g0.get(i13);
            eVar5.getClass();
            if ((eVar5 instanceof h) || (eVar5 instanceof i)) {
                eVar5.a(eVar);
            }
        }
        for (int i14 = 0; i14 < size; i14++) {
            e eVar6 = (e) this.f10563g0.get(i14);
            boolean z10 = eVar6 instanceof f;
            d dVar = d.f10530b;
            if (z10) {
                d[] dVarArr = eVar6.J;
                d dVar2 = dVarArr[0];
                d dVar3 = dVarArr[1];
                d dVar4 = d.f10529a;
                if (dVar2 == dVar) {
                    eVar6.x(dVar4);
                }
                if (dVar3 == dVar) {
                    eVar6.y(dVar4);
                }
                eVar6.a(eVar);
                if (dVar2 == dVar) {
                    eVar6.x(dVar2);
                }
                if (dVar3 == dVar) {
                    eVar6.y(dVar3);
                }
            } else {
                eVar6.f10544h = -1;
                eVar6.f10545i = -1;
                d dVar5 = this.J[0];
                d dVar6 = d.d;
                if (dVar5 != dVar && eVar6.J[0] == dVar6) {
                    c cVar = eVar6.f10561y;
                    int i15 = cVar.f10527e;
                    int iM = m();
                    c cVar2 = eVar6.A;
                    int i16 = iM - cVar2.f10527e;
                    cVar.f10528g = eVar.j(cVar);
                    cVar2.f10528g = eVar.j(cVar2);
                    eVar.d(cVar.f10528g, i15);
                    eVar.d(cVar2.f10528g, i16);
                    eVar6.f10544h = 2;
                    eVar6.P = i15;
                    int i17 = i16 - i15;
                    eVar6.L = i17;
                    int i18 = eVar6.S;
                    if (i17 < i18) {
                        eVar6.L = i18;
                    }
                }
                if (this.J[1] != dVar && eVar6.J[1] == dVar6) {
                    c cVar3 = eVar6.f10562z;
                    int i19 = cVar3.f10527e;
                    int iJ = j();
                    c cVar4 = eVar6.B;
                    int i20 = iJ - cVar4.f10527e;
                    cVar3.f10528g = eVar.j(cVar3);
                    cVar4.f10528g = eVar.j(cVar4);
                    eVar.d(cVar3.f10528g, i19);
                    eVar.d(cVar4.f10528g, i20);
                    if (eVar6.R > 0 || eVar6.X == 8) {
                        c cVar5 = eVar6.C;
                        u.i iVarJ = eVar.j(cVar5);
                        cVar5.f10528g = iVarJ;
                        eVar.d(iVarJ, eVar6.R + i19);
                    }
                    eVar6.f10545i = 2;
                    eVar6.Q = i19;
                    int i21 = i20 - i19;
                    eVar6.M = i21;
                    int i22 = eVar6.T;
                    if (i21 < i22) {
                        eVar6.M = i22;
                    }
                }
                if (!(eVar6 instanceof h) && !(eVar6 instanceof i)) {
                    eVar6.a(eVar);
                }
            }
        }
        if (this.f10570o0 > 0) {
            k.a(this, eVar, 0);
        }
        if (this.f10571p0 > 0) {
            k.a(this, eVar, 1);
        }
    }

    public final boolean E(int i6, boolean z7) {
        boolean z10;
        boolean z11;
        d dVar;
        boolean z12;
        w.f fVar = this.i0;
        f fVar2 = fVar.f10761a;
        d dVarI = fVar2.i(0);
        d dVarI2 = fVar2.i(1);
        int iN = fVar2.n();
        int iO = fVar2.o();
        ArrayList arrayList = fVar.f10764e;
        d dVar2 = d.f10529a;
        m mVar = fVar2.f10540e;
        w.k kVar = fVar2.d;
        if (z7 && (dVarI == (dVar = d.f10530b) || dVarI2 == dVar)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z12 = z7;
                    break;
                }
                n nVar = (n) it.next();
                if (nVar.f == i6 && !nVar.k()) {
                    z12 = false;
                    break;
                }
            }
            if (i6 == 0) {
                if (z12 && dVarI == dVar) {
                    fVar2.x(dVar2);
                    fVar2.z(fVar.d(fVar2, 0));
                    kVar.f10786e.d(fVar2.m());
                }
            } else if (z12 && dVarI2 == dVar) {
                fVar2.y(dVar2);
                fVar2.w(fVar.d(fVar2, 1));
                mVar.f10786e.d(fVar2.j());
            }
        }
        d dVar3 = d.d;
        if (i6 == 0) {
            d dVar4 = fVar2.J[0];
            if (dVar4 == dVar2 || dVar4 == dVar3) {
                int iM = fVar2.m() + iN;
                kVar.f10789i.d(iM);
                kVar.f10786e.d(iM - iN);
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            d dVar5 = fVar2.J[1];
            if (dVar5 == dVar2 || dVar5 == dVar3) {
                int iJ = fVar2.j() + iO;
                mVar.f10789i.d(iJ);
                mVar.f10786e.d(iJ - iO);
                z10 = true;
            } else {
                z10 = false;
            }
        }
        fVar.g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            n nVar2 = (n) it2.next();
            if (nVar2.f == i6 && (nVar2.f10784b != fVar2 || nVar2.f10787g)) {
                nVar2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            n nVar3 = (n) it3.next();
            if (nVar3.f == i6 && (z10 || nVar3.f10784b != fVar2)) {
                if (!nVar3.f10788h.f10774j || !nVar3.f10789i.f10774j || (!(nVar3 instanceof w.d) && !nVar3.f10786e.f10774j)) {
                    z11 = false;
                    break;
                }
            }
        }
        z11 = true;
        fVar2.x(dVarI);
        fVar2.y(dVarI2);
        return z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01f9 A[PHI: r0 r14
  0x01f9: PHI (r0v20 boolean) = (r0v19 boolean), (r0v22 boolean), (r0v22 boolean), (r0v22 boolean) binds: [B:89:0x01c3, B:97:0x01e3, B:98:0x01e5, B:100:0x01eb] A[DONT_GENERATE, DONT_INLINE]
  0x01f9: PHI (r14v5 boolean) = (r14v4 boolean), (r14v7 boolean), (r14v7 boolean), (r14v7 boolean) binds: [B:89:0x01c3, B:97:0x01e3, B:98:0x01e5, B:100:0x01eb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c5  */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void F() {
        /*
            Method dump skipped, instructions count: 531
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v.f.F():void");
    }

    public final void G() {
        d dVar;
        d dVar2;
        ArrayList arrayList = (ArrayList) this.f10564h0.f9688b;
        arrayList.clear();
        int size = this.f10563g0.size();
        for (int i6 = 0; i6 < size; i6++) {
            e eVar = (e) this.f10563g0.get(i6);
            d[] dVarArr = eVar.J;
            d dVar3 = dVarArr[0];
            d dVar4 = d.f10531c;
            if (dVar3 == dVar4 || dVar3 == (dVar = d.d) || (dVar2 = dVarArr[1]) == dVar4 || dVar2 == dVar) {
                arrayList.add(eVar);
            }
        }
        this.i0.f10762b = true;
    }

    @Override // v.e
    public final void t() {
        this.f10567l0.r();
        this.f10568m0 = 0;
        this.f10569n0 = 0;
        this.f10563g0.clear();
        super.t();
    }

    @Override // v.e
    public final void v(a0.f fVar) {
        super.v(fVar);
        int size = this.f10563g0.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((e) this.f10563g0.get(i6)).v(fVar);
        }
    }
}
