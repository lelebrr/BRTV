package androidx.leanback.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b1 extends p {

    /* renamed from: j, reason: collision with root package name */
    public final o f1813j = new o(0);

    public b1() {
        n(1);
    }

    @Override // androidx.leanback.widget.p
    public final boolean b(int i6, boolean z7) {
        int iMin;
        int iE;
        if (this.f1870b.c() == 0) {
            return false;
        }
        if (!z7 && c(i6)) {
            return false;
        }
        int i10 = this.f1873g;
        if (i10 >= 0) {
            iMin = i10 + 1;
        } else {
            int i11 = this.f1875i;
            iMin = i11 != -1 ? Math.min(i11, this.f1870b.c() - 1) : 0;
        }
        boolean z10 = false;
        while (iMin < this.f1870b.c()) {
            q qVar = this.f1870b;
            Object[] objArr = this.f1869a;
            int iB = qVar.b(iMin, true, objArr, false);
            if (this.f < 0 || this.f1873g < 0) {
                iE = this.f1871c ? Integer.MAX_VALUE : Integer.MIN_VALUE;
                this.f = iMin;
                this.f1873g = iMin;
            } else {
                if (this.f1871c) {
                    int i12 = iMin - 1;
                    iE = (this.f1870b.d(i12) - this.f1870b.e(i12)) - this.d;
                } else {
                    int i13 = iMin - 1;
                    iE = this.d + this.f1870b.e(i13) + this.f1870b.d(i13);
                }
                this.f1873g = iMin;
            }
            this.f1870b.a(objArr[0], iMin, iB, 0, iE);
            if (z7 || c(i6)) {
                return true;
            }
            iMin++;
            z10 = true;
        }
        return z10;
    }

    @Override // androidx.leanback.widget.p
    public final void e(int i6, int i10, androidx.recyclerview.widget.r rVar) {
        int iO;
        int iD;
        if (!this.f1871c ? i10 < 0 : i10 > 0) {
            if (this.f1873g == this.f1870b.c() - 1) {
                return;
            }
            int i11 = this.f1873g;
            if (i11 >= 0) {
                iO = i11 + 1;
            } else {
                int i12 = this.f1875i;
                iO = i12 != -1 ? Math.min(i12, this.f1870b.c() - 1) : 0;
            }
            int iE = this.f1870b.e(this.f1873g) + this.d;
            int iD2 = this.f1870b.d(this.f1873g);
            if (this.f1871c) {
                iE = -iE;
            }
            iD = iE + iD2;
        } else {
            if (this.f == 0) {
                return;
            }
            iO = o();
            iD = this.f1870b.d(this.f) + (this.f1871c ? this.d : -this.d);
        }
        rVar.a(iO, Math.abs(iD - i6));
    }

    @Override // androidx.leanback.widget.p
    public final int f(int i6, boolean z7, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i6;
        }
        if (this.f1871c) {
            return this.f1870b.d(i6);
        }
        return this.f1870b.e(i6) + this.f1870b.d(i6);
    }

    @Override // androidx.leanback.widget.p
    public final int h(int i6, boolean z7, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i6;
        }
        return this.f1871c ? this.f1870b.d(i6) - this.f1870b.e(i6) : this.f1870b.d(i6);
    }

    @Override // androidx.leanback.widget.p
    public final p.h[] j(int i6, int i10) {
        p.h hVar = this.f1874h[0];
        hVar.f8846c = hVar.f8845b;
        hVar.a(i6);
        this.f1874h[0].a(i10);
        return this.f1874h;
    }

    @Override // androidx.leanback.widget.p
    public final o k(int i6) {
        return this.f1813j;
    }

    @Override // androidx.leanback.widget.p
    public final boolean m(int i6, boolean z7) {
        int iD;
        if (this.f1870b.c() == 0) {
            return false;
        }
        if (!z7 && d(i6)) {
            return false;
        }
        int i10 = ((GridLayoutManager) this.f1870b.f1913a).f1631h;
        boolean z10 = false;
        for (int iO = o(); iO >= i10; iO--) {
            q qVar = this.f1870b;
            Object[] objArr = this.f1869a;
            int iB = qVar.b(iO, false, objArr, false);
            if (this.f < 0 || this.f1873g < 0) {
                iD = this.f1871c ? Integer.MIN_VALUE : Integer.MAX_VALUE;
                this.f = iO;
                this.f1873g = iO;
            } else {
                iD = this.f1871c ? this.f1870b.d(iO + 1) + this.d + iB : (this.f1870b.d(iO + 1) - this.d) - iB;
                this.f = iO;
            }
            this.f1870b.a(objArr[0], iO, iB, 0, iD);
            z10 = true;
            if (z7 || d(i6)) {
                break;
            }
        }
        return z10;
    }

    public final int o() {
        int i6 = this.f;
        if (i6 >= 0) {
            return i6 - 1;
        }
        int i10 = this.f1875i;
        return i10 != -1 ? Math.min(i10, this.f1870b.c() - 1) : this.f1870b.c() - 1;
    }
}
