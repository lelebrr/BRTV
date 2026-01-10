package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e1 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2831a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f2832b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2833c;
    public final List d;

    /* renamed from: e, reason: collision with root package name */
    public int f2834e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public d1 f2835g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2836h;

    public e1(RecyclerView recyclerView) {
        this.f2836h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f2831a = arrayList;
        this.f2832b = null;
        this.f2833c = new ArrayList();
        this.d = Collections.unmodifiableList(arrayList);
        this.f2834e = 2;
        this.f = 2;
    }

    public static void d(ViewGroup viewGroup, boolean z7) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                d((ViewGroup) childAt, true);
            }
        }
        if (z7) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
            } else {
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }
    }

    public final void a(p1 p1Var, boolean z7) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(p1Var);
        View view = p1Var.itemView;
        RecyclerView recyclerView = this.f2836h;
        r1 r1Var = recyclerView.mAccessibilityDelegate;
        if (r1Var != null) {
            q1 q1Var = r1Var.f2939e;
            n0.s0.q(view, q1Var instanceof q1 ? (n0.b) q1Var.f2933e.remove(view) : null);
        }
        if (z7) {
            f1 f1Var = recyclerView.mRecyclerListener;
            if (f1Var != null) {
                ((androidx.leanback.widget.d) f1Var).a(p1Var);
            }
            int size = recyclerView.mRecyclerListeners.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((androidx.leanback.widget.d) recyclerView.mRecyclerListeners.get(i6)).a(p1Var);
            }
            k0 k0Var = recyclerView.mAdapter;
            if (k0Var != null) {
                k0Var.onViewRecycled(p1Var);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.d(p1Var);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + p1Var);
            }
        }
        p1Var.mBindingAdapter = null;
        p1Var.mOwnerRecyclerView = null;
        d1 d1VarC = c();
        d1VarC.getClass();
        int itemViewType = p1Var.getItemViewType();
        ArrayList arrayList = d1VarC.a(itemViewType).f2810a;
        if (((c1) d1VarC.f2823a.get(itemViewType)).f2811b <= arrayList.size()) {
            l5.a.e(p1Var.itemView);
        } else {
            if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(p1Var)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            p1Var.resetInternal();
            arrayList.add(p1Var);
        }
    }

    public final int b(int i6) {
        RecyclerView recyclerView = this.f2836h;
        if (i6 >= 0 && i6 < recyclerView.mState.b()) {
            return !recyclerView.mState.f2890g ? i6 : recyclerView.mAdapterHelper.f(i6, 0);
        }
        StringBuilder sbU = a.e.u(i6, "invalid position ", ". State item count is ");
        sbU.append(recyclerView.mState.b());
        sbU.append(recyclerView.exceptionLabel());
        throw new IndexOutOfBoundsException(sbU.toString());
    }

    public final d1 c() {
        if (this.f2835g == null) {
            d1 d1Var = new d1();
            d1Var.f2823a = new SparseArray();
            d1Var.f2824b = 0;
            d1Var.f2825c = Collections.newSetFromMap(new IdentityHashMap());
            this.f2835g = d1Var;
            e();
        }
        return this.f2835g;
    }

    public final void e() {
        if (this.f2835g != null) {
            RecyclerView recyclerView = this.f2836h;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            d1 d1Var = this.f2835g;
            d1Var.f2825c.add(recyclerView.mAdapter);
        }
    }

    public final void f(k0 k0Var, boolean z7) {
        d1 d1Var = this.f2835g;
        if (d1Var == null) {
            return;
        }
        Set set = d1Var.f2825c;
        set.remove(k0Var);
        if (set.size() != 0 || z7) {
            return;
        }
        int i6 = 0;
        while (true) {
            SparseArray sparseArray = d1Var.f2823a;
            if (i6 >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((c1) sparseArray.get(sparseArray.keyAt(i6))).f2810a;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                l5.a.e(((p1) arrayList.get(i10)).itemView);
            }
            i6++;
        }
    }

    public final void g() {
        ArrayList arrayList = this.f2833c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            r rVar = this.f2836h.mPrefetchRegistry;
            int[] iArr = rVar.f2936c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            rVar.d = 0;
        }
    }

    public final void h(int i6) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "Recycling cached view at index " + i6);
        }
        ArrayList arrayList = this.f2833c;
        p1 p1Var = (p1) arrayList.get(i6);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + p1Var);
        }
        a(p1Var, true);
        arrayList.remove(i6);
    }

    public final void i(View view) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zIsTmpDetached = childViewHolderInt.isTmpDetached();
        RecyclerView recyclerView = this.f2836h;
        if (zIsTmpDetached) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.unScrap();
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.clearReturnedFromScrapFlag();
        }
        j(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        recyclerView.mItemAnimator.d(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d4, code lost:
    
        r4 = r4 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:89:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j(androidx.recyclerview.widget.p1 r12) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.e1.j(androidx.recyclerview.widget.p1):void");
    }

    public final void k(View view) {
        p1 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zHasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
        RecyclerView recyclerView = this.f2836h;
        if (!zHasAnyOfTheFlags && childViewHolderInt.isUpdated() && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
            if (this.f2832b == null) {
                this.f2832b = new ArrayList();
            }
            childViewHolderInt.setScrapContainer(this, true);
            this.f2832b.add(childViewHolderInt);
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
            throw new IllegalArgumentException(a.e.p(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.setScrapContainer(this, false);
        this.f2831a.add(childViewHolderInt);
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.recyclerview.widget.p1 l(int r29, long r30) {
        /*
            Method dump skipped, instructions count: 1392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.e1.l(int, long):androidx.recyclerview.widget.p1");
    }

    public final void m(p1 p1Var) {
        if (p1Var.mInChangeScrap) {
            this.f2832b.remove(p1Var);
        } else {
            this.f2831a.remove(p1Var);
        }
        p1Var.mScrapContainer = null;
        p1Var.mInChangeScrap = false;
        p1Var.clearReturnedFromScrapFlag();
    }

    public final void n() {
        x0 x0Var = this.f2836h.mLayout;
        this.f = this.f2834e + (x0Var != null ? x0Var.mPrefetchMaxCountObserved : 0);
        ArrayList arrayList = this.f2833c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
            h(size);
        }
    }
}
