package v;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f10577a;
    public c d;

    /* renamed from: e, reason: collision with root package name */
    public c f10580e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public c f10581g;

    /* renamed from: h, reason: collision with root package name */
    public int f10582h;

    /* renamed from: i, reason: collision with root package name */
    public int f10583i;

    /* renamed from: j, reason: collision with root package name */
    public int f10584j;

    /* renamed from: k, reason: collision with root package name */
    public int f10585k;

    /* renamed from: q, reason: collision with root package name */
    public int f10591q;

    /* renamed from: r, reason: collision with root package name */
    public final /* synthetic */ h f10592r;

    /* renamed from: b, reason: collision with root package name */
    public e f10578b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f10579c = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f10586l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f10587m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f10588n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f10589o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f10590p = 0;

    public g(h hVar, int i6, c cVar, c cVar2, c cVar3, c cVar4, int i10) {
        this.f10592r = hVar;
        this.f10582h = 0;
        this.f10583i = 0;
        this.f10584j = 0;
        this.f10585k = 0;
        this.f10591q = 0;
        this.f10577a = i6;
        this.d = cVar;
        this.f10580e = cVar2;
        this.f = cVar3;
        this.f10581g = cVar4;
        this.f10582h = hVar.f10596m0;
        this.f10583i = hVar.i0;
        this.f10584j = hVar.f10597n0;
        this.f10585k = hVar.f10593j0;
        this.f10591q = i10;
    }

    public final void a(e eVar) {
        int i6 = this.f10577a;
        d dVar = d.f10531c;
        h hVar = this.f10592r;
        if (i6 == 0) {
            int iF = hVar.F(eVar, this.f10591q);
            if (eVar.J[0] == dVar) {
                this.f10590p++;
                iF = 0;
            }
            this.f10586l = iF + (eVar.X != 8 ? hVar.F0 : 0) + this.f10586l;
            int iE = hVar.E(eVar, this.f10591q);
            if (this.f10578b == null || this.f10579c < iE) {
                this.f10578b = eVar;
                this.f10579c = iE;
                this.f10587m = iE;
            }
        } else {
            int iF2 = hVar.F(eVar, this.f10591q);
            int iE2 = hVar.E(eVar, this.f10591q);
            if (eVar.J[1] == dVar) {
                this.f10590p++;
                iE2 = 0;
            }
            this.f10587m = iE2 + (eVar.X != 8 ? hVar.G0 : 0) + this.f10587m;
            if (this.f10578b == null || this.f10579c < iF2) {
                this.f10578b = eVar;
                this.f10579c = iF2;
                this.f10586l = iF2;
            }
        }
        this.f10589o++;
    }

    public final void b(int i6, boolean z7, boolean z10) {
        h hVar;
        int i10;
        e eVar;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15 = this.f10589o;
        int i16 = 0;
        while (true) {
            hVar = this.f10592r;
            if (i16 >= i15 || (i14 = this.f10588n + i16) >= hVar.R0) {
                break;
            }
            e eVar2 = hVar.Q0[i14];
            if (eVar2 != null) {
                eVar2.u();
            }
            i16++;
        }
        if (i15 == 0 || this.f10578b == null) {
            return;
        }
        boolean z11 = z10 && i6 == 0;
        int i17 = -1;
        int i18 = -1;
        for (int i19 = 0; i19 < i15; i19++) {
            int i20 = this.f10588n + (z7 ? (i15 - 1) - i19 : i19);
            if (i20 >= hVar.R0) {
                break;
            }
            if (hVar.Q0[i20].X == 0) {
                if (i17 == -1) {
                    i17 = i19;
                }
                i18 = i19;
            }
        }
        if (this.f10577a != 0) {
            e eVar3 = this.f10578b;
            eVar3.Z = hVar.f10603t0;
            int i21 = this.f10582h;
            if (i6 > 0) {
                i21 += hVar.F0;
            }
            c cVar = eVar3.f10561y;
            c cVar2 = eVar3.A;
            if (z7) {
                cVar2.a(this.f, i21);
                if (z10) {
                    cVar.a(this.d, this.f10584j);
                }
                if (i6 > 0) {
                    this.f.f10525b.f10561y.a(cVar2, 0);
                }
            } else {
                cVar.a(this.d, i21);
                if (z10) {
                    cVar2.a(this.f, this.f10584j);
                }
                if (i6 > 0) {
                    this.d.f10525b.A.a(cVar, 0);
                }
            }
            int i22 = 0;
            e eVar4 = null;
            while (i22 < i15) {
                int i23 = this.f10588n + i22;
                if (i23 >= hVar.R0) {
                    return;
                }
                e eVar5 = hVar.Q0[i23];
                if (i22 == 0) {
                    eVar5.e(eVar5.f10562z, this.f10580e, this.f10583i);
                    int i24 = hVar.f10604u0;
                    float f = hVar.A0;
                    if (this.f10588n == 0) {
                        int i25 = hVar.f10606w0;
                        i10 = -1;
                        if (i25 != -1) {
                            f = hVar.C0;
                        }
                        i24 = i25;
                        eVar5.f10534a0 = i24;
                        eVar5.V = f;
                    } else {
                        i10 = -1;
                    }
                    if (z10 && (i25 = hVar.f10607y0) != i10) {
                        f = hVar.E0;
                        i24 = i25;
                    }
                    eVar5.f10534a0 = i24;
                    eVar5.V = f;
                }
                if (i22 == i15 - 1) {
                    eVar5.e(eVar5.B, this.f10581g, this.f10585k);
                }
                if (eVar4 != null) {
                    c cVar3 = eVar5.f10562z;
                    int i26 = hVar.G0;
                    c cVar4 = eVar4.B;
                    cVar3.a(cVar4, i26);
                    c cVar5 = eVar5.f10562z;
                    if (i22 == i17) {
                        int i27 = this.f10583i;
                        if (cVar5.f()) {
                            cVar5.f = i27;
                        }
                    }
                    cVar4.a(cVar5, 0);
                    if (i22 == i18 + 1) {
                        int i28 = this.f10585k;
                        if (cVar4.f()) {
                            cVar4.f = i28;
                        }
                    }
                }
                if (eVar5 != eVar3) {
                    if (z7) {
                        int i29 = hVar.H0;
                        if (i29 == 0) {
                            eVar5.A.a(cVar2, 0);
                        } else if (i29 == 1) {
                            eVar5.f10561y.a(cVar, 0);
                        } else if (i29 == 2) {
                            eVar5.f10561y.a(cVar, 0);
                            eVar5.A.a(cVar2, 0);
                        }
                    } else {
                        int i30 = hVar.H0;
                        if (i30 == 0) {
                            eVar5.f10561y.a(cVar, 0);
                        } else if (i30 == 1) {
                            eVar5.A.a(cVar2, 0);
                        } else if (i30 == 2) {
                            if (z11) {
                                eVar5.f10561y.a(this.d, this.f10582h);
                                eVar5.A.a(this.f, this.f10584j);
                            } else {
                                eVar5.f10561y.a(cVar, 0);
                                eVar5.A.a(cVar2, 0);
                            }
                        }
                    }
                }
                i22++;
                eVar4 = eVar5;
            }
            return;
        }
        e eVar6 = this.f10578b;
        eVar6.f10534a0 = hVar.f10604u0;
        int i31 = this.f10583i;
        if (i6 > 0) {
            i31 += hVar.G0;
        }
        c cVar6 = this.f10580e;
        c cVar7 = eVar6.f10562z;
        cVar7.a(cVar6, i31);
        c cVar8 = eVar6.B;
        if (z10) {
            cVar8.a(this.f10581g, this.f10585k);
        }
        if (i6 > 0) {
            this.f10580e.f10525b.B.a(cVar7, 0);
        }
        if (hVar.I0 != 3 || eVar6.f10559w) {
            eVar = eVar6;
        } else {
            for (int i32 = 0; i32 < i15; i32++) {
                int i33 = this.f10588n + (z7 ? (i15 - 1) - i32 : i32);
                if (i33 >= hVar.R0) {
                    break;
                }
                eVar = hVar.Q0[i33];
                if (eVar.f10559w) {
                    break;
                }
            }
            eVar = eVar6;
        }
        e eVar7 = null;
        int i34 = 0;
        while (i34 < i15) {
            int i35 = z7 ? (i15 - 1) - i34 : i34;
            int i36 = this.f10588n + i35;
            if (i36 >= hVar.R0) {
                return;
            }
            e eVar8 = hVar.Q0[i36];
            if (i34 == 0) {
                eVar8.e(eVar8.f10561y, this.d, this.f10582h);
            }
            if (i35 == 0) {
                int i37 = hVar.f10603t0;
                float f3 = hVar.f10608z0;
                if (this.f10588n == 0) {
                    int i38 = hVar.f10605v0;
                    i11 = i37;
                    i12 = -1;
                    if (i38 != -1) {
                        f3 = hVar.B0;
                    }
                    i13 = i38;
                    eVar8.Z = i13;
                    eVar8.U = f3;
                } else {
                    i11 = i37;
                    i12 = -1;
                }
                if (!z10 || (i38 = hVar.x0) == i12) {
                    i13 = i11;
                    eVar8.Z = i13;
                    eVar8.U = f3;
                } else {
                    f3 = hVar.D0;
                    i13 = i38;
                    eVar8.Z = i13;
                    eVar8.U = f3;
                }
            }
            if (i34 == i15 - 1) {
                eVar8.e(eVar8.A, this.f, this.f10584j);
            }
            if (eVar7 != null) {
                c cVar9 = eVar8.f10561y;
                int i39 = hVar.F0;
                c cVar10 = eVar7.A;
                cVar9.a(cVar10, i39);
                c cVar11 = eVar8.f10561y;
                if (i34 == i17) {
                    int i40 = this.f10582h;
                    if (cVar11.f()) {
                        cVar11.f = i40;
                    }
                }
                cVar10.a(cVar11, 0);
                if (i34 == i18 + 1) {
                    int i41 = this.f10584j;
                    if (cVar10.f()) {
                        cVar10.f = i41;
                    }
                }
            }
            if (eVar8 != eVar6) {
                int i42 = hVar.I0;
                if (i42 == 3 && eVar.f10559w && eVar8 != eVar && eVar8.f10559w) {
                    eVar8.C.a(eVar.C, 0);
                } else if (i42 == 0) {
                    eVar8.f10562z.a(cVar7, 0);
                } else if (i42 == 1) {
                    eVar8.B.a(cVar8, 0);
                } else if (z11) {
                    eVar8.f10562z.a(this.f10580e, this.f10583i);
                    eVar8.B.a(this.f10581g, this.f10585k);
                } else {
                    eVar8.f10562z.a(cVar7, 0);
                    eVar8.B.a(cVar8, 0);
                }
            }
            i34++;
            eVar7 = eVar8;
        }
    }

    public final int c() {
        return this.f10577a == 1 ? this.f10587m - this.f10592r.G0 : this.f10587m;
    }

    public final int d() {
        return this.f10577a == 0 ? this.f10586l - this.f10592r.F0 : this.f10586l;
    }

    public final void e(int i6) {
        int i10 = this.f10590p;
        if (i10 == 0) {
            return;
        }
        int i11 = this.f10589o;
        int i12 = i6 / i10;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = this.f10588n;
            int i15 = i14 + i13;
            h hVar = this.f10592r;
            if (i15 >= hVar.R0) {
                break;
            }
            e eVar = hVar.Q0[i14 + i13];
            int i16 = this.f10577a;
            d dVar = d.f10529a;
            d dVar2 = d.f10531c;
            if (i16 == 0) {
                if (eVar != null) {
                    d[] dVarArr = eVar.J;
                    if (dVarArr[0] == dVar2 && eVar.f10546j == 0) {
                        hVar.G(eVar, dVar, i12, dVarArr[1], eVar.j());
                    }
                }
            } else if (eVar != null) {
                d[] dVarArr2 = eVar.J;
                if (dVarArr2[1] == dVar2 && eVar.f10547k == 0) {
                    hVar.G(eVar, dVarArr2[0], eVar.m(), dVar, i12);
                }
            }
        }
        this.f10586l = 0;
        this.f10587m = 0;
        this.f10578b = null;
        this.f10579c = 0;
        int i17 = this.f10589o;
        for (int i18 = 0; i18 < i17; i18++) {
            int i19 = this.f10588n + i18;
            h hVar2 = this.f10592r;
            if (i19 >= hVar2.R0) {
                return;
            }
            e eVar2 = hVar2.Q0[i19];
            if (this.f10577a == 0) {
                int iM = eVar2.m();
                int i20 = hVar2.F0;
                if (eVar2.X == 8) {
                    i20 = 0;
                }
                this.f10586l = iM + i20 + this.f10586l;
                int iE = hVar2.E(eVar2, this.f10591q);
                if (this.f10578b == null || this.f10579c < iE) {
                    this.f10578b = eVar2;
                    this.f10579c = iE;
                    this.f10587m = iE;
                }
            } else {
                int iF = hVar2.F(eVar2, this.f10591q);
                int iE2 = hVar2.E(eVar2, this.f10591q);
                int i21 = hVar2.G0;
                if (eVar2.X == 8) {
                    i21 = 0;
                }
                this.f10587m = iE2 + i21 + this.f10587m;
                if (this.f10578b == null || this.f10579c < iF) {
                    this.f10578b = eVar2;
                    this.f10579c = iF;
                    this.f10586l = iF;
                }
            }
        }
    }

    public final void f(int i6, c cVar, c cVar2, c cVar3, c cVar4, int i10, int i11, int i12, int i13, int i14) {
        this.f10577a = i6;
        this.d = cVar;
        this.f10580e = cVar2;
        this.f = cVar3;
        this.f10581g = cVar4;
        this.f10582h = i10;
        this.f10583i = i11;
        this.f10584j = i12;
        this.f10585k = i13;
        this.f10591q = i14;
    }
}
