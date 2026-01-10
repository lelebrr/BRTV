package androidx.leanback.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k1 {

    /* renamed from: c, reason: collision with root package name */
    public int f1850c;
    public int d;

    /* renamed from: i, reason: collision with root package name */
    public int f1854i;

    /* renamed from: j, reason: collision with root package name */
    public int f1855j;

    /* renamed from: k, reason: collision with root package name */
    public int f1856k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1857l;

    /* renamed from: e, reason: collision with root package name */
    public int f1851e = 2;
    public int f = 3;

    /* renamed from: g, reason: collision with root package name */
    public int f1852g = 0;

    /* renamed from: h, reason: collision with root package name */
    public float f1853h = 50.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f1849b = Integer.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public int f1848a = Integer.MAX_VALUE;

    public final int a() {
        if (this.f1857l) {
            int i6 = this.f1852g;
            int i10 = i6 >= 0 ? this.f1854i - i6 : -i6;
            float f = this.f1853h;
            return f != -1.0f ? i10 - ((int) ((this.f1854i * f) / 100.0f)) : i10;
        }
        int i11 = this.f1852g;
        if (i11 < 0) {
            i11 += this.f1854i;
        }
        float f3 = this.f1853h;
        return f3 != -1.0f ? i11 + ((int) ((this.f1854i * f3) / 100.0f)) : i11;
    }

    public final int b(int i6) {
        int i10;
        int i11;
        int i12 = this.f1854i;
        int iA = a();
        int i13 = this.f1849b;
        boolean z7 = i13 == Integer.MIN_VALUE;
        int i14 = this.f1848a;
        boolean z10 = i14 == Integer.MAX_VALUE;
        if (!z7) {
            int i15 = this.f1855j;
            int i16 = iA - i15;
            if (this.f1857l ? (this.f & 2) != 0 : (this.f & 1) != 0) {
                if (i6 - i13 <= i16) {
                    int i17 = i13 - i15;
                    return (z10 || i17 <= (i11 = this.f1850c)) ? i17 : i11;
                }
            }
        }
        if (!z10) {
            int i18 = this.f1856k;
            int i19 = (i12 - iA) - i18;
            if (this.f1857l ? (1 & this.f) != 0 : (this.f & 2) != 0) {
                if (i14 - i6 <= i19) {
                    int i20 = i14 - (i12 - i18);
                    return (z7 || i20 >= (i10 = this.d)) ? i20 : i10;
                }
            }
        }
        return i6 - iA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r6.d = r0 - r6.f1855j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
    
        r6.f1850c = (r4 - r6.f1855j) - r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(int r7, int r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.k1.c(int, int, int, int):void");
    }

    public final String toString() {
        return " min:" + this.f1849b + " " + this.d + " max:" + this.f1848a + " " + this.f1850c;
    }
}
