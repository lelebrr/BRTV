package w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k extends n {

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f10778k = new int[2];

    public static void m(int[] iArr, int i6, int i10, int i11, int i12, float f, int i13) {
        int i14 = i10 - i6;
        int i15 = i12 - i11;
        if (i13 != -1) {
            if (i13 == 0) {
                iArr[0] = (int) ((i15 * f) + 0.5f);
                iArr[1] = i15;
                return;
            } else {
                if (i13 != 1) {
                    return;
                }
                iArr[0] = i14;
                iArr[1] = (int) ((i14 * f) + 0.5f);
                return;
            }
        }
        int i16 = (int) ((i15 * f) + 0.5f);
        int i17 = (int) ((i14 / f) + 0.5f);
        if (i16 <= i14) {
            iArr[0] = i16;
            iArr[1] = i15;
        } else if (i17 <= i15) {
            iArr[0] = i14;
            iArr[1] = i17;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0273  */
    @Override // w.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(w.e r24) {
        /*
            Method dump skipped, instructions count: 927
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w.k.a(w.e):void");
    }

    @Override // w.n
    public final void d() {
        v.e eVar;
        v.e eVar2;
        v.e eVar3;
        v.e eVar4;
        v.e eVar5 = this.f10784b;
        boolean z7 = eVar5.f10533a;
        h hVar = this.f10786e;
        if (z7) {
            hVar.d(eVar5.m());
        }
        boolean z10 = hVar.f10774j;
        v.d dVar = v.d.d;
        v.d dVar2 = v.d.f10531c;
        v.d dVar3 = v.d.f10529a;
        g gVar = this.f10789i;
        g gVar2 = this.f10788h;
        if (!z10) {
            v.e eVar6 = this.f10784b;
            v.d dVar4 = eVar6.J[0];
            this.d = dVar4;
            if (dVar4 != dVar2) {
                if (dVar4 == dVar && (((eVar4 = eVar6.K) != null && eVar4.J[0] == dVar3) || eVar4.J[0] == dVar)) {
                    int iM = (eVar4.m() - this.f10784b.f10561y.c()) - this.f10784b.A.c();
                    k kVar = eVar4.d;
                    n.b(gVar2, kVar.f10788h, this.f10784b.f10561y.c());
                    n.b(gVar, kVar.f10789i, -this.f10784b.A.c());
                    hVar.d(iM);
                    return;
                }
                if (dVar4 == dVar3) {
                    hVar.d(eVar6.m());
                }
            }
        } else if (this.d == dVar && (((eVar2 = (eVar = this.f10784b).K) != null && eVar2.J[0] == dVar3) || eVar2.J[0] == dVar)) {
            n.b(gVar2, eVar2.d.f10788h, eVar.f10561y.c());
            n.b(gVar, eVar2.d.f10789i, -this.f10784b.A.c());
            return;
        }
        if (hVar.f10774j) {
            v.e eVar7 = this.f10784b;
            if (eVar7.f10533a) {
                v.c[] cVarArr = eVar7.G;
                v.c cVar = cVarArr[0];
                v.c cVar2 = cVar.d;
                if (cVar2 != null && cVarArr[1].d != null) {
                    if (eVar7.r()) {
                        gVar2.f = this.f10784b.G[0].c();
                        gVar.f = -this.f10784b.G[1].c();
                        return;
                    }
                    g gVarH = n.h(this.f10784b.G[0]);
                    if (gVarH != null) {
                        n.b(gVar2, gVarH, this.f10784b.G[0].c());
                    }
                    g gVarH2 = n.h(this.f10784b.G[1]);
                    if (gVarH2 != null) {
                        n.b(gVar, gVarH2, -this.f10784b.G[1].c());
                    }
                    gVar2.f10768b = true;
                    gVar.f10768b = true;
                    return;
                }
                if (cVar2 != null) {
                    g gVarH3 = n.h(cVar);
                    if (gVarH3 != null) {
                        n.b(gVar2, gVarH3, this.f10784b.G[0].c());
                        n.b(gVar, gVar2, hVar.f10771g);
                        return;
                    }
                    return;
                }
                v.c cVar3 = cVarArr[1];
                if (cVar3.d != null) {
                    g gVarH4 = n.h(cVar3);
                    if (gVarH4 != null) {
                        n.b(gVar, gVarH4, -this.f10784b.G[1].c());
                        n.b(gVar2, gVar, -hVar.f10771g);
                        return;
                    }
                    return;
                }
                if ((eVar7 instanceof v.j) || eVar7.K == null || eVar7.h(7).d != null) {
                    return;
                }
                v.e eVar8 = this.f10784b;
                n.b(gVar2, eVar8.K.d.f10788h, eVar8.n());
                n.b(gVar, gVar2, hVar.f10771g);
                return;
            }
        }
        if (this.d == dVar2) {
            v.e eVar9 = this.f10784b;
            int i6 = eVar9.f10546j;
            if (i6 == 2) {
                v.e eVar10 = eVar9.K;
                if (eVar10 != null) {
                    h hVar2 = eVar10.f10540e.f10786e;
                    hVar.f10776l.add(hVar2);
                    hVar2.f10775k.add(hVar);
                    hVar.f10768b = true;
                    hVar.f10775k.add(gVar2);
                    hVar.f10775k.add(gVar);
                }
            } else if (i6 == 3) {
                if (eVar9.f10547k == 3) {
                    gVar2.f10767a = this;
                    gVar.f10767a = this;
                    m mVar = eVar9.f10540e;
                    mVar.f10788h.f10767a = this;
                    mVar.f10789i.f10767a = this;
                    hVar.f10767a = this;
                    if (eVar9.s()) {
                        hVar.f10776l.add(this.f10784b.f10540e.f10786e);
                        this.f10784b.f10540e.f10786e.f10775k.add(hVar);
                        m mVar2 = this.f10784b.f10540e;
                        mVar2.f10786e.f10767a = this;
                        hVar.f10776l.add(mVar2.f10788h);
                        hVar.f10776l.add(this.f10784b.f10540e.f10789i);
                        this.f10784b.f10540e.f10788h.f10775k.add(hVar);
                        this.f10784b.f10540e.f10789i.f10775k.add(hVar);
                    } else if (this.f10784b.r()) {
                        this.f10784b.f10540e.f10786e.f10776l.add(hVar);
                        hVar.f10775k.add(this.f10784b.f10540e.f10786e);
                    } else {
                        this.f10784b.f10540e.f10786e.f10776l.add(hVar);
                    }
                } else {
                    h hVar3 = eVar9.f10540e.f10786e;
                    hVar.f10776l.add(hVar3);
                    hVar3.f10775k.add(hVar);
                    this.f10784b.f10540e.f10788h.f10775k.add(hVar);
                    this.f10784b.f10540e.f10789i.f10775k.add(hVar);
                    hVar.f10768b = true;
                    hVar.f10775k.add(gVar2);
                    hVar.f10775k.add(gVar);
                    gVar2.f10776l.add(hVar);
                    gVar.f10776l.add(hVar);
                }
            }
        }
        v.e eVar11 = this.f10784b;
        v.c[] cVarArr2 = eVar11.G;
        v.c cVar4 = cVarArr2[0];
        v.c cVar5 = cVar4.d;
        if (cVar5 != null && cVarArr2[1].d != null) {
            if (eVar11.r()) {
                gVar2.f = this.f10784b.G[0].c();
                gVar.f = -this.f10784b.G[1].c();
                return;
            }
            g gVarH5 = n.h(this.f10784b.G[0]);
            g gVarH6 = n.h(this.f10784b.G[1]);
            gVarH5.b(this);
            gVarH6.b(this);
            this.f10790j = 4;
            return;
        }
        if (cVar5 != null) {
            g gVarH7 = n.h(cVar4);
            if (gVarH7 != null) {
                n.b(gVar2, gVarH7, this.f10784b.G[0].c());
                c(gVar, gVar2, 1, hVar);
                return;
            }
            return;
        }
        v.c cVar6 = cVarArr2[1];
        if (cVar6.d != null) {
            g gVarH8 = n.h(cVar6);
            if (gVarH8 != null) {
                n.b(gVar, gVarH8, -this.f10784b.G[1].c());
                c(gVar2, gVar, -1, hVar);
                return;
            }
            return;
        }
        if ((eVar11 instanceof v.j) || (eVar3 = eVar11.K) == null) {
            return;
        }
        n.b(gVar2, eVar3.d.f10788h, eVar11.n());
        c(gVar, gVar2, 1, hVar);
    }

    @Override // w.n
    public final void e() {
        g gVar = this.f10788h;
        if (gVar.f10774j) {
            this.f10784b.P = gVar.f10771g;
        }
    }

    @Override // w.n
    public final void f() {
        this.f10785c = null;
        this.f10788h.c();
        this.f10789i.c();
        this.f10786e.c();
        this.f10787g = false;
    }

    @Override // w.n
    public final boolean k() {
        return this.d != v.d.f10531c || this.f10784b.f10546j == 0;
    }

    public final void n() {
        this.f10787g = false;
        g gVar = this.f10788h;
        gVar.c();
        gVar.f10774j = false;
        g gVar2 = this.f10789i;
        gVar2.c();
        gVar2.f10774j = false;
        this.f10786e.f10774j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f10784b.Y;
    }
}
