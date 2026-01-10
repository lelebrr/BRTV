package w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m extends n {

    /* renamed from: k, reason: collision with root package name */
    public g f10781k;

    /* renamed from: l, reason: collision with root package name */
    public a f10782l;

    @Override // w.e
    public final void a(e eVar) {
        float f;
        float f3;
        float f4;
        int i6;
        if (u.h.a(this.f10790j) == 3) {
            v.e eVar2 = this.f10784b;
            l(eVar2.f10562z, eVar2.B, 1);
            return;
        }
        h hVar = this.f10786e;
        boolean z7 = hVar.f10769c;
        v.d dVar = v.d.f10531c;
        if (z7 && !hVar.f10774j && this.d == dVar) {
            v.e eVar3 = this.f10784b;
            int i10 = eVar3.f10547k;
            if (i10 == 2) {
                v.e eVar4 = eVar3.K;
                if (eVar4 != null) {
                    if (eVar4.f10540e.f10786e.f10774j) {
                        hVar.d((int) ((r1.f10771g * eVar3.f10554r) + 0.5f));
                    }
                }
            } else if (i10 == 3) {
                h hVar2 = eVar3.d.f10786e;
                if (hVar2.f10774j) {
                    int i11 = eVar3.O;
                    if (i11 == -1) {
                        f = hVar2.f10771g;
                        f3 = eVar3.N;
                    } else if (i11 == 0) {
                        f4 = hVar2.f10771g * eVar3.N;
                        i6 = (int) (f4 + 0.5f);
                        hVar.d(i6);
                    } else if (i11 != 1) {
                        i6 = 0;
                        hVar.d(i6);
                    } else {
                        f = hVar2.f10771g;
                        f3 = eVar3.N;
                    }
                    f4 = f / f3;
                    i6 = (int) (f4 + 0.5f);
                    hVar.d(i6);
                }
            }
        }
        g gVar = this.f10788h;
        if (gVar.f10769c) {
            g gVar2 = this.f10789i;
            if (gVar2.f10769c) {
                if (gVar.f10774j && gVar2.f10774j && hVar.f10774j) {
                    return;
                }
                if (!hVar.f10774j && this.d == dVar) {
                    v.e eVar5 = this.f10784b;
                    if (eVar5.f10546j == 0 && !eVar5.s()) {
                        g gVar3 = (g) gVar.f10776l.get(0);
                        g gVar4 = (g) gVar2.f10776l.get(0);
                        int i12 = gVar3.f10771g + gVar.f;
                        int i13 = gVar4.f10771g + gVar2.f;
                        gVar.d(i12);
                        gVar2.d(i13);
                        hVar.d(i13 - i12);
                        return;
                    }
                }
                if (!hVar.f10774j && this.d == dVar && this.f10783a == 1 && gVar.f10776l.size() > 0 && gVar2.f10776l.size() > 0) {
                    g gVar5 = (g) gVar.f10776l.get(0);
                    int i14 = (((g) gVar2.f10776l.get(0)).f10771g + gVar2.f) - (gVar5.f10771g + gVar.f);
                    int i15 = hVar.f10777m;
                    if (i14 < i15) {
                        hVar.d(i14);
                    } else {
                        hVar.d(i15);
                    }
                }
                if (hVar.f10774j && gVar.f10776l.size() > 0 && gVar2.f10776l.size() > 0) {
                    g gVar6 = (g) gVar.f10776l.get(0);
                    g gVar7 = (g) gVar2.f10776l.get(0);
                    int i16 = gVar6.f10771g;
                    int i17 = gVar.f + i16;
                    int i18 = gVar7.f10771g;
                    int i19 = gVar2.f + i18;
                    float f5 = this.f10784b.V;
                    if (gVar6 == gVar7) {
                        f5 = 0.5f;
                    } else {
                        i16 = i17;
                        i18 = i19;
                    }
                    gVar.d((int) ((((i18 - i16) - hVar.f10771g) * f5) + i16 + 0.5f));
                    gVar2.d(gVar.f10771g + hVar.f10771g);
                }
            }
        }
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
            hVar.d(eVar5.j());
        }
        boolean z10 = hVar.f10774j;
        v.d dVar = v.d.d;
        v.d dVar2 = v.d.f10529a;
        v.d dVar3 = v.d.f10531c;
        g gVar = this.f10789i;
        g gVar2 = this.f10788h;
        if (!z10) {
            v.e eVar6 = this.f10784b;
            this.d = eVar6.J[1];
            if (eVar6.f10559w) {
                this.f10782l = new a(this);
            }
            v.d dVar4 = this.d;
            if (dVar4 != dVar3) {
                if (dVar4 == dVar && (eVar4 = this.f10784b.K) != null && eVar4.J[1] == dVar2) {
                    int iJ = (eVar4.j() - this.f10784b.f10562z.c()) - this.f10784b.B.c();
                    m mVar = eVar4.f10540e;
                    n.b(gVar2, mVar.f10788h, this.f10784b.f10562z.c());
                    n.b(gVar, mVar.f10789i, -this.f10784b.B.c());
                    hVar.d(iJ);
                    return;
                }
                if (dVar4 == dVar2) {
                    hVar.d(this.f10784b.j());
                }
            }
        } else if (this.d == dVar && (eVar2 = (eVar = this.f10784b).K) != null && eVar2.J[1] == dVar2) {
            m mVar2 = eVar2.f10540e;
            n.b(gVar2, mVar2.f10788h, eVar.f10562z.c());
            n.b(gVar, mVar2.f10789i, -this.f10784b.B.c());
            return;
        }
        boolean z11 = hVar.f10774j;
        g gVar3 = this.f10781k;
        if (z11) {
            v.e eVar7 = this.f10784b;
            if (eVar7.f10533a) {
                v.c[] cVarArr = eVar7.G;
                v.c cVar = cVarArr[2];
                v.c cVar2 = cVar.d;
                if (cVar2 != null && cVarArr[3].d != null) {
                    if (eVar7.s()) {
                        gVar2.f = this.f10784b.G[2].c();
                        gVar.f = -this.f10784b.G[3].c();
                    } else {
                        g gVarH = n.h(this.f10784b.G[2]);
                        if (gVarH != null) {
                            n.b(gVar2, gVarH, this.f10784b.G[2].c());
                        }
                        g gVarH2 = n.h(this.f10784b.G[3]);
                        if (gVarH2 != null) {
                            n.b(gVar, gVarH2, -this.f10784b.G[3].c());
                        }
                        gVar2.f10768b = true;
                        gVar.f10768b = true;
                    }
                    v.e eVar8 = this.f10784b;
                    if (eVar8.f10559w) {
                        n.b(gVar3, gVar2, eVar8.R);
                        return;
                    }
                    return;
                }
                if (cVar2 != null) {
                    g gVarH3 = n.h(cVar);
                    if (gVarH3 != null) {
                        n.b(gVar2, gVarH3, this.f10784b.G[2].c());
                        n.b(gVar, gVar2, hVar.f10771g);
                        v.e eVar9 = this.f10784b;
                        if (eVar9.f10559w) {
                            n.b(gVar3, gVar2, eVar9.R);
                            return;
                        }
                        return;
                    }
                    return;
                }
                v.c cVar3 = cVarArr[3];
                if (cVar3.d != null) {
                    g gVarH4 = n.h(cVar3);
                    if (gVarH4 != null) {
                        n.b(gVar, gVarH4, -this.f10784b.G[3].c());
                        n.b(gVar2, gVar, -hVar.f10771g);
                    }
                    v.e eVar10 = this.f10784b;
                    if (eVar10.f10559w) {
                        n.b(gVar3, gVar2, eVar10.R);
                        return;
                    }
                    return;
                }
                v.c cVar4 = cVarArr[4];
                if (cVar4.d != null) {
                    g gVarH5 = n.h(cVar4);
                    if (gVarH5 != null) {
                        n.b(gVar3, gVarH5, 0);
                        n.b(gVar2, gVar3, -this.f10784b.R);
                        n.b(gVar, gVar2, hVar.f10771g);
                        return;
                    }
                    return;
                }
                if ((eVar7 instanceof v.j) || eVar7.K == null || eVar7.h(7).d != null) {
                    return;
                }
                v.e eVar11 = this.f10784b;
                n.b(gVar2, eVar11.K.f10540e.f10788h, eVar11.o());
                n.b(gVar, gVar2, hVar.f10771g);
                v.e eVar12 = this.f10784b;
                if (eVar12.f10559w) {
                    n.b(gVar3, gVar2, eVar12.R);
                    return;
                }
                return;
            }
        }
        if (z11 || this.d != dVar3) {
            hVar.b(this);
        } else {
            v.e eVar13 = this.f10784b;
            int i6 = eVar13.f10547k;
            if (i6 == 2) {
                v.e eVar14 = eVar13.K;
                if (eVar14 != null) {
                    h hVar2 = eVar14.f10540e.f10786e;
                    hVar.f10776l.add(hVar2);
                    hVar2.f10775k.add(hVar);
                    hVar.f10768b = true;
                    hVar.f10775k.add(gVar2);
                    hVar.f10775k.add(gVar);
                }
            } else if (i6 == 3 && !eVar13.s()) {
                v.e eVar15 = this.f10784b;
                if (eVar15.f10546j != 3) {
                    h hVar3 = eVar15.d.f10786e;
                    hVar.f10776l.add(hVar3);
                    hVar3.f10775k.add(hVar);
                    hVar.f10768b = true;
                    hVar.f10775k.add(gVar2);
                    hVar.f10775k.add(gVar);
                }
            }
        }
        v.e eVar16 = this.f10784b;
        v.c[] cVarArr2 = eVar16.G;
        v.c cVar5 = cVarArr2[2];
        v.c cVar6 = cVar5.d;
        if (cVar6 != null && cVarArr2[3].d != null) {
            if (eVar16.s()) {
                gVar2.f = this.f10784b.G[2].c();
                gVar.f = -this.f10784b.G[3].c();
            } else {
                g gVarH6 = n.h(this.f10784b.G[2]);
                g gVarH7 = n.h(this.f10784b.G[3]);
                gVarH6.b(this);
                gVarH7.b(this);
                this.f10790j = 4;
            }
            if (this.f10784b.f10559w) {
                c(gVar3, gVar2, 1, this.f10782l);
            }
        } else if (cVar6 != null) {
            g gVarH8 = n.h(cVar5);
            if (gVarH8 != null) {
                n.b(gVar2, gVarH8, this.f10784b.G[2].c());
                c(gVar, gVar2, 1, hVar);
                if (this.f10784b.f10559w) {
                    c(gVar3, gVar2, 1, this.f10782l);
                }
                if (this.d == dVar3) {
                    v.e eVar17 = this.f10784b;
                    if (eVar17.N > 0.0f) {
                        k kVar = eVar17.d;
                        if (kVar.d == dVar3) {
                            kVar.f10786e.f10775k.add(hVar);
                            hVar.f10776l.add(this.f10784b.d.f10786e);
                            hVar.f10767a = this;
                        }
                    }
                }
            }
        } else {
            v.c cVar7 = cVarArr2[3];
            if (cVar7.d != null) {
                g gVarH9 = n.h(cVar7);
                if (gVarH9 != null) {
                    n.b(gVar, gVarH9, -this.f10784b.G[3].c());
                    c(gVar2, gVar, -1, hVar);
                    if (this.f10784b.f10559w) {
                        c(gVar3, gVar2, 1, this.f10782l);
                    }
                }
            } else {
                v.c cVar8 = cVarArr2[4];
                if (cVar8.d != null) {
                    g gVarH10 = n.h(cVar8);
                    if (gVarH10 != null) {
                        n.b(gVar3, gVarH10, 0);
                        c(gVar2, gVar3, -1, this.f10782l);
                        c(gVar, gVar2, 1, hVar);
                    }
                } else if (!(eVar16 instanceof v.j) && (eVar3 = eVar16.K) != null) {
                    n.b(gVar2, eVar3.f10540e.f10788h, eVar16.o());
                    c(gVar, gVar2, 1, hVar);
                    if (this.f10784b.f10559w) {
                        c(gVar3, gVar2, 1, this.f10782l);
                    }
                    if (this.d == dVar3) {
                        v.e eVar18 = this.f10784b;
                        if (eVar18.N > 0.0f) {
                            k kVar2 = eVar18.d;
                            if (kVar2.d == dVar3) {
                                kVar2.f10786e.f10775k.add(hVar);
                                hVar.f10776l.add(this.f10784b.d.f10786e);
                                hVar.f10767a = this;
                            }
                        }
                    }
                }
            }
        }
        if (hVar.f10776l.size() == 0) {
            hVar.f10769c = true;
        }
    }

    @Override // w.n
    public final void e() {
        g gVar = this.f10788h;
        if (gVar.f10774j) {
            this.f10784b.Q = gVar.f10771g;
        }
    }

    @Override // w.n
    public final void f() {
        this.f10785c = null;
        this.f10788h.c();
        this.f10789i.c();
        this.f10781k.c();
        this.f10786e.c();
        this.f10787g = false;
    }

    @Override // w.n
    public final boolean k() {
        return this.d != v.d.f10531c || this.f10784b.f10547k == 0;
    }

    public final void m() {
        this.f10787g = false;
        g gVar = this.f10788h;
        gVar.c();
        gVar.f10774j = false;
        g gVar2 = this.f10789i;
        gVar2.c();
        gVar2.f10774j = false;
        g gVar3 = this.f10781k;
        gVar3.c();
        gVar3.f10774j = false;
        this.f10786e.f10774j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f10784b.Y;
    }
}
