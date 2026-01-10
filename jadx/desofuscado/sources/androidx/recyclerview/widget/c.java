package androidx.recyclerview.widget;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements w5.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2807a;

    /* renamed from: b, reason: collision with root package name */
    public long f2808b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2809c;

    public /* synthetic */ c(a1.b bVar, long j10) {
        this.f2807a = 1;
        this.f2809c = bVar;
        this.f2808b = j10;
    }

    @Override // w5.b
    public void a(Exception exc) {
        int i6 = exc instanceof y4.e ? ((y4.e) exc).f11392a.f3925a : 13;
        Iterator it = ((r4.f) ((a1.b) this.f2809c).d).f9544c.d.iterator();
        while (it.hasNext()) {
            ((v4.n) it.next()).b(this.f2808b, i6, null);
        }
    }

    public void b(int i6) {
        if (i6 < 64) {
            this.f2808b &= ~(1 << i6);
            return;
        }
        c cVar = (c) this.f2809c;
        if (cVar != null) {
            cVar.b(i6 - 64);
        }
    }

    public int c(int i6) {
        c cVar = (c) this.f2809c;
        if (cVar == null) {
            return i6 >= 64 ? Long.bitCount(this.f2808b) : Long.bitCount(this.f2808b & ((1 << i6) - 1));
        }
        if (i6 < 64) {
            return Long.bitCount(this.f2808b & ((1 << i6) - 1));
        }
        return Long.bitCount(this.f2808b) + cVar.c(i6 - 64);
    }

    public void d() {
        if (((c) this.f2809c) == null) {
            this.f2809c = new c();
        }
    }

    public boolean e(int i6) {
        if (i6 < 64) {
            return (this.f2808b & (1 << i6)) != 0;
        }
        d();
        return ((c) this.f2809c).e(i6 - 64);
    }

    public void f(int i6, boolean z7) {
        if (i6 >= 64) {
            d();
            ((c) this.f2809c).f(i6 - 64, z7);
            return;
        }
        long j10 = this.f2808b;
        boolean z10 = (Long.MIN_VALUE & j10) != 0;
        long j11 = (1 << i6) - 1;
        this.f2808b = ((j10 & (~j11)) << 1) | (j10 & j11);
        if (z7) {
            i(i6);
        } else {
            b(i6);
        }
        if (z10 || ((c) this.f2809c) != null) {
            d();
            ((c) this.f2809c).f(0, z10);
        }
    }

    public boolean g(int i6) {
        if (i6 >= 64) {
            d();
            return ((c) this.f2809c).g(i6 - 64);
        }
        long j10 = 1 << i6;
        long j11 = this.f2808b;
        boolean z7 = (j11 & j10) != 0;
        long j12 = j11 & (~j10);
        this.f2808b = j12;
        long j13 = j10 - 1;
        this.f2808b = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
        c cVar = (c) this.f2809c;
        if (cVar != null) {
            if (cVar.e(0)) {
                i(63);
            }
            ((c) this.f2809c).g(0);
        }
        return z7;
    }

    public void h() {
        this.f2808b = 0L;
        c cVar = (c) this.f2809c;
        if (cVar != null) {
            cVar.h();
        }
    }

    public void i(int i6) {
        if (i6 < 64) {
            this.f2808b |= 1 << i6;
        } else {
            d();
            ((c) this.f2809c).i(i6 - 64);
        }
    }

    public String toString() {
        switch (this.f2807a) {
            case 0:
                if (((c) this.f2809c) == null) {
                    return Long.toBinaryString(this.f2808b);
                }
                return ((c) this.f2809c).toString() + "xx" + Long.toBinaryString(this.f2808b);
            default:
                return super.toString();
        }
    }

    public c() {
        this.f2807a = 0;
        this.f2808b = 0L;
    }
}
