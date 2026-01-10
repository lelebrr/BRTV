package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2859a;

    /* renamed from: b, reason: collision with root package name */
    public int f2860b;

    /* renamed from: c, reason: collision with root package name */
    public int f2861c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public Interpolator f2862e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f2863g;

    public final void a(RecyclerView recyclerView) {
        int i6 = this.d;
        if (i6 >= 0) {
            this.d = -1;
            recyclerView.jumpToPositionForSmoothScroller(i6);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.f2863g = 0;
            return;
        }
        Interpolator interpolator = this.f2862e;
        if (interpolator != null && this.f2861c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i10 = this.f2861c;
        if (i10 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.mViewFlinger.c(this.f2859a, this.f2860b, interpolator, i10);
        int i11 = this.f2863g + 1;
        this.f2863g = i11;
        if (i11 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }

    public final void b(int i6, int i10, Interpolator interpolator, int i11) {
        this.f2859a = i6;
        this.f2860b = i10;
        this.f2861c = i11;
        this.f2862e = interpolator;
        this.f = true;
    }
}
