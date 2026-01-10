package com.google.android.material.datepicker;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.t0;
import java.util.Calendar;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends t0 {

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f4860a = g0.h(null);

    /* renamed from: b, reason: collision with root package name */
    public final Calendar f4861b = g0.h(null);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f4862c;

    public o(r rVar) {
        this.f4862c = rVar;
    }

    @Override // androidx.recyclerview.widget.t0
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        Object obj;
        if ((recyclerView.getAdapter() instanceof j0) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            j0 j0Var = (j0) recyclerView.getAdapter();
            GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
            r rVar = this.f4862c;
            Iterator it = rVar.V.c().iterator();
            while (it.hasNext()) {
                m0.b bVar = (m0.b) it.next();
                Object obj2 = bVar.f8111a;
                if (obj2 != null && (obj = bVar.f8112b) != null) {
                    long jLongValue = ((Long) obj2).longValue();
                    Calendar calendar = this.f4860a;
                    calendar.setTimeInMillis(jLongValue);
                    long jLongValue2 = ((Long) obj).longValue();
                    Calendar calendar2 = this.f4861b;
                    calendar2.setTimeInMillis(jLongValue2);
                    int i6 = calendar.get(1) - j0Var.f4851a.W.f4798a.f4811c;
                    int i10 = calendar2.get(1) - j0Var.f4851a.W.f4798a.f4811c;
                    View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i6);
                    View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(i10);
                    int i11 = gridLayoutManager.f2745b;
                    int i12 = i6 / i11;
                    int i13 = i10 / i11;
                    int i14 = i12;
                    while (i14 <= i13) {
                        if (gridLayoutManager.findViewByPosition(gridLayoutManager.f2745b * i14) != null) {
                            canvas.drawRect(i14 == i12 ? (viewFindViewByPosition.getWidth() / 2) + viewFindViewByPosition.getLeft() : 0, r10.getTop() + ((Rect) rVar.Z.d.f840b).top, i14 == i13 ? (viewFindViewByPosition2.getWidth() / 2) + viewFindViewByPosition2.getLeft() : recyclerView.getWidth(), r10.getBottom() - ((Rect) rVar.Z.d.f840b).bottom, rVar.Z.f4830h);
                        }
                        i14++;
                    }
                }
            }
        }
    }
}
