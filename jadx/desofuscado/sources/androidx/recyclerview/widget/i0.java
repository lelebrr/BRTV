package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements n0.i, d2, q0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2858a;

    public /* synthetic */ i0(Object obj) {
        this.f2858a = obj;
    }

    public void a(a aVar) {
        int i6 = aVar.f2798a;
        RecyclerView recyclerView = (RecyclerView) this.f2858a;
        if (i6 == 1) {
            recyclerView.mLayout.onItemsAdded(recyclerView, aVar.f2799b, aVar.d);
            return;
        }
        if (i6 == 2) {
            recyclerView.mLayout.onItemsRemoved(recyclerView, aVar.f2799b, aVar.d);
        } else if (i6 == 4) {
            recyclerView.mLayout.onItemsUpdated(recyclerView, aVar.f2799b, aVar.d, aVar.f2800c);
        } else {
            if (i6 != 8) {
                return;
            }
            recyclerView.mLayout.onItemsMoved(recyclerView, aVar.f2799b, aVar.d, 1);
        }
    }

    public p1 b(int i6) {
        RecyclerView recyclerView = (RecyclerView) this.f2858a;
        p1 p1VarFindViewHolderForPosition = recyclerView.findViewHolderForPosition(i6, true);
        if (p1VarFindViewHolderForPosition == null) {
            return null;
        }
        d dVar = recyclerView.mChildHelper;
        if (!dVar.f2818c.contains(p1VarFindViewHolderForPosition.itemView)) {
            return p1VarFindViewHolderForPosition;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
        }
        return null;
    }

    public void c(int i6) {
        RecyclerView recyclerView = (RecyclerView) this.f2858a;
        View childAt = recyclerView.getChildAt(i6);
        if (childAt != null) {
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i6);
    }

    @Override // n0.i
    public boolean g(float f) {
        int i6;
        int i10;
        RecyclerView recyclerView = (RecyclerView) this.f2858a;
        if (recyclerView.mLayout.canScrollVertically()) {
            i10 = (int) f;
            i6 = 0;
        } else {
            i6 = recyclerView.mLayout.canScrollHorizontally() ? (int) f : 0;
            i10 = 0;
        }
        if (i6 == 0 && i10 == 0) {
            return false;
        }
        recyclerView.stopScroll();
        return recyclerView.flingNoThresholdCheck(i6, i10);
    }

    @Override // n0.i
    public float m() {
        float f;
        RecyclerView recyclerView = (RecyclerView) this.f2858a;
        if (recyclerView.mLayout.canScrollVertically()) {
            f = recyclerView.mScaledVerticalScrollFactor;
        } else {
            if (!recyclerView.mLayout.canScrollHorizontally()) {
                return 0.0f;
            }
            f = recyclerView.mScaledHorizontalScrollFactor;
        }
        return -f;
    }

    @Override // n0.i
    public void o() {
        ((RecyclerView) this.f2858a).stopScroll();
    }
}
