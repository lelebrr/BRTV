package v;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends j {
    public e[] Q0;
    public int i0 = 0;

    /* renamed from: j0, reason: collision with root package name */
    public int f10593j0 = 0;

    /* renamed from: k0, reason: collision with root package name */
    public int f10594k0 = 0;

    /* renamed from: l0, reason: collision with root package name */
    public int f10595l0 = 0;

    /* renamed from: m0, reason: collision with root package name */
    public int f10596m0 = 0;

    /* renamed from: n0, reason: collision with root package name */
    public int f10597n0 = 0;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f10598o0 = false;

    /* renamed from: p0, reason: collision with root package name */
    public int f10599p0 = 0;

    /* renamed from: q0, reason: collision with root package name */
    public int f10600q0 = 0;

    /* renamed from: r0, reason: collision with root package name */
    public final w.b f10601r0 = new w.b();

    /* renamed from: s0, reason: collision with root package name */
    public w.c f10602s0 = null;

    /* renamed from: t0, reason: collision with root package name */
    public int f10603t0 = -1;

    /* renamed from: u0, reason: collision with root package name */
    public int f10604u0 = -1;

    /* renamed from: v0, reason: collision with root package name */
    public int f10605v0 = -1;

    /* renamed from: w0, reason: collision with root package name */
    public int f10606w0 = -1;
    public int x0 = -1;

    /* renamed from: y0, reason: collision with root package name */
    public int f10607y0 = -1;

    /* renamed from: z0, reason: collision with root package name */
    public float f10608z0 = 0.5f;
    public float A0 = 0.5f;
    public float B0 = 0.5f;
    public float C0 = 0.5f;
    public float D0 = 0.5f;
    public float E0 = 0.5f;
    public int F0 = 0;
    public int G0 = 0;
    public int H0 = 2;
    public int I0 = 2;
    public int J0 = 0;
    public int K0 = -1;
    public int L0 = 0;
    public final ArrayList M0 = new ArrayList();
    public e[] N0 = null;
    public e[] O0 = null;
    public int[] P0 = null;
    public int R0 = 0;

    @Override // v.j
    public final void D() {
        for (int i6 = 0; i6 < this.f10614h0; i6++) {
            e eVar = this.f10613g0[i6];
        }
    }

    public final int E(e eVar, int i6) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.J[1] == d.f10531c) {
            int i10 = eVar.f10547k;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (eVar.f10554r * i6);
                if (i11 != eVar.j()) {
                    G(eVar, eVar.J[0], eVar.m(), d.f10529a, i11);
                }
                return i11;
            }
            if (i10 == 1) {
                return eVar.j();
            }
            if (i10 == 3) {
                return (int) ((eVar.m() * eVar.N) + 0.5f);
            }
        }
        return eVar.j();
    }

    public final int F(e eVar, int i6) {
        if (eVar == null) {
            return 0;
        }
        if (eVar.J[0] == d.f10531c) {
            int i10 = eVar.f10546j;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (eVar.f10551o * i6);
                if (i11 != eVar.m()) {
                    G(eVar, d.f10529a, i11, eVar.J[1], eVar.j());
                }
                return i11;
            }
            if (i10 == 1) {
                return eVar.m();
            }
            if (i10 == 3) {
                return (int) ((eVar.j() * eVar.N) + 0.5f);
            }
        }
        return eVar.m();
    }

    public final void G(e eVar, d dVar, int i6, d dVar2, int i10) {
        w.c cVar;
        e eVar2;
        while (true) {
            cVar = this.f10602s0;
            if (cVar != null || (eVar2 = this.K) == null) {
                break;
            } else {
                this.f10602s0 = ((f) eVar2).f10565j0;
            }
        }
        w.b bVar = this.f10601r0;
        bVar.f10751a = dVar;
        bVar.f10752b = dVar2;
        bVar.f10753c = i6;
        bVar.d = i10;
        ((androidx.constraintlayout.widget.b) cVar).a(eVar, bVar);
        eVar.z(bVar.f10754e);
        eVar.w(bVar.f);
        eVar.f10559w = bVar.f10756h;
        int i11 = bVar.f10755g;
        eVar.R = i11;
        eVar.f10559w = i11 > 0;
    }

    @Override // v.e
    public final void a(u.e eVar) {
        e eVar2;
        super.a(eVar);
        e eVar3 = this.K;
        boolean z7 = eVar3 != null ? ((f) eVar3).f10566k0 : false;
        int i6 = this.J0;
        ArrayList arrayList = this.M0;
        if (i6 != 0) {
            if (i6 == 1) {
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    ((g) arrayList.get(i10)).b(i10, z7, i10 == size + (-1));
                    i10++;
                }
            } else if (i6 == 2 && this.P0 != null && this.O0 != null && this.N0 != null) {
                for (int i11 = 0; i11 < this.R0; i11++) {
                    this.Q0[i11].u();
                }
                int[] iArr = this.P0;
                int i12 = iArr[0];
                int i13 = iArr[1];
                e eVar4 = null;
                for (int i14 = 0; i14 < i12; i14++) {
                    e eVar5 = this.O0[z7 ? (i12 - i14) - 1 : i14];
                    if (eVar5 != null && eVar5.X != 8) {
                        c cVar = eVar5.f10561y;
                        if (i14 == 0) {
                            eVar5.e(cVar, this.f10561y, this.f10596m0);
                            eVar5.Z = this.f10603t0;
                            eVar5.U = this.f10608z0;
                        }
                        if (i14 == i12 - 1) {
                            eVar5.e(eVar5.A, this.A, this.f10597n0);
                        }
                        if (i14 > 0) {
                            eVar5.e(cVar, eVar4.A, this.F0);
                            eVar4.e(eVar4.A, cVar, 0);
                        }
                        eVar4 = eVar5;
                    }
                }
                for (int i15 = 0; i15 < i13; i15++) {
                    e eVar6 = this.N0[i15];
                    if (eVar6 != null && eVar6.X != 8) {
                        c cVar2 = eVar6.f10562z;
                        if (i15 == 0) {
                            eVar6.e(cVar2, this.f10562z, this.i0);
                            eVar6.f10534a0 = this.f10604u0;
                            eVar6.V = this.A0;
                        }
                        if (i15 == i13 - 1) {
                            eVar6.e(eVar6.B, this.B, this.f10593j0);
                        }
                        if (i15 > 0) {
                            eVar6.e(cVar2, eVar4.B, this.G0);
                            eVar4.e(eVar4.B, cVar2, 0);
                        }
                        eVar4 = eVar6;
                    }
                }
                for (int i16 = 0; i16 < i12; i16++) {
                    for (int i17 = 0; i17 < i13; i17++) {
                        int i18 = (i17 * i12) + i16;
                        if (this.L0 == 1) {
                            i18 = (i16 * i13) + i17;
                        }
                        e[] eVarArr = this.Q0;
                        if (i18 < eVarArr.length && (eVar2 = eVarArr[i18]) != null && eVar2.X != 8) {
                            e eVar7 = this.O0[i16];
                            e eVar8 = this.N0[i17];
                            if (eVar2 != eVar7) {
                                eVar2.e(eVar2.f10561y, eVar7.f10561y, 0);
                                eVar2.e(eVar2.A, eVar7.A, 0);
                            }
                            if (eVar2 != eVar8) {
                                eVar2.e(eVar2.f10562z, eVar8.f10562z, 0);
                                eVar2.e(eVar2.B, eVar8.B, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((g) arrayList.get(0)).b(0, z7, true);
        }
        this.f10598o0 = false;
    }

    @Override // v.j, v.e
    public final void f(e eVar, HashMap map) {
        super.f(eVar, map);
        h hVar = (h) eVar;
        this.f10603t0 = hVar.f10603t0;
        this.f10604u0 = hVar.f10604u0;
        this.f10605v0 = hVar.f10605v0;
        this.f10606w0 = hVar.f10606w0;
        this.x0 = hVar.x0;
        this.f10607y0 = hVar.f10607y0;
        this.f10608z0 = hVar.f10608z0;
        this.A0 = hVar.A0;
        this.B0 = hVar.B0;
        this.C0 = hVar.C0;
        this.D0 = hVar.D0;
        this.E0 = hVar.E0;
        this.F0 = hVar.F0;
        this.G0 = hVar.G0;
        this.H0 = hVar.H0;
        this.I0 = hVar.I0;
        this.J0 = hVar.J0;
        this.K0 = hVar.K0;
        this.L0 = hVar.L0;
    }
}
