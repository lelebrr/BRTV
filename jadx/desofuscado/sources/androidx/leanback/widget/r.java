package androidx.leanback.widget;

import android.graphics.PointF;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends s {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f1916c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(GridLayoutManager gridLayoutManager) {
        super(gridLayoutManager);
        this.f1916c = gridLayoutManager;
    }

    @Override // androidx.recyclerview.widget.k1
    public final PointF computeScrollVectorForPosition(int i6) {
        if (getChildCount() == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f1916c;
        int position = gridLayoutManager.getPosition(gridLayoutManager.getChildAt(0));
        int i10 = ((gridLayoutManager.f1637n & 262144) == 0 ? i6 >= position : i6 <= position) ? 1 : -1;
        return gridLayoutManager.d == 0 ? new PointF(i10, 0.0f) : new PointF(0.0f, i10);
    }
}
