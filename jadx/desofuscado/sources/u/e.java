package u;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: o, reason: collision with root package name */
    public static int f10283o = 1000;

    /* renamed from: p, reason: collision with root package name */
    public static boolean f10284p = true;

    /* renamed from: b, reason: collision with root package name */
    public final g f10286b;

    /* renamed from: e, reason: collision with root package name */
    public c[] f10288e;

    /* renamed from: k, reason: collision with root package name */
    public final a0.f f10293k;

    /* renamed from: n, reason: collision with root package name */
    public c f10296n;

    /* renamed from: a, reason: collision with root package name */
    public int f10285a = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f10287c = 32;
    public int d = 32;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean[] f10289g = new boolean[32];

    /* renamed from: h, reason: collision with root package name */
    public int f10290h = 1;

    /* renamed from: i, reason: collision with root package name */
    public int f10291i = 0;

    /* renamed from: j, reason: collision with root package name */
    public int f10292j = 32;

    /* renamed from: l, reason: collision with root package name */
    public i[] f10294l = new i[f10283o];

    /* renamed from: m, reason: collision with root package name */
    public int f10295m = 0;

    public e() {
        this.f10288e = null;
        this.f10288e = new c[32];
        q();
        a0.f fVar = new a0.f(9, false);
        fVar.f38b = new m0.c();
        fVar.f39c = new m0.c();
        fVar.d = new m0.c();
        fVar.f40e = new i[32];
        this.f10293k = fVar;
        g gVar = new g(fVar);
        gVar.f = new i[128];
        gVar.f10299g = new i[128];
        gVar.f10300h = 0;
        gVar.f10301i = new f(gVar);
        this.f10286b = gVar;
        if (f10284p) {
            this.f10296n = new d(fVar);
        } else {
            this.f10296n = new c(fVar);
        }
    }

    public static int m(Object obj) {
        i iVar = ((v.c) obj).f10528g;
        if (iVar != null) {
            return (int) (iVar.f10305e + 0.5f);
        }
        return 0;
    }

    public final i a(int i6) {
        i iVar = (i) ((m0.c) this.f10293k.d).a();
        if (iVar == null) {
            iVar = new i(i6);
            iVar.f10311l = i6;
        } else {
            iVar.c();
            iVar.f10311l = i6;
        }
        int i10 = this.f10295m;
        int i11 = f10283o;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            f10283o = i12;
            this.f10294l = (i[]) Arrays.copyOf(this.f10294l, i12);
        }
        i[] iVarArr = this.f10294l;
        int i13 = this.f10295m;
        this.f10295m = i13 + 1;
        iVarArr[i13] = iVar;
        return iVar;
    }

    public final void b(i iVar, i iVar2, int i6, float f, i iVar3, i iVar4, int i10, int i11) {
        c cVarK = k();
        if (iVar2 == iVar3) {
            cVarK.d.h(iVar, 1.0f);
            cVarK.d.h(iVar4, 1.0f);
            cVarK.d.h(iVar2, -2.0f);
        } else if (f == 0.5f) {
            cVarK.d.h(iVar, 1.0f);
            cVarK.d.h(iVar2, -1.0f);
            cVarK.d.h(iVar3, -1.0f);
            cVarK.d.h(iVar4, 1.0f);
            if (i6 > 0 || i10 > 0) {
                cVarK.f10280b = (-i6) + i10;
            }
        } else if (f <= 0.0f) {
            cVarK.d.h(iVar, -1.0f);
            cVarK.d.h(iVar2, 1.0f);
            cVarK.f10280b = i6;
        } else if (f >= 1.0f) {
            cVarK.d.h(iVar4, -1.0f);
            cVarK.d.h(iVar3, 1.0f);
            cVarK.f10280b = -i10;
        } else {
            float f3 = 1.0f - f;
            cVarK.d.h(iVar, f3 * 1.0f);
            cVarK.d.h(iVar2, f3 * (-1.0f));
            cVarK.d.h(iVar3, (-1.0f) * f);
            cVarK.d.h(iVar4, 1.0f * f);
            if (i6 > 0 || i10 > 0) {
                cVarK.f10280b = (i10 * f) + ((-i6) * f3);
            }
        }
        if (i11 != 8) {
            cVarK.a(this, i11);
        }
        c(cVarK);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(u.c r17) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: u.e.c(u.c):void");
    }

    public final void d(i iVar, int i6) {
        int i10 = iVar.f10304c;
        if (i10 == -1) {
            iVar.f10305e = i6;
            iVar.f = true;
            int i11 = iVar.f10309j;
            for (int i12 = 0; i12 < i11; i12++) {
                iVar.f10308i[i12].g(iVar, false);
            }
            iVar.f10309j = 0;
            return;
        }
        if (i10 == -1) {
            c cVarK = k();
            cVarK.f10279a = iVar;
            float f = i6;
            iVar.f10305e = f;
            cVarK.f10280b = f;
            cVarK.f10282e = true;
            c(cVarK);
            return;
        }
        c cVar = this.f10288e[i10];
        if (cVar.f10282e) {
            cVar.f10280b = i6;
            return;
        }
        if (cVar.d.d() == 0) {
            cVar.f10282e = true;
            cVar.f10280b = i6;
            return;
        }
        c cVarK2 = k();
        if (i6 < 0) {
            cVarK2.f10280b = i6 * (-1);
            cVarK2.d.h(iVar, 1.0f);
        } else {
            cVarK2.f10280b = i6;
            cVarK2.d.h(iVar, -1.0f);
        }
        c(cVarK2);
    }

    public final void e(i iVar, i iVar2, int i6, int i10) {
        boolean z7 = false;
        if (i10 == 8 && iVar2.f && iVar.f10304c == -1) {
            iVar.f10305e = iVar2.f10305e + i6;
            iVar.f = true;
            int i11 = iVar.f10309j;
            for (int i12 = 0; i12 < i11; i12++) {
                iVar.f10308i[i12].g(iVar, false);
            }
            iVar.f10309j = 0;
            return;
        }
        c cVarK = k();
        if (i6 != 0) {
            if (i6 < 0) {
                i6 *= -1;
                z7 = true;
            }
            cVarK.f10280b = i6;
        }
        if (z7) {
            cVarK.d.h(iVar, 1.0f);
            cVarK.d.h(iVar2, -1.0f);
        } else {
            cVarK.d.h(iVar, -1.0f);
            cVarK.d.h(iVar2, 1.0f);
        }
        if (i10 != 8) {
            cVarK.a(this, i10);
        }
        c(cVarK);
    }

    public final void f(i iVar, i iVar2, int i6, int i10) {
        c cVarK = k();
        i iVarL = l();
        iVarL.d = 0;
        cVarK.b(iVar, iVar2, iVarL, i6);
        if (i10 != 8) {
            cVarK.d.h(i(i10), (int) (cVarK.d.g(iVarL) * (-1.0f)));
        }
        c(cVarK);
    }

    public final void g(i iVar, i iVar2, int i6, int i10) {
        c cVarK = k();
        i iVarL = l();
        iVarL.d = 0;
        cVarK.c(iVar, iVar2, iVarL, i6);
        if (i10 != 8) {
            cVarK.d.h(i(i10), (int) (cVarK.d.g(iVarL) * (-1.0f)));
        }
        c(cVarK);
    }

    public final void h(c cVar) {
        boolean z7 = f10284p;
        a0.f fVar = this.f10293k;
        if (z7) {
            c cVar2 = this.f10288e[this.f10291i];
            if (cVar2 != null) {
                ((m0.c) fVar.f38b).b(cVar2);
            }
        } else {
            c cVar3 = this.f10288e[this.f10291i];
            if (cVar3 != null) {
                ((m0.c) fVar.f39c).b(cVar3);
            }
        }
        c[] cVarArr = this.f10288e;
        int i6 = this.f10291i;
        cVarArr[i6] = cVar;
        i iVar = cVar.f10279a;
        iVar.f10304c = i6;
        this.f10291i = i6 + 1;
        iVar.d(cVar);
    }

    public final i i(int i6) {
        if (this.f10290h + 1 >= this.d) {
            n();
        }
        i iVarA = a(4);
        int i10 = this.f10285a + 1;
        this.f10285a = i10;
        this.f10290h++;
        iVarA.f10303b = i10;
        iVarA.d = i6;
        ((i[]) this.f10293k.f40e)[i10] = iVarA;
        g gVar = this.f10286b;
        gVar.f10301i.f10297a = iVarA;
        float[] fArr = iVarA.f10307h;
        Arrays.fill(fArr, 0.0f);
        fArr[iVarA.d] = 1.0f;
        gVar.i(iVarA);
        return iVarA;
    }

    public final i j(Object obj) {
        i iVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f10290h + 1 >= this.d) {
            n();
        }
        if (obj instanceof v.c) {
            v.c cVar = (v.c) obj;
            iVar = cVar.f10528g;
            if (iVar == null) {
                cVar.i();
                iVar = cVar.f10528g;
            }
            int i6 = iVar.f10303b;
            a0.f fVar = this.f10293k;
            if (i6 == -1 || i6 > this.f10285a || ((i[]) fVar.f40e)[i6] == null) {
                if (i6 != -1) {
                    iVar.c();
                }
                int i10 = this.f10285a + 1;
                this.f10285a = i10;
                this.f10290h++;
                iVar.f10303b = i10;
                iVar.f10311l = 1;
                ((i[]) fVar.f40e)[i10] = iVar;
            }
        }
        return iVar;
    }

    public final c k() {
        boolean z7 = f10284p;
        a0.f fVar = this.f10293k;
        if (z7) {
            c cVar = (c) ((m0.c) fVar.f38b).a();
            if (cVar == null) {
                return new d(fVar);
            }
            cVar.f10279a = null;
            cVar.d.clear();
            cVar.f10280b = 0.0f;
            cVar.f10282e = false;
            return cVar;
        }
        c cVar2 = (c) ((m0.c) fVar.f39c).a();
        if (cVar2 == null) {
            return new c(fVar);
        }
        cVar2.f10279a = null;
        cVar2.d.clear();
        cVar2.f10280b = 0.0f;
        cVar2.f10282e = false;
        return cVar2;
    }

    public final i l() {
        if (this.f10290h + 1 >= this.d) {
            n();
        }
        i iVarA = a(3);
        int i6 = this.f10285a + 1;
        this.f10285a = i6;
        this.f10290h++;
        iVarA.f10303b = i6;
        ((i[]) this.f10293k.f40e)[i6] = iVarA;
        return iVarA;
    }

    public final void n() {
        int i6 = this.f10287c * 2;
        this.f10287c = i6;
        this.f10288e = (c[]) Arrays.copyOf(this.f10288e, i6);
        a0.f fVar = this.f10293k;
        fVar.f40e = (i[]) Arrays.copyOf((i[]) fVar.f40e, this.f10287c);
        int i10 = this.f10287c;
        this.f10289g = new boolean[i10];
        this.d = i10;
        this.f10292j = i10;
    }

    public final void o(g gVar) {
        a0.f fVar;
        int i6 = 0;
        while (true) {
            if (i6 >= this.f10291i) {
                break;
            }
            c cVar = this.f10288e[i6];
            int i10 = 1;
            if (cVar.f10279a.f10311l != 1) {
                float f = 0.0f;
                if (cVar.f10280b < 0.0f) {
                    boolean z7 = false;
                    int i11 = 0;
                    while (!z7) {
                        i11 += i10;
                        float f3 = Float.MAX_VALUE;
                        int i12 = 0;
                        int i13 = -1;
                        int i14 = -1;
                        int i15 = 0;
                        while (true) {
                            int i16 = this.f10291i;
                            fVar = this.f10293k;
                            if (i12 >= i16) {
                                break;
                            }
                            c cVar2 = this.f10288e[i12];
                            if (cVar2.f10279a.f10311l != i10 && !cVar2.f10282e && cVar2.f10280b < f) {
                                int i17 = 1;
                                while (i17 < this.f10290h) {
                                    i iVar = ((i[]) fVar.f40e)[i17];
                                    float fG = cVar2.d.g(iVar);
                                    if (fG > f) {
                                        for (int i18 = 0; i18 < 9; i18++) {
                                            float f4 = iVar.f10306g[i18] / fG;
                                            if ((f4 < f3 && i18 == i15) || i18 > i15) {
                                                i15 = i18;
                                                f3 = f4;
                                                i13 = i12;
                                                i14 = i17;
                                            }
                                        }
                                    }
                                    i17++;
                                    f = 0.0f;
                                }
                            }
                            i12++;
                            f = 0.0f;
                            i10 = 1;
                        }
                        if (i13 != -1) {
                            c cVar3 = this.f10288e[i13];
                            cVar3.f10279a.f10304c = -1;
                            cVar3.f(((i[]) fVar.f40e)[i14]);
                            i iVar2 = cVar3.f10279a;
                            iVar2.f10304c = i13;
                            iVar2.d(cVar3);
                        } else {
                            z7 = true;
                        }
                        if (i11 > this.f10290h / 2) {
                            z7 = true;
                        }
                        f = 0.0f;
                        i10 = 1;
                    }
                }
            }
            i6++;
        }
        p(gVar);
        for (int i19 = 0; i19 < this.f10291i; i19++) {
            c cVar4 = this.f10288e[i19];
            cVar4.f10279a.f10305e = cVar4.f10280b;
        }
    }

    public final void p(c cVar) {
        for (int i6 = 0; i6 < this.f10290h; i6++) {
            this.f10289g[i6] = false;
        }
        boolean z7 = false;
        int i10 = 0;
        while (!z7) {
            i10++;
            if (i10 >= this.f10290h * 2) {
                return;
            }
            i iVar = cVar.f10279a;
            if (iVar != null) {
                this.f10289g[iVar.f10303b] = true;
            }
            i iVarD = cVar.d(this.f10289g);
            if (iVarD != null) {
                boolean[] zArr = this.f10289g;
                int i11 = iVarD.f10303b;
                if (zArr[i11]) {
                    return;
                } else {
                    zArr[i11] = true;
                }
            }
            if (iVarD != null) {
                float f = Float.MAX_VALUE;
                int i12 = -1;
                for (int i13 = 0; i13 < this.f10291i; i13++) {
                    c cVar2 = this.f10288e[i13];
                    if (cVar2.f10279a.f10311l != 1 && !cVar2.f10282e && cVar2.d.e(iVarD)) {
                        float fG = cVar2.d.g(iVarD);
                        if (fG < 0.0f) {
                            float f3 = (-cVar2.f10280b) / fG;
                            if (f3 < f) {
                                i12 = i13;
                                f = f3;
                            }
                        }
                    }
                }
                if (i12 > -1) {
                    c cVar3 = this.f10288e[i12];
                    cVar3.f10279a.f10304c = -1;
                    cVar3.f(iVarD);
                    i iVar2 = cVar3.f10279a;
                    iVar2.f10304c = i12;
                    iVar2.d(cVar3);
                }
            } else {
                z7 = true;
            }
        }
    }

    public final void q() {
        boolean z7 = f10284p;
        a0.f fVar = this.f10293k;
        int i6 = 0;
        if (z7) {
            while (true) {
                c[] cVarArr = this.f10288e;
                if (i6 >= cVarArr.length) {
                    return;
                }
                c cVar = cVarArr[i6];
                if (cVar != null) {
                    ((m0.c) fVar.f38b).b(cVar);
                }
                this.f10288e[i6] = null;
                i6++;
            }
        } else {
            while (true) {
                c[] cVarArr2 = this.f10288e;
                if (i6 >= cVarArr2.length) {
                    return;
                }
                c cVar2 = cVarArr2[i6];
                if (cVar2 != null) {
                    ((m0.c) fVar.f39c).b(cVar2);
                }
                this.f10288e[i6] = null;
                i6++;
            }
        }
    }

    public final void r() {
        a0.f fVar;
        int i6 = 0;
        while (true) {
            fVar = this.f10293k;
            i[] iVarArr = (i[]) fVar.f40e;
            if (i6 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i6];
            if (iVar != null) {
                iVar.c();
            }
            i6++;
        }
        m0.c cVar = (m0.c) fVar.d;
        i[] iVarArr2 = this.f10294l;
        int length = this.f10295m;
        cVar.getClass();
        if (length > iVarArr2.length) {
            length = iVarArr2.length;
        }
        for (int i10 = 0; i10 < length; i10++) {
            i iVar2 = iVarArr2[i10];
            int i11 = cVar.f8115c;
            Object[] objArr = cVar.f8114b;
            if (i11 < objArr.length) {
                objArr[i11] = iVar2;
                cVar.f8115c = i11 + 1;
            }
        }
        this.f10295m = 0;
        Arrays.fill((i[]) fVar.f40e, (Object) null);
        this.f10285a = 0;
        g gVar = this.f10286b;
        gVar.f10300h = 0;
        gVar.f10280b = 0.0f;
        this.f10290h = 1;
        for (int i12 = 0; i12 < this.f10291i; i12++) {
            this.f10288e[i12].getClass();
        }
        q();
        this.f10291i = 0;
        if (f10284p) {
            this.f10296n = new d(fVar);
        } else {
            this.f10296n = new c(fVar);
        }
    }
}
