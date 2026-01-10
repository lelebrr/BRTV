package androidx.leanback.widget;

import android.graphics.PointF;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u extends s {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1927c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GridLayoutManager f1928e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(GridLayoutManager gridLayoutManager, int i6, boolean z7) {
        super(gridLayoutManager);
        this.f1928e = gridLayoutManager;
        this.d = i6;
        this.f1927c = z7;
        setTargetPosition(-2);
    }

    @Override // androidx.leanback.widget.s
    public final void a() {
        super.a();
        this.d = 0;
        View viewFindViewByPosition = findViewByPosition(getTargetPosition());
        if (viewFindViewByPosition != null) {
            this.f1928e.H(viewFindViewByPosition, true);
        }
    }

    @Override // androidx.recyclerview.widget.k1
    public final PointF computeScrollVectorForPosition(int i6) {
        int i10 = this.d;
        if (i10 == 0) {
            return null;
        }
        GridLayoutManager gridLayoutManager = this.f1928e;
        int i11 = ((gridLayoutManager.f1637n & 262144) == 0 ? i10 >= 0 : i10 <= 0) ? 1 : -1;
        return gridLayoutManager.d == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }
}
