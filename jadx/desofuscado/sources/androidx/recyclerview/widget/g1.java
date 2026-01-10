package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g1 extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2849a;

    public g1(RecyclerView recyclerView) {
        this.f2849a = recyclerView;
    }

    public final void a() {
        RecyclerView recyclerView = this.f2849a;
        if (!recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
        } else {
            Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
            WeakHashMap weakHashMap = n0.s0.f8353a;
            recyclerView.postOnAnimation(runnable);
        }
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onChanged() {
        RecyclerView recyclerView = this.f2849a;
        recyclerView.assertNotInLayoutOrScroll(null);
        recyclerView.mState.f = true;
        recyclerView.processDataSetCompletelyChanged(true);
        if (recyclerView.mAdapterHelper.g()) {
            return;
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onItemRangeChanged(int i6, int i10, Object obj) {
        RecyclerView recyclerView = this.f2849a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i10 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2802b;
        arrayList.add(bVar.h(4, i6, i10, obj));
        bVar.f |= 4;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onItemRangeInserted(int i6, int i10) {
        RecyclerView recyclerView = this.f2849a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i10 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2802b;
        arrayList.add(bVar.h(1, i6, i10, null));
        bVar.f |= 1;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onItemRangeMoved(int i6, int i10, int i11) {
        RecyclerView recyclerView = this.f2849a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        bVar.getClass();
        if (i6 == i10) {
            return;
        }
        if (i11 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        ArrayList arrayList = bVar.f2802b;
        arrayList.add(bVar.h(8, i6, i10, null));
        bVar.f |= 8;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onItemRangeRemoved(int i6, int i10) {
        RecyclerView recyclerView = this.f2849a;
        recyclerView.assertNotInLayoutOrScroll(null);
        b bVar = recyclerView.mAdapterHelper;
        if (i10 < 1) {
            bVar.getClass();
            return;
        }
        ArrayList arrayList = bVar.f2802b;
        arrayList.add(bVar.h(2, i6, i10, null));
        bVar.f |= 2;
        if (arrayList.size() == 1) {
            a();
        }
    }

    @Override // androidx.recyclerview.widget.m0
    public final void onStateRestorationPolicyChanged() {
        k0 k0Var;
        RecyclerView recyclerView = this.f2849a;
        if (recyclerView.mPendingSavedState == null || (k0Var = recyclerView.mAdapter) == null || !k0Var.canRestoreState()) {
            return;
        }
        recyclerView.requestLayout();
    }
}
