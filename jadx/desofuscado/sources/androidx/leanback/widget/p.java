package androidx.leanback.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: b, reason: collision with root package name */
    public q f1870b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1871c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f1872e;

    /* renamed from: h, reason: collision with root package name */
    public p.h[] f1874h;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f1869a = new Object[1];
    public int f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f1873g = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f1875i = -1;

    public final boolean a() {
        return b(this.f1871c ? Integer.MAX_VALUE : Integer.MIN_VALUE, true);
    }

    public abstract boolean b(int i6, boolean z7);

    public final boolean c(int i6) {
        if (this.f1873g < 0) {
            return false;
        }
        if (this.f1871c) {
            if (i(true, null) > i6 + this.d) {
                return false;
            }
        } else if (g(false, null) < i6 - this.d) {
            return false;
        }
        return true;
    }

    public final boolean d(int i6) {
        if (this.f1873g < 0) {
            return false;
        }
        if (this.f1871c) {
            if (g(false, null) < i6 - this.d) {
                return false;
            }
        } else if (i(true, null) > i6 + this.d) {
            return false;
        }
        return true;
    }

    public abstract int f(int i6, boolean z7, int[] iArr);

    public final int g(boolean z7, int[] iArr) {
        return f(this.f1871c ? this.f : this.f1873g, z7, iArr);
    }

    public abstract int h(int i6, boolean z7, int[] iArr);

    public final int i(boolean z7, int[] iArr) {
        return h(this.f1871c ? this.f1873g : this.f, z7, iArr);
    }

    public abstract p.h[] j(int i6, int i10);

    public abstract o k(int i6);

    public void l(int i6) {
        int i10;
        if (i6 >= 0 && (i10 = this.f1873g) >= 0) {
            if (i10 >= i6) {
                this.f1873g = i6 - 1;
            }
            if (this.f1873g < this.f) {
                this.f1873g = -1;
                this.f = -1;
            }
            if (this.f < 0) {
                this.f1875i = i6;
            }
        }
    }

    public abstract boolean m(int i6, boolean z7);

    public final void n(int i6) {
        if (i6 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this.f1872e == i6) {
            return;
        }
        this.f1872e = i6;
        this.f1874h = new p.h[i6];
        for (int i10 = 0; i10 < this.f1872e; i10++) {
            this.f1874h[i10] = new p.h();
        }
    }

    public void e(int i6, int i10, androidx.recyclerview.widget.r rVar) {
    }
}
