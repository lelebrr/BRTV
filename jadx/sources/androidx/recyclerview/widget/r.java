package androidx.recyclerview.widget;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements w0 {

    /* renamed from: a, reason: collision with root package name */
    public int f2934a;

    /* renamed from: b, reason: collision with root package name */
    public int f2935b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f2936c;
    public int d;

    public final void a(int i6, int i10) {
        if (i6 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i11 = this.d;
        int i12 = i11 * 2;
        int[] iArr = this.f2936c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f2936c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i12 >= iArr.length) {
            int[] iArr3 = new int[i11 * 4];
            this.f2936c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f2936c;
        iArr4[i12] = i6;
        iArr4[i12 + 1] = i10;
        this.d++;
    }

    public final void b(RecyclerView recyclerView, boolean z7) {
        this.d = 0;
        int[] iArr = this.f2936c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        x0 x0Var = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || x0Var == null || !x0Var.isItemPrefetchEnabled()) {
            return;
        }
        if (z7) {
            if (!recyclerView.mAdapterHelper.g()) {
                x0Var.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            x0Var.collectAdjacentPrefetchPositions(this.f2934a, this.f2935b, recyclerView.mState, this);
        }
        int i6 = this.d;
        if (i6 > x0Var.mPrefetchMaxCountObserved) {
            x0Var.mPrefetchMaxCountObserved = i6;
            x0Var.mPrefetchMaxObservedInInitialPrefetch = z7;
            recyclerView.mRecycler.n();
        }
    }
}
