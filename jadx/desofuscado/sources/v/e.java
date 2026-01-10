package v;

import android.view.View;
import ea.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import w.m;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class e {
    public final c A;
    public final c B;
    public final c C;
    public final c D;
    public final c E;
    public final c F;
    public final c[] G;
    public final ArrayList H;
    public final boolean[] I;
    public d[] J;
    public e K;
    public int L;
    public int M;
    public float N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public float U;
    public float V;
    public View W;
    public int X;
    public String Y;
    public int Z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f10533a = false;

    /* renamed from: a0, reason: collision with root package name */
    public int f10534a0;

    /* renamed from: b, reason: collision with root package name */
    public w.d f10535b;

    /* renamed from: b0, reason: collision with root package name */
    public final float[] f10536b0;

    /* renamed from: c, reason: collision with root package name */
    public w.d f10537c;

    /* renamed from: c0, reason: collision with root package name */
    public final e[] f10538c0;
    public final w.k d;

    /* renamed from: d0, reason: collision with root package name */
    public final e[] f10539d0;

    /* renamed from: e, reason: collision with root package name */
    public final m f10540e;

    /* renamed from: e0, reason: collision with root package name */
    public e f10541e0;
    public final boolean[] f;

    /* renamed from: f0, reason: collision with root package name */
    public e f10542f0;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f10543g;

    /* renamed from: h, reason: collision with root package name */
    public int f10544h;

    /* renamed from: i, reason: collision with root package name */
    public int f10545i;

    /* renamed from: j, reason: collision with root package name */
    public int f10546j;

    /* renamed from: k, reason: collision with root package name */
    public int f10547k;

    /* renamed from: l, reason: collision with root package name */
    public final int[] f10548l;

    /* renamed from: m, reason: collision with root package name */
    public int f10549m;

    /* renamed from: n, reason: collision with root package name */
    public int f10550n;

    /* renamed from: o, reason: collision with root package name */
    public float f10551o;

    /* renamed from: p, reason: collision with root package name */
    public int f10552p;

    /* renamed from: q, reason: collision with root package name */
    public int f10553q;

    /* renamed from: r, reason: collision with root package name */
    public float f10554r;

    /* renamed from: s, reason: collision with root package name */
    public int f10555s;

    /* renamed from: t, reason: collision with root package name */
    public float f10556t;

    /* renamed from: u, reason: collision with root package name */
    public int[] f10557u;

    /* renamed from: v, reason: collision with root package name */
    public float f10558v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f10559w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f10560x;

    /* renamed from: y, reason: collision with root package name */
    public final c f10561y;

    /* renamed from: z, reason: collision with root package name */
    public final c f10562z;

    public e() {
        w.k kVar = new w.k(this);
        kVar.f10788h.f10770e = 4;
        kVar.f10789i.f10770e = 5;
        kVar.f = 0;
        this.d = kVar;
        m mVar = new m(this);
        w.g gVar = new w.g(mVar);
        mVar.f10781k = gVar;
        mVar.f10782l = null;
        mVar.f10788h.f10770e = 6;
        mVar.f10789i.f10770e = 7;
        gVar.f10770e = 8;
        mVar.f = 1;
        this.f10540e = mVar;
        this.f = new boolean[]{true, true};
        this.f10543g = new int[]{0, 0, 0, 0};
        this.f10544h = -1;
        this.f10545i = -1;
        this.f10546j = 0;
        this.f10547k = 0;
        this.f10548l = new int[2];
        this.f10549m = 0;
        this.f10550n = 0;
        this.f10551o = 1.0f;
        this.f10552p = 0;
        this.f10553q = 0;
        this.f10554r = 1.0f;
        this.f10555s = -1;
        this.f10556t = 1.0f;
        this.f10557u = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.f10558v = 0.0f;
        this.f10559w = false;
        c cVar = new c(this, 2);
        this.f10561y = cVar;
        c cVar2 = new c(this, 3);
        this.f10562z = cVar2;
        c cVar3 = new c(this, 4);
        this.A = cVar3;
        c cVar4 = new c(this, 5);
        this.B = cVar4;
        c cVar5 = new c(this, 6);
        this.C = cVar5;
        c cVar6 = new c(this, 8);
        this.D = cVar6;
        c cVar7 = new c(this, 9);
        this.E = cVar7;
        c cVar8 = new c(this, 7);
        this.F = cVar8;
        this.G = new c[]{cVar, cVar3, cVar2, cVar4, cVar5, cVar8};
        ArrayList arrayList = new ArrayList();
        this.H = arrayList;
        this.I = new boolean[2];
        d dVar = d.f10529a;
        this.J = new d[]{dVar, dVar};
        this.K = null;
        this.L = 0;
        this.M = 0;
        this.N = 0.0f;
        this.O = -1;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.U = 0.5f;
        this.V = 0.5f;
        this.X = 0;
        this.Y = null;
        this.Z = 0;
        this.f10534a0 = 0;
        this.f10536b0 = new float[]{-1.0f, -1.0f};
        this.f10538c0 = new e[]{null, null};
        this.f10539d0 = new e[]{null, null};
        this.f10541e0 = null;
        this.f10542f0 = null;
        arrayList.add(cVar);
        arrayList.add(cVar2);
        arrayList.add(cVar3);
        arrayList.add(cVar4);
        arrayList.add(cVar6);
        arrayList.add(cVar7);
        arrayList.add(cVar8);
        arrayList.add(cVar5);
    }

    public void A(boolean z7, boolean z10) {
        int i6;
        int i10;
        w.k kVar = this.d;
        boolean z11 = z7 & kVar.f10787g;
        m mVar = this.f10540e;
        boolean z12 = z10 & mVar.f10787g;
        int i11 = kVar.f10788h.f10771g;
        int i12 = mVar.f10788h.f10771g;
        int i13 = kVar.f10789i.f10771g;
        int i14 = mVar.f10789i.f10771g;
        int i15 = i14 - i12;
        if (i13 - i11 < 0 || i15 < 0 || i11 == Integer.MIN_VALUE || i11 == Integer.MAX_VALUE || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE) {
            i13 = 0;
            i14 = 0;
            i11 = 0;
            i12 = 0;
        }
        int i16 = i13 - i11;
        int i17 = i14 - i12;
        if (z11) {
            this.P = i11;
        }
        if (z12) {
            this.Q = i12;
        }
        if (this.X == 8) {
            this.L = 0;
            this.M = 0;
            return;
        }
        d dVar = d.f10529a;
        if (z11) {
            if (this.J[0] == dVar && i16 < (i10 = this.L)) {
                i16 = i10;
            }
            this.L = i16;
            int i18 = this.S;
            if (i16 < i18) {
                this.L = i18;
            }
        }
        if (z12) {
            if (this.J[1] == dVar && i17 < (i6 = this.M)) {
                i17 = i6;
            }
            this.M = i17;
            int i19 = this.T;
            if (i17 < i19) {
                this.M = i19;
            }
        }
    }

    public void B(u.e eVar) {
        int i6;
        int i10;
        c cVar = this.f10561y;
        eVar.getClass();
        int iM = u.e.m(cVar);
        int iM2 = u.e.m(this.f10562z);
        int iM3 = u.e.m(this.A);
        int iM4 = u.e.m(this.B);
        w.k kVar = this.d;
        w.g gVar = kVar.f10788h;
        if (gVar.f10774j) {
            w.g gVar2 = kVar.f10789i;
            if (gVar2.f10774j) {
                iM = gVar.f10771g;
                iM3 = gVar2.f10771g;
            }
        }
        m mVar = this.f10540e;
        w.g gVar3 = mVar.f10788h;
        if (gVar3.f10774j) {
            w.g gVar4 = mVar.f10789i;
            if (gVar4.f10774j) {
                iM2 = gVar3.f10771g;
                iM4 = gVar4.f10771g;
            }
        }
        int i11 = iM4 - iM2;
        if (iM3 - iM < 0 || i11 < 0 || iM == Integer.MIN_VALUE || iM == Integer.MAX_VALUE || iM2 == Integer.MIN_VALUE || iM2 == Integer.MAX_VALUE || iM3 == Integer.MIN_VALUE || iM3 == Integer.MAX_VALUE || iM4 == Integer.MIN_VALUE || iM4 == Integer.MAX_VALUE) {
            iM = 0;
            iM2 = 0;
            iM3 = 0;
            iM4 = 0;
        }
        int i12 = iM3 - iM;
        int i13 = iM4 - iM2;
        this.P = iM;
        this.Q = iM2;
        if (this.X == 8) {
            this.L = 0;
            this.M = 0;
            return;
        }
        d[] dVarArr = this.J;
        d dVar = dVarArr[0];
        d dVar2 = d.f10529a;
        if (dVar == dVar2 && i12 < (i10 = this.L)) {
            i12 = i10;
        }
        if (dVarArr[1] == dVar2 && i13 < (i6 = this.M)) {
            i13 = i6;
        }
        this.L = i12;
        this.M = i13;
        int i14 = this.T;
        if (i13 < i14) {
            this.M = i14;
        }
        int i15 = this.S;
        if (i12 < i15) {
            this.L = i15;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x05bc  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:309:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(u.e r57) {
        /*
            Method dump skipped, instructions count: 1656
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v.e.a(u.e):void");
    }

    public boolean b() {
        return this.X != 8;
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:288:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(u.e r32, boolean r33, boolean r34, boolean r35, boolean r36, u.i r37, u.i r38, v.d r39, boolean r40, v.c r41, v.c r42, int r43, int r44, int r45, int r46, float r47, boolean r48, boolean r49, boolean r50, boolean r51, int r52, int r53, int r54, int r55, float r56, boolean r57) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v.e.c(u.e, boolean, boolean, boolean, boolean, u.i, u.i, v.d, boolean, v.c, v.c, int, int, int, int, float, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public final void d(int i6, e eVar, int i10, int i11) {
        boolean z7;
        if (i6 == 7) {
            if (i10 != 7) {
                if (i10 == 2 || i10 == 4) {
                    d(2, eVar, i10, 0);
                    d(4, eVar, i10, 0);
                    h(7).a(eVar.h(i10), 0);
                    return;
                } else {
                    if (i10 == 3 || i10 == 5) {
                        d(3, eVar, i10, 0);
                        d(5, eVar, i10, 0);
                        h(7).a(eVar.h(i10), 0);
                        return;
                    }
                    return;
                }
            }
            c cVarH = h(2);
            c cVarH2 = h(4);
            c cVarH3 = h(3);
            c cVarH4 = h(5);
            boolean z10 = true;
            if ((cVarH == null || !cVarH.f()) && (cVarH2 == null || !cVarH2.f())) {
                d(2, eVar, 2, 0);
                d(4, eVar, 4, 0);
                z7 = true;
            } else {
                z7 = false;
            }
            if ((cVarH3 == null || !cVarH3.f()) && (cVarH4 == null || !cVarH4.f())) {
                d(3, eVar, 3, 0);
                d(5, eVar, 5, 0);
            } else {
                z10 = false;
            }
            if (z7 && z10) {
                h(7).a(eVar.h(7), 0);
                return;
            } else if (z7) {
                h(8).a(eVar.h(8), 0);
                return;
            } else {
                if (z10) {
                    h(9).a(eVar.h(9), 0);
                    return;
                }
                return;
            }
        }
        if (i6 == 8 && (i10 == 2 || i10 == 4)) {
            c cVarH5 = h(2);
            c cVarH6 = eVar.h(i10);
            c cVarH7 = h(4);
            cVarH5.a(cVarH6, 0);
            cVarH7.a(cVarH6, 0);
            h(8).a(cVarH6, 0);
            return;
        }
        if (i6 == 9 && (i10 == 3 || i10 == 5)) {
            c cVarH8 = eVar.h(i10);
            h(3).a(cVarH8, 0);
            h(5).a(cVarH8, 0);
            h(9).a(cVarH8, 0);
            return;
        }
        if (i6 == 8 && i10 == 8) {
            h(2).a(eVar.h(2), 0);
            h(4).a(eVar.h(4), 0);
            h(8).a(eVar.h(i10), 0);
            return;
        }
        if (i6 == 9 && i10 == 9) {
            h(3).a(eVar.h(3), 0);
            h(5).a(eVar.h(5), 0);
            h(9).a(eVar.h(i10), 0);
            return;
        }
        c cVarH9 = h(i6);
        c cVarH10 = eVar.h(i10);
        if (cVarH9.g(cVarH10)) {
            if (i6 == 6) {
                c cVarH11 = h(3);
                c cVarH12 = h(5);
                if (cVarH11 != null) {
                    cVarH11.h();
                }
                if (cVarH12 != null) {
                    cVarH12.h();
                }
                i11 = 0;
            } else if (i6 == 3 || i6 == 5) {
                c cVarH13 = h(6);
                if (cVarH13 != null) {
                    cVarH13.h();
                }
                c cVarH14 = h(7);
                if (cVarH14.d != cVarH10) {
                    cVarH14.h();
                }
                c cVarD = h(i6).d();
                c cVarH15 = h(9);
                if (cVarH15.f()) {
                    cVarD.h();
                    cVarH15.h();
                }
            } else if (i6 == 2 || i6 == 4) {
                c cVarH16 = h(7);
                if (cVarH16.d != cVarH10) {
                    cVarH16.h();
                }
                c cVarD2 = h(i6).d();
                c cVarH17 = h(8);
                if (cVarH17.f()) {
                    cVarD2.h();
                    cVarH17.h();
                }
            }
            cVarH9.a(cVarH10, i11);
        }
    }

    public final void e(c cVar, c cVar2, int i6) {
        if (cVar.f10525b == this) {
            d(cVar.f10526c, cVar2.f10525b, cVar2.f10526c, i6);
        }
    }

    public void f(e eVar, HashMap map) {
        this.f10544h = eVar.f10544h;
        this.f10545i = eVar.f10545i;
        this.f10546j = eVar.f10546j;
        this.f10547k = eVar.f10547k;
        int[] iArr = eVar.f10548l;
        int i6 = iArr[0];
        int[] iArr2 = this.f10548l;
        iArr2[0] = i6;
        iArr2[1] = iArr[1];
        this.f10549m = eVar.f10549m;
        this.f10550n = eVar.f10550n;
        this.f10552p = eVar.f10552p;
        this.f10553q = eVar.f10553q;
        this.f10554r = eVar.f10554r;
        this.f10555s = eVar.f10555s;
        this.f10556t = eVar.f10556t;
        int[] iArr3 = eVar.f10557u;
        this.f10557u = Arrays.copyOf(iArr3, iArr3.length);
        this.f10558v = eVar.f10558v;
        this.f10559w = eVar.f10559w;
        this.f10560x = eVar.f10560x;
        this.f10561y.h();
        this.f10562z.h();
        this.A.h();
        this.B.h();
        this.C.h();
        this.D.h();
        this.E.h();
        this.F.h();
        this.J = (d[]) Arrays.copyOf(this.J, 2);
        this.K = this.K == null ? null : (e) map.get(eVar.K);
        this.L = eVar.L;
        this.M = eVar.M;
        this.N = eVar.N;
        this.O = eVar.O;
        this.P = eVar.P;
        this.Q = eVar.Q;
        this.R = eVar.R;
        this.S = eVar.S;
        this.T = eVar.T;
        this.U = eVar.U;
        this.V = eVar.V;
        this.W = eVar.W;
        this.X = eVar.X;
        this.Y = eVar.Y;
        this.Z = eVar.Z;
        this.f10534a0 = eVar.f10534a0;
        float[] fArr = eVar.f10536b0;
        float f = fArr[0];
        float[] fArr2 = this.f10536b0;
        fArr2[0] = f;
        fArr2[1] = fArr[1];
        e[] eVarArr = eVar.f10538c0;
        e eVar2 = eVarArr[0];
        e[] eVarArr2 = this.f10538c0;
        eVarArr2[0] = eVar2;
        eVarArr2[1] = eVarArr[1];
        e[] eVarArr3 = eVar.f10539d0;
        e eVar3 = eVarArr3[0];
        e[] eVarArr4 = this.f10539d0;
        eVarArr4[0] = eVar3;
        eVarArr4[1] = eVarArr3[1];
        e eVar4 = eVar.f10541e0;
        this.f10541e0 = eVar4 == null ? null : (e) map.get(eVar4);
        e eVar5 = eVar.f10542f0;
        this.f10542f0 = eVar5 != null ? (e) map.get(eVar5) : null;
    }

    public final void g(u.e eVar) {
        eVar.j(this.f10561y);
        eVar.j(this.f10562z);
        eVar.j(this.A);
        eVar.j(this.B);
        if (this.R > 0) {
            eVar.j(this.C);
        }
    }

    public c h(int i6) {
        switch (u.h.a(i6)) {
            case 0:
                return null;
            case 1:
                return this.f10561y;
            case 2:
                return this.f10562z;
            case 3:
                return this.A;
            case 4:
                return this.B;
            case 5:
                return this.C;
            case 6:
                return this.F;
            case 7:
                return this.D;
            case 8:
                return this.E;
            default:
                throw new AssertionError(q.q(i6));
        }
    }

    public final d i(int i6) {
        if (i6 == 0) {
            return this.J[0];
        }
        if (i6 == 1) {
            return this.J[1];
        }
        return null;
    }

    public final int j() {
        if (this.X == 8) {
            return 0;
        }
        return this.M;
    }

    public final e k(int i6) {
        c cVar;
        c cVar2;
        if (i6 != 0) {
            if (i6 == 1 && (cVar2 = (cVar = this.B).d) != null && cVar2.d == cVar) {
                return cVar2.f10525b;
            }
            return null;
        }
        c cVar3 = this.A;
        c cVar4 = cVar3.d;
        if (cVar4 == null || cVar4.d != cVar3) {
            return null;
        }
        return cVar4.f10525b;
    }

    public final e l(int i6) {
        c cVar;
        c cVar2;
        if (i6 != 0) {
            if (i6 == 1 && (cVar2 = (cVar = this.f10562z).d) != null && cVar2.d == cVar) {
                return cVar2.f10525b;
            }
            return null;
        }
        c cVar3 = this.f10561y;
        c cVar4 = cVar3.d;
        if (cVar4 == null || cVar4.d != cVar3) {
            return null;
        }
        return cVar4.f10525b;
    }

    public final int m() {
        if (this.X == 8) {
            return 0;
        }
        return this.L;
    }

    public final int n() {
        e eVar = this.K;
        return (eVar == null || !(eVar instanceof f)) ? this.P : ((f) eVar).f10568m0 + this.P;
    }

    public final int o() {
        e eVar = this.K;
        return (eVar == null || !(eVar instanceof f)) ? this.Q : ((f) eVar).f10569n0 + this.Q;
    }

    public final void p(int i6, e eVar, int i10, int i11, int i12) {
        h(i6).b(eVar.h(i10), i11, i12, true);
    }

    public final boolean q(int i6) {
        c cVar;
        c cVar2;
        int i10 = i6 * 2;
        c[] cVarArr = this.G;
        c cVar3 = cVarArr[i10];
        c cVar4 = cVar3.d;
        return (cVar4 == null || cVar4.d == cVar3 || (cVar2 = (cVar = cVarArr[i10 + 1]).d) == null || cVar2.d != cVar) ? false : true;
    }

    public final boolean r() {
        c cVar = this.f10561y;
        c cVar2 = cVar.d;
        if (cVar2 != null && cVar2.d == cVar) {
            return true;
        }
        c cVar3 = this.A;
        c cVar4 = cVar3.d;
        return cVar4 != null && cVar4.d == cVar3;
    }

    public final boolean s() {
        c cVar = this.f10562z;
        c cVar2 = cVar.d;
        if (cVar2 != null && cVar2.d == cVar) {
            return true;
        }
        c cVar3 = this.B;
        c cVar4 = cVar3.d;
        return cVar4 != null && cVar4.d == cVar3;
    }

    public void t() {
        this.f10561y.h();
        this.f10562z.h();
        this.A.h();
        this.B.h();
        this.C.h();
        this.D.h();
        this.E.h();
        this.F.h();
        this.K = null;
        this.f10558v = 0.0f;
        this.L = 0;
        this.M = 0;
        this.N = 0.0f;
        this.O = -1;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0.5f;
        this.V = 0.5f;
        d[] dVarArr = this.J;
        d dVar = d.f10529a;
        dVarArr[0] = dVar;
        dVarArr[1] = dVar;
        this.W = null;
        this.X = 0;
        this.Z = 0;
        this.f10534a0 = 0;
        float[] fArr = this.f10536b0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f10544h = -1;
        this.f10545i = -1;
        int[] iArr = this.f10557u;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f10546j = 0;
        this.f10547k = 0;
        this.f10551o = 1.0f;
        this.f10554r = 1.0f;
        this.f10550n = Integer.MAX_VALUE;
        this.f10553q = Integer.MAX_VALUE;
        this.f10549m = 0;
        this.f10552p = 0;
        this.f10555s = -1;
        this.f10556t = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        boolean[] zArr2 = this.I;
        zArr2[0] = false;
        zArr2[1] = false;
    }

    public String toString() {
        StringBuilder sbM = q.m("");
        sbM.append(this.Y != null ? a.e.t(new StringBuilder("id: "), this.Y, " ") : "");
        sbM.append("(");
        sbM.append(this.P);
        sbM.append(", ");
        sbM.append(this.Q);
        sbM.append(") - (");
        sbM.append(this.L);
        sbM.append(" x ");
        sbM.append(this.M);
        sbM.append(")");
        return sbM.toString();
    }

    public final void u() {
        e eVar = this.K;
        if (eVar != null && (eVar instanceof f)) {
            ((f) eVar).getClass();
        }
        ArrayList arrayList = this.H;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((c) arrayList.get(i6)).h();
        }
    }

    public void v(a0.f fVar) {
        this.f10561y.i();
        this.f10562z.i();
        this.A.i();
        this.B.i();
        this.C.i();
        this.F.i();
        this.D.i();
        this.E.i();
    }

    public final void w(int i6) {
        this.M = i6;
        int i10 = this.T;
        if (i6 < i10) {
            this.M = i10;
        }
    }

    public final void x(d dVar) {
        this.J[0] = dVar;
    }

    public final void y(d dVar) {
        this.J[1] = dVar;
    }

    public final void z(int i6) {
        this.L = i6;
        int i10 = this.S;
        if (i6 < i10) {
            this.L = i10;
        }
    }
}
