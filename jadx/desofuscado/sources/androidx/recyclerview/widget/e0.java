package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 extends a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2829a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t1 f2830b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e0(t1 t1Var, Context context, int i6) {
        super(context);
        this.f2829a = i6;
        this.f2830b = t1Var;
    }

    @Override // androidx.recyclerview.widget.a0
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        switch (this.f2829a) {
        }
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.a0
    public int calculateTimeForScrolling(int i6) {
        switch (this.f2829a) {
            case 0:
                return Math.min(100, super.calculateTimeForScrolling(i6));
            default:
                return super.calculateTimeForScrolling(i6);
        }
    }

    @Override // androidx.recyclerview.widget.a0, androidx.recyclerview.widget.k1
    public final void onTargetFound(View view, l1 l1Var, i1 i1Var) {
        switch (this.f2829a) {
            case 0:
                f0 f0Var = (f0) this.f2830b;
                int[] iArrCalculateDistanceToFinalSnap = f0Var.calculateDistanceToFinalSnap(f0Var.mRecyclerView.getLayoutManager(), view);
                int i6 = iArrCalculateDistanceToFinalSnap[0];
                int i10 = iArrCalculateDistanceToFinalSnap[1];
                int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i6), Math.abs(i10)));
                if (iCalculateTimeForDeceleration > 0) {
                    i1Var.b(i6, i10, this.mDecelerateInterpolator, iCalculateTimeForDeceleration);
                    break;
                }
                break;
            default:
                t1 t1Var = this.f2830b;
                RecyclerView recyclerView = t1Var.mRecyclerView;
                if (recyclerView != null) {
                    int[] iArrCalculateDistanceToFinalSnap2 = t1Var.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
                    int i11 = iArrCalculateDistanceToFinalSnap2[0];
                    int i12 = iArrCalculateDistanceToFinalSnap2[1];
                    int iCalculateTimeForDeceleration2 = calculateTimeForDeceleration(Math.max(Math.abs(i11), Math.abs(i12)));
                    if (iCalculateTimeForDeceleration2 > 0) {
                        i1Var.b(i11, i12, this.mDecelerateInterpolator, iCalculateTimeForDeceleration2);
                        break;
                    }
                }
                break;
        }
    }
}
