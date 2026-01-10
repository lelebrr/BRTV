package androidx.leanback.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e1 extends p {

    /* renamed from: j, reason: collision with root package name */
    public p.g f1825j;

    /* renamed from: k, reason: collision with root package name */
    public int f1826k;

    /* renamed from: l, reason: collision with root package name */
    public Object f1827l;

    /* renamed from: m, reason: collision with root package name */
    public int f1828m;

    @Override // androidx.leanback.widget.p
    public final boolean b(int i6, boolean z7) {
        Object[] objArr = this.f1869a;
        if (this.f1870b.c() == 0) {
            return false;
        }
        if (!z7 && c(i6)) {
            return false;
        }
        try {
            if (!o(i6, z7)) {
                return q(i6, z7);
            }
            objArr[0] = null;
            this.f1827l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f1827l = null;
        }
    }

    @Override // androidx.leanback.widget.p
    public final int f(int i6, boolean z7, int[] iArr) {
        int i10;
        int iD = this.f1870b.d(i6);
        d1 d1VarK = k(i6);
        int i11 = d1VarK.f1866a;
        if (this.f1871c) {
            i10 = i11;
            int i12 = i10;
            int i13 = 1;
            int i14 = iD;
            for (int i15 = i6 + 1; i13 < this.f1872e && i15 <= this.f1873g; i15++) {
                d1 d1VarK2 = k(i15);
                i14 += d1VarK2.f1823b;
                int i16 = d1VarK2.f1866a;
                if (i16 != i12) {
                    i13++;
                    if (!z7 ? i14 >= iD : i14 <= iD) {
                        i12 = i16;
                    } else {
                        iD = i14;
                        i6 = i15;
                        i10 = i16;
                        i12 = i10;
                    }
                }
            }
        } else {
            int i17 = 1;
            int i18 = i11;
            d1 d1VarK3 = d1VarK;
            int i19 = iD;
            iD = this.f1870b.e(i6) + iD;
            i10 = i18;
            for (int i20 = i6 - 1; i17 < this.f1872e && i20 >= this.f; i20--) {
                i19 -= d1VarK3.f1823b;
                d1VarK3 = k(i20);
                int i21 = d1VarK3.f1866a;
                if (i21 != i18) {
                    i17++;
                    int iE = this.f1870b.e(i20) + i19;
                    if (!z7 ? iE >= iD : iE <= iD) {
                        i18 = i21;
                    } else {
                        iD = iE;
                        i6 = i20;
                        i10 = i21;
                        i18 = i10;
                    }
                }
            }
        }
        if (iArr != null) {
            iArr[0] = i10;
            iArr[1] = i6;
        }
        return iD;
    }

    @Override // androidx.leanback.widget.p
    public final int h(int i6, boolean z7, int[] iArr) {
        int iE;
        int iD = this.f1870b.d(i6);
        d1 d1VarK = k(i6);
        int i10 = d1VarK.f1866a;
        if (this.f1871c) {
            int i11 = 1;
            iE = iD - this.f1870b.e(i6);
            int i12 = i10;
            for (int i13 = i6 - 1; i11 < this.f1872e && i13 >= this.f; i13--) {
                iD -= d1VarK.f1823b;
                d1VarK = k(i13);
                int i14 = d1VarK.f1866a;
                if (i14 != i12) {
                    i11++;
                    int iE2 = iD - this.f1870b.e(i13);
                    if (!z7 ? iE2 >= iE : iE2 <= iE) {
                        i12 = i14;
                    } else {
                        iE = iE2;
                        i6 = i13;
                        i10 = i14;
                        i12 = i10;
                    }
                }
            }
        } else {
            int i15 = i10;
            int i16 = i15;
            int i17 = 1;
            int i18 = iD;
            for (int i19 = i6 + 1; i17 < this.f1872e && i19 <= this.f1873g; i19++) {
                d1 d1VarK2 = k(i19);
                i18 += d1VarK2.f1823b;
                int i20 = d1VarK2.f1866a;
                if (i20 != i16) {
                    i17++;
                    if (!z7 ? i18 >= iD : i18 <= iD) {
                        i16 = i20;
                    } else {
                        iD = i18;
                        i6 = i19;
                        i15 = i20;
                        i16 = i15;
                    }
                }
            }
            iE = iD;
            i10 = i15;
        }
        if (iArr != null) {
            iArr[0] = i10;
            iArr[1] = i6;
        }
        return iE;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    @Override // androidx.leanback.widget.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final p.h[] j(int r8, int r9) {
        /*
            r7 = this;
            r0 = 0
        L1:
            int r1 = r7.f1872e
            if (r0 >= r1) goto L10
            p.h[] r1 = r7.f1874h
            r1 = r1[r0]
            int r2 = r1.f8845b
            r1.f8846c = r2
            int r0 = r0 + 1
            goto L1
        L10:
            if (r8 < 0) goto L5a
        L12:
            if (r8 > r9) goto L5a
            p.h[] r0 = r7.f1874h
            androidx.leanback.widget.d1 r1 = r7.k(r8)
            int r1 = r1.f1866a
            r0 = r0[r1]
            int r1 = r0.c()
            if (r1 <= 0) goto L51
            int r1 = r0.f8845b
            int r2 = r0.f8846c
            if (r1 == r2) goto L4b
            int[] r3 = r0.f8844a
            int r4 = r2 + (-1)
            int r5 = r0.d
            r4 = r4 & r5
            r4 = r3[r4]
            int r6 = r8 + (-1)
            if (r4 != r6) goto L51
            if (r1 == r2) goto L45
            int r2 = r2 + (-1)
            r1 = r2 & r5
            r2 = r3[r1]
            r0.f8846c = r1
            r0.a(r8)
            goto L57
        L45:
            java.lang.ArrayIndexOutOfBoundsException r8 = new java.lang.ArrayIndexOutOfBoundsException
            r8.<init>()
            throw r8
        L4b:
            java.lang.ArrayIndexOutOfBoundsException r8 = new java.lang.ArrayIndexOutOfBoundsException
            r8.<init>()
            throw r8
        L51:
            r0.a(r8)
            r0.a(r8)
        L57:
            int r8 = r8 + 1
            goto L12
        L5a:
            p.h[] r8 = r7.f1874h
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.e1.j(int, int):p.h[]");
    }

    @Override // androidx.leanback.widget.p
    public final void l(int i6) {
        super.l(i6);
        int iS = (s() - i6) + 1;
        p.g gVar = this.f1825j;
        gVar.d(iS);
        if (gVar.f() == 0) {
            this.f1826k = -1;
        }
    }

    @Override // androidx.leanback.widget.p
    public final boolean m(int i6, boolean z7) {
        Object[] objArr = this.f1869a;
        if (this.f1870b.c() == 0) {
            return false;
        }
        if (!z7 && d(i6)) {
            return false;
        }
        try {
            if (!w(i6, z7)) {
                return y(i6, z7);
            }
            objArr[0] = null;
            this.f1827l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f1827l = null;
        }
    }

    public final boolean o(int i6, boolean z7) {
        int i10;
        int iD;
        int i11;
        p.g gVar = this.f1825j;
        if (gVar.f() == 0) {
            return false;
        }
        int iC = this.f1870b.c();
        int i12 = this.f1873g;
        if (i12 >= 0) {
            i10 = i12 + 1;
            iD = this.f1870b.d(i12);
        } else {
            int i13 = this.f1875i;
            i10 = i13 != -1 ? i13 : 0;
            if (i10 > s() + 1 || i10 < this.f1826k) {
                gVar.e(gVar.f());
                return false;
            }
            if (i10 > s()) {
                return false;
            }
            iD = Integer.MAX_VALUE;
        }
        int iS = s();
        int i14 = i10;
        while (i14 < iC && i14 <= iS) {
            d1 d1VarK = k(i14);
            if (iD != Integer.MAX_VALUE) {
                iD += d1VarK.f1823b;
            }
            int i15 = d1VarK.f1866a;
            q qVar = this.f1870b;
            Object[] objArr = this.f1869a;
            int iB = qVar.b(i14, true, objArr, false);
            if (iB != d1VarK.f1824c) {
                d1VarK.f1824c = iB;
                gVar.d(iS - i14);
                i11 = i14;
            } else {
                i11 = iS;
            }
            this.f1873g = i14;
            if (this.f < 0) {
                this.f = i14;
            }
            this.f1870b.a(objArr[0], i14, iB, i15, iD);
            if (!z7 && c(i6)) {
                return true;
            }
            if (iD == Integer.MAX_VALUE) {
                iD = this.f1870b.d(i14);
            }
            if (i15 == this.f1872e - 1 && z7) {
                return true;
            }
            i14++;
            iS = i11;
        }
        return false;
    }

    public final int p(int i6, int i10, int i11) {
        int iD;
        int i12 = this.f1873g;
        if (i12 >= 0 && (i12 != s() || this.f1873g != i6 - 1)) {
            throw new IllegalStateException();
        }
        int i13 = this.f1873g;
        p.g gVar = this.f1825j;
        if (i13 >= 0) {
            iD = i11 - this.f1870b.d(i13);
        } else if (gVar.f() <= 0 || i6 != s() + 1) {
            iD = 0;
        } else {
            int iS = s();
            while (true) {
                if (iS < this.f1826k) {
                    iS = s();
                    break;
                }
                if (k(iS).f1866a == i10) {
                    break;
                }
                iS--;
            }
            iD = this.f1871c ? (-k(iS).f1824c) - this.d : k(iS).f1824c + this.d;
            for (int i14 = iS + 1; i14 <= s(); i14++) {
                iD -= k(i14).f1823b;
            }
        }
        d1 d1Var = new d1(i10, iD);
        Object[] objArr = gVar.d;
        int i15 = gVar.f8842b;
        objArr[i15] = d1Var;
        int i16 = gVar.f8843c & (i15 + 1);
        gVar.f8842b = i16;
        if (i16 == gVar.f8841a) {
            gVar.b();
        }
        Object obj = this.f1827l;
        if (obj != null) {
            d1Var.f1824c = this.f1828m;
            this.f1827l = null;
        } else {
            q qVar = this.f1870b;
            Object[] objArr2 = this.f1869a;
            d1Var.f1824c = qVar.b(i6, true, objArr2, false);
            obj = objArr2[0];
        }
        Object obj2 = obj;
        if (gVar.f() == 1) {
            this.f1873g = i6;
            this.f = i6;
            this.f1826k = i6;
        } else {
            int i17 = this.f1873g;
            if (i17 < 0) {
                this.f1873g = i6;
                this.f = i6;
            } else {
                this.f1873g = i17 + 1;
            }
        }
        this.f1870b.a(obj2, i6, d1Var.f1824c, i10, i11);
        return d1Var.f1824c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0137, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0138, code lost:
    
        r6 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x014f, code lost:
    
        return r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0108 A[LOOP:2: B:88:0x0108->B:104:0x012c, LOOP_START, PHI: r6 r9 r10
  0x0108: PHI (r6v13 int) = (r6v6 int), (r6v18 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x0108: PHI (r9v20 int) = (r9v18 int), (r9v21 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]
  0x0108: PHI (r10v6 int) = (r10v5 int), (r10v8 int) binds: [B:87:0x0106, B:104:0x012c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean q(int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.e1.q(int, boolean):boolean");
    }

    public final int r(boolean z7) {
        boolean z10 = false;
        if (z7) {
            for (int i6 = this.f1873g; i6 >= this.f; i6--) {
                int i10 = k(i6).f1866a;
                if (i10 == 0) {
                    z10 = true;
                } else if (z10 && i10 == this.f1872e - 1) {
                    return i6;
                }
            }
            return -1;
        }
        for (int i11 = this.f; i11 <= this.f1873g; i11++) {
            int i12 = k(i11).f1866a;
            if (i12 == this.f1872e - 1) {
                z10 = true;
            } else if (z10 && i12 == 0) {
                return i11;
            }
        }
        return -1;
    }

    public final int s() {
        return (this.f1825j.f() + this.f1826k) - 1;
    }

    @Override // androidx.leanback.widget.p
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final d1 k(int i6) {
        int i10 = i6 - this.f1826k;
        if (i10 < 0) {
            return null;
        }
        p.g gVar = this.f1825j;
        if (i10 >= gVar.f()) {
            return null;
        }
        if (i10 < 0) {
            gVar.getClass();
        } else if (i10 < gVar.f()) {
            Object obj = gVar.d[gVar.f8843c & (gVar.f8841a + i10)];
            j9.i.c(obj);
            return (d1) obj;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public final int u(int i6) {
        int i10;
        d1 d1VarK;
        int i11 = this.f;
        if (i11 < 0) {
            return Integer.MIN_VALUE;
        }
        if (this.f1871c) {
            int iD = this.f1870b.d(i11);
            if (k(this.f).f1866a == i6) {
                return iD;
            }
            int i12 = this.f;
            do {
                i12++;
                if (i12 <= s()) {
                    d1VarK = k(i12);
                    iD += d1VarK.f1823b;
                }
            } while (d1VarK.f1866a != i6);
            return iD;
        }
        int iD2 = this.f1870b.d(this.f1873g);
        d1 d1VarK2 = k(this.f1873g);
        if (d1VarK2.f1866a == i6) {
            i10 = d1VarK2.f1824c;
        } else {
            int i13 = this.f1873g;
            do {
                i13--;
                if (i13 >= this.f1826k) {
                    iD2 -= d1VarK2.f1823b;
                    d1VarK2 = k(i13);
                }
            } while (d1VarK2.f1866a != i6);
            i10 = d1VarK2.f1824c;
        }
        return iD2 + i10;
        return Integer.MIN_VALUE;
    }

    public final int v(int i6) {
        d1 d1VarK;
        int i10;
        int i11 = this.f;
        if (i11 < 0) {
            return Integer.MAX_VALUE;
        }
        if (!this.f1871c) {
            int iD = this.f1870b.d(i11);
            if (k(this.f).f1866a == i6) {
                return iD;
            }
            int i12 = this.f;
            do {
                i12++;
                if (i12 <= s()) {
                    d1VarK = k(i12);
                    iD += d1VarK.f1823b;
                }
            } while (d1VarK.f1866a != i6);
            return iD;
        }
        int iD2 = this.f1870b.d(this.f1873g);
        d1 d1VarK2 = k(this.f1873g);
        if (d1VarK2.f1866a == i6) {
            i10 = d1VarK2.f1824c;
        } else {
            int i13 = this.f1873g;
            do {
                i13--;
                if (i13 >= this.f1826k) {
                    iD2 -= d1VarK2.f1823b;
                    d1VarK2 = k(i13);
                }
            } while (d1VarK2.f1866a != i6);
            i10 = d1VarK2.f1824c;
        }
        return iD2 - i10;
        return Integer.MAX_VALUE;
    }

    public final boolean w(int i6, boolean z7) {
        int i10;
        int iD;
        int i11;
        p.g gVar = this.f1825j;
        if (gVar.f() == 0) {
            return false;
        }
        int i12 = this.f;
        if (i12 < 0) {
            int i13 = this.f1875i;
            i10 = i13 != -1 ? i13 : 0;
            if (i10 <= s()) {
                int i14 = this.f1826k;
                if (i10 >= i14 - 1) {
                    if (i10 < i14) {
                        return false;
                    }
                    iD = Integer.MAX_VALUE;
                    i11 = 0;
                }
            }
            gVar.e(gVar.f());
            return false;
        }
        iD = this.f1870b.d(i12);
        i11 = k(this.f).f1823b;
        i10 = this.f - 1;
        int iMax = Math.max(((GridLayoutManager) this.f1870b.f1913a).f1631h, this.f1826k);
        while (i10 >= iMax) {
            d1 d1VarK = k(i10);
            int i15 = d1VarK.f1866a;
            q qVar = this.f1870b;
            Object[] objArr = this.f1869a;
            int iB = qVar.b(i10, false, objArr, false);
            if (iB != d1VarK.f1824c) {
                gVar.e((i10 + 1) - this.f1826k);
                this.f1826k = this.f;
                this.f1827l = objArr[0];
                this.f1828m = iB;
                return false;
            }
            this.f = i10;
            if (this.f1873g < 0) {
                this.f1873g = i10;
            }
            this.f1870b.a(objArr[0], i10, iB, i15, iD - i11);
            if (!z7 && d(i6)) {
                return true;
            }
            iD = this.f1870b.d(i10);
            i11 = d1VarK.f1823b;
            if (i15 == 0 && z7) {
                return true;
            }
            i10--;
        }
        return false;
    }

    public final int x(int i6, int i10, int i11) {
        int i12 = this.f;
        if (i12 >= 0 && (i12 != this.f1826k || i12 != i6 + 1)) {
            throw new IllegalStateException();
        }
        int i13 = this.f1826k;
        d1 d1VarK = i13 >= 0 ? k(i13) : null;
        int iD = this.f1870b.d(this.f1826k);
        d1 d1Var = new d1(i10, 0);
        p.g gVar = this.f1825j;
        int i14 = (gVar.f8841a - 1) & gVar.f8843c;
        gVar.f8841a = i14;
        gVar.d[i14] = d1Var;
        if (i14 == gVar.f8842b) {
            gVar.b();
        }
        Object obj = this.f1827l;
        if (obj != null) {
            d1Var.f1824c = this.f1828m;
            this.f1827l = null;
        } else {
            q qVar = this.f1870b;
            Object[] objArr = this.f1869a;
            d1Var.f1824c = qVar.b(i6, false, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        this.f = i6;
        this.f1826k = i6;
        if (this.f1873g < 0) {
            this.f1873g = i6;
        }
        int i15 = !this.f1871c ? i11 - d1Var.f1824c : i11 + d1Var.f1824c;
        if (d1VarK != null) {
            d1VarK.f1823b = iD - i15;
        }
        this.f1870b.a(obj2, i6, d1Var.f1824c, i10, i15);
        return d1Var.f1824c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x012c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x012d, code lost:
    
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0144, code lost:
    
        return r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00fd A[LOOP:2: B:86:0x00fd->B:102:0x0121, LOOP_START, PHI: r5 r8 r9
  0x00fd: PHI (r5v13 int) = (r5v6 int), (r5v19 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]
  0x00fd: PHI (r8v19 int) = (r8v17 int), (r8v20 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]
  0x00fd: PHI (r9v7 int) = (r9v6 int), (r9v9 int) binds: [B:85:0x00fb, B:102:0x0121] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean y(int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.e1.y(int, boolean):boolean");
    }
}
