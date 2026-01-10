package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y1 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2987a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public int f2988b = Integer.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public int f2989c = Integer.MIN_VALUE;
    public int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final int f2990e;
    public final /* synthetic */ StaggeredGridLayoutManager f;

    public y1(StaggeredGridLayoutManager staggeredGridLayoutManager, int i6) {
        this.f = staggeredGridLayoutManager;
        this.f2990e = i6;
    }

    public final void a(View view) {
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        layoutParams.f2786e = this;
        ArrayList arrayList = this.f2987a;
        arrayList.add(view);
        this.f2989c = Integer.MIN_VALUE;
        if (arrayList.size() == 1) {
            this.f2988b = Integer.MIN_VALUE;
        }
        if (layoutParams.f2760a.isRemoved() || layoutParams.f2760a.isUpdated()) {
            this.d = this.f.f2766c.c(view) + this.d;
        }
    }

    public final void b() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF;
        View view = (View) ea.q.e(1, this.f2987a);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        this.f2989c = staggeredGridLayoutManager.f2766c.b(view);
        if (layoutParams.f && (staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF = staggeredGridLayoutManager.f2774m.f(layoutParams.f2760a.getLayoutPosition())) != null && staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF.f2788b == 1) {
            int i6 = this.f2989c;
            int[] iArr = staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF.f2789c;
            this.f2989c = i6 + (iArr == null ? 0 : iArr[this.f2990e]);
        }
    }

    public final void c() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF;
        View view = (View) this.f2987a.get(0);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        this.f2988b = staggeredGridLayoutManager.f2766c.e(view);
        if (layoutParams.f && (staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF = staggeredGridLayoutManager.f2774m.f(layoutParams.f2760a.getLayoutPosition())) != null && staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF.f2788b == -1) {
            int i6 = this.f2988b;
            int[] iArr = staggeredGridLayoutManager$LazySpanLookup$FullSpanItemF.f2789c;
            this.f2988b = i6 - (iArr != null ? iArr[this.f2990e] : 0);
        }
    }

    public final void d() {
        this.f2987a.clear();
        this.f2988b = Integer.MIN_VALUE;
        this.f2989c = Integer.MIN_VALUE;
        this.d = 0;
    }

    public final int e() {
        return this.f.f2769h ? g(r1.size() - 1, -1) : g(0, this.f2987a.size());
    }

    public final int f() {
        return this.f.f2769h ? g(0, this.f2987a.size()) : g(r1.size() - 1, -1);
    }

    public final int g(int i6, int i10) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        int iK = staggeredGridLayoutManager.f2766c.k();
        int iG = staggeredGridLayoutManager.f2766c.g();
        int i11 = i10 > i6 ? 1 : -1;
        while (i6 != i10) {
            View view = (View) this.f2987a.get(i6);
            int iE = staggeredGridLayoutManager.f2766c.e(view);
            int iB = staggeredGridLayoutManager.f2766c.b(view);
            boolean z7 = iE <= iG;
            boolean z10 = iB >= iK;
            if (z7 && z10 && (iE < iK || iB > iG)) {
                return staggeredGridLayoutManager.getPosition(view);
            }
            i6 += i11;
        }
        return -1;
    }

    public final int h(int i6) {
        int i10 = this.f2989c;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        if (this.f2987a.size() == 0) {
            return i6;
        }
        b();
        return this.f2989c;
    }

    public final View i(int i6, int i10) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f;
        ArrayList arrayList = this.f2987a;
        View view = null;
        if (i10 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f2769h && staggeredGridLayoutManager.getPosition(view2) >= i6) || ((!staggeredGridLayoutManager.f2769h && staggeredGridLayoutManager.getPosition(view2) <= i6) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i11 = 0;
            while (i11 < size2) {
                View view3 = (View) arrayList.get(i11);
                if ((staggeredGridLayoutManager.f2769h && staggeredGridLayoutManager.getPosition(view3) <= i6) || ((!staggeredGridLayoutManager.f2769h && staggeredGridLayoutManager.getPosition(view3) >= i6) || !view3.hasFocusable())) {
                    break;
                }
                i11++;
                view = view3;
            }
        }
        return view;
    }

    public final int j(int i6) {
        int i10 = this.f2988b;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        if (this.f2987a.size() == 0) {
            return i6;
        }
        c();
        return this.f2988b;
    }

    public final void k() {
        ArrayList arrayList = this.f2987a;
        int size = arrayList.size();
        View view = (View) arrayList.remove(size - 1);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        layoutParams.f2786e = null;
        if (layoutParams.f2760a.isRemoved() || layoutParams.f2760a.isUpdated()) {
            this.d -= this.f.f2766c.c(view);
        }
        if (size == 1) {
            this.f2988b = Integer.MIN_VALUE;
        }
        this.f2989c = Integer.MIN_VALUE;
    }

    public final void l() {
        ArrayList arrayList = this.f2987a;
        View view = (View) arrayList.remove(0);
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        layoutParams.f2786e = null;
        if (arrayList.size() == 0) {
            this.f2989c = Integer.MIN_VALUE;
        }
        if (layoutParams.f2760a.isRemoved() || layoutParams.f2760a.isUpdated()) {
            this.d -= this.f.f2766c.c(view);
        }
        this.f2988b = Integer.MIN_VALUE;
    }

    public final void m(View view) {
        StaggeredGridLayoutManager.LayoutParams layoutParams = (StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        layoutParams.f2786e = this;
        ArrayList arrayList = this.f2987a;
        arrayList.add(0, view);
        this.f2988b = Integer.MIN_VALUE;
        if (arrayList.size() == 1) {
            this.f2989c = Integer.MIN_VALUE;
        }
        if (layoutParams.f2760a.isRemoved() || layoutParams.f2760a.isUpdated()) {
            this.d = this.f.f2766c.c(view) + this.d;
        }
    }
}
