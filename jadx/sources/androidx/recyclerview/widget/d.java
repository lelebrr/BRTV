package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final i0 f2816a;

    /* renamed from: e, reason: collision with root package name */
    public View f2819e;
    public int d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final c f2817b = new c();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2818c = new ArrayList();

    public d(i0 i0Var) {
        this.f2816a = i0Var;
    }

    public final void a(View view, int i6, boolean z7) {
        RecyclerView recyclerView = (RecyclerView) this.f2816a.f2858a;
        int childCount = i6 < 0 ? recyclerView.getChildCount() : f(i6);
        this.f2817b.f(childCount, z7);
        if (z7) {
            i(view);
        }
        recyclerView.addView(view, childCount);
        recyclerView.dispatchChildAttached(view);
    }

    public final void b(View view, int i6, ViewGroup.LayoutParams layoutParams, boolean z7) {
        RecyclerView recyclerView = (RecyclerView) this.f2816a.f2858a;
        int childCount = i6 < 0 ? recyclerView.getChildCount() : f(i6);
        this.f2817b.f(childCount, z7);
        if (z7) {
            i(view);
        }
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(a.e.p(recyclerView, sb));
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "reAttach " + childViewHolderInt);
            }
            childViewHolderInt.clearTmpDetachFlag();
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(childCount);
            throw new IllegalArgumentException(a.e.p(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, childCount, layoutParams);
    }

    public final void c(int i6) {
        int iF = f(i6);
        this.f2817b.g(iF);
        RecyclerView recyclerView = (RecyclerView) this.f2816a.f2858a;
        View childAt = recyclerView.getChildAt(iF);
        if (childAt != null) {
            p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    throw new IllegalArgumentException(a.e.p(recyclerView, sb));
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                }
                childViewHolderInt.addFlags(256);
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(iF);
            throw new IllegalArgumentException(a.e.p(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(iF);
    }

    public final View d(int i6) {
        return ((RecyclerView) this.f2816a.f2858a).getChildAt(f(i6));
    }

    public final int e() {
        return ((RecyclerView) this.f2816a.f2858a).getChildCount() - this.f2818c.size();
    }

    public final int f(int i6) {
        if (i6 < 0) {
            return -1;
        }
        int childCount = ((RecyclerView) this.f2816a.f2858a).getChildCount();
        int i10 = i6;
        while (i10 < childCount) {
            c cVar = this.f2817b;
            int iC = i6 - (i10 - cVar.c(i10));
            if (iC == 0) {
                while (cVar.e(i10)) {
                    i10++;
                }
                return i10;
            }
            i10 += iC;
        }
        return -1;
    }

    public final View g(int i6) {
        return ((RecyclerView) this.f2816a.f2858a).getChildAt(i6);
    }

    public final int h() {
        return ((RecyclerView) this.f2816a.f2858a).getChildCount();
    }

    public final void i(View view) {
        this.f2818c.add(view);
        i0 i0Var = this.f2816a;
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState((RecyclerView) i0Var.f2858a);
        }
    }

    public final int j(View view) {
        int iIndexOfChild = ((RecyclerView) this.f2816a.f2858a).indexOfChild(view);
        if (iIndexOfChild == -1) {
            return -1;
        }
        c cVar = this.f2817b;
        if (cVar.e(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - cVar.c(iIndexOfChild);
    }

    public final void k(int i6) {
        i0 i0Var = this.f2816a;
        int i10 = this.d;
        if (i10 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i10 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            int iF = f(i6);
            View childAt = ((RecyclerView) i0Var.f2858a).getChildAt(iF);
            if (childAt == null) {
                this.d = 0;
                this.f2819e = null;
                return;
            }
            this.d = 1;
            this.f2819e = childAt;
            if (this.f2817b.g(iF)) {
                l(childAt);
            }
            i0Var.c(iF);
            this.d = 0;
            this.f2819e = null;
        } catch (Throwable th) {
            this.d = 0;
            this.f2819e = null;
            throw th;
        }
    }

    public final void l(View view) {
        if (this.f2818c.remove(view)) {
            i0 i0Var = this.f2816a;
            p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState((RecyclerView) i0Var.f2858a);
            }
        }
    }

    public final String toString() {
        return this.f2817b.toString() + ", hidden list:" + this.f2818c.size();
    }
}
