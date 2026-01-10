package androidx.recyclerview.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public d0 f2968a;

    /* renamed from: b, reason: collision with root package name */
    public int f2969b;

    /* renamed from: c, reason: collision with root package name */
    public int f2970c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2971e;

    public w() {
        d();
    }

    public final void a() {
        this.f2970c = this.d ? this.f2968a.g() : this.f2968a.k();
    }

    public final void b(int i6, View view) {
        if (this.d) {
            this.f2970c = this.f2968a.m() + this.f2968a.b(view);
        } else {
            this.f2970c = this.f2968a.e(view);
        }
        this.f2969b = i6;
    }

    public final void c(int i6, View view) {
        int iM = this.f2968a.m();
        if (iM >= 0) {
            b(i6, view);
            return;
        }
        this.f2969b = i6;
        if (!this.d) {
            int iE = this.f2968a.e(view);
            int iK = iE - this.f2968a.k();
            this.f2970c = iE;
            if (iK > 0) {
                int iG = (this.f2968a.g() - Math.min(0, (this.f2968a.g() - iM) - this.f2968a.b(view))) - (this.f2968a.c(view) + iE);
                if (iG < 0) {
                    this.f2970c -= Math.min(iK, -iG);
                    return;
                }
                return;
            }
            return;
        }
        int iG2 = (this.f2968a.g() - iM) - this.f2968a.b(view);
        this.f2970c = this.f2968a.g() - iG2;
        if (iG2 > 0) {
            int iC = this.f2970c - this.f2968a.c(view);
            int iK2 = this.f2968a.k();
            int iMin = iC - (Math.min(this.f2968a.e(view) - iK2, 0) + iK2);
            if (iMin < 0) {
                this.f2970c = Math.min(iG2, -iMin) + this.f2970c;
            }
        }
    }

    public final void d() {
        this.f2969b = -1;
        this.f2970c = Integer.MIN_VALUE;
        this.d = false;
        this.f2971e = false;
    }

    public final String toString() {
        return "AnchorInfo{mPosition=" + this.f2969b + ", mCoordinate=" + this.f2970c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.f2971e + '}';
    }
}
