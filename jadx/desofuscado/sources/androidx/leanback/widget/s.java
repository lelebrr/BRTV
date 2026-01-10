package androidx.leanback.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.l1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s extends androidx.recyclerview.widget.a0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1918a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f1919b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(GridLayoutManager gridLayoutManager) {
        super(gridLayoutManager.f1628c.getContext());
        this.f1919b = gridLayoutManager;
    }

    public void a() {
        View viewFindViewByPosition = findViewByPosition(getTargetPosition());
        GridLayoutManager gridLayoutManager = this.f1919b;
        if (viewFindViewByPosition == null) {
            if (getTargetPosition() >= 0) {
                gridLayoutManager.F(getTargetPosition(), false);
                return;
            }
            return;
        }
        if (gridLayoutManager.f1639p != getTargetPosition()) {
            gridLayoutManager.f1639p = getTargetPosition();
        }
        if (gridLayoutManager.hasFocus()) {
            gridLayoutManager.f1637n |= 32;
            viewFindViewByPosition.requestFocus();
            gridLayoutManager.f1637n &= -33;
        }
        gridLayoutManager.e();
        gridLayoutManager.f();
    }

    @Override // androidx.recyclerview.widget.a0
    public final float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return super.calculateSpeedPerPixel(displayMetrics) * this.f1919b.f1626a;
    }

    @Override // androidx.recyclerview.widget.a0
    public final int calculateTimeForScrolling(int i6) {
        int iCalculateTimeForScrolling = super.calculateTimeForScrolling(i6);
        int i10 = ((k1) this.f1919b.I.d).f1854i;
        if (i10 <= 0) {
            return iCalculateTimeForScrolling;
        }
        float f = (30.0f / i10) * i6;
        return ((float) iCalculateTimeForScrolling) < f ? (int) f : iCalculateTimeForScrolling;
    }

    @Override // androidx.recyclerview.widget.a0, androidx.recyclerview.widget.k1
    public final void onStop() {
        super.onStop();
        if (!this.f1918a) {
            a();
        }
        GridLayoutManager gridLayoutManager = this.f1919b;
        if (gridLayoutManager.f1640q == this) {
            gridLayoutManager.f1640q = null;
        }
        if (gridLayoutManager.f1641r == this) {
            gridLayoutManager.f1641r = null;
        }
    }

    @Override // androidx.recyclerview.widget.a0, androidx.recyclerview.widget.k1
    public final void onTargetFound(View view, l1 l1Var, androidx.recyclerview.widget.i1 i1Var) {
        int i6;
        int i10;
        int[] iArr = GridLayoutManager.S;
        GridLayoutManager gridLayoutManager = this.f1919b;
        if (gridLayoutManager.n(view, null, iArr)) {
            if (gridLayoutManager.d == 0) {
                i6 = iArr[0];
                i10 = iArr[1];
            } else {
                i6 = iArr[1];
                i10 = iArr[0];
            }
            i1Var.b(i6, i10, this.mDecelerateInterpolator, calculateTimeForDeceleration((int) Math.sqrt((i10 * i10) + (i6 * i6))));
        }
    }
}
