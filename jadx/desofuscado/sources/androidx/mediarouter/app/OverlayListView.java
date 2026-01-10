package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class OverlayListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2542a;

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2542a = new ArrayList();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z7;
        super.onDraw(canvas);
        ArrayList arrayList = this.f2542a;
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                r0 r0Var = (r0) it.next();
                BitmapDrawable bitmapDrawable = r0Var.f2680a;
                if (bitmapDrawable != null) {
                    bitmapDrawable.draw(canvas);
                }
                long drawingTime = getDrawingTime();
                if (r0Var.f2688k) {
                    z7 = false;
                } else {
                    float fMax = r0Var.f2687j ? Math.max(0.0f, Math.min(1.0f, (drawingTime - r0Var.f2686i) / r0Var.f2683e)) : 0.0f;
                    Interpolator interpolator = r0Var.d;
                    float interpolation = interpolator == null ? fMax : interpolator.getInterpolation(fMax);
                    int i6 = (int) (r0Var.f2684g * interpolation);
                    Rect rect = r0Var.f;
                    int i10 = rect.top + i6;
                    Rect rect2 = r0Var.f2682c;
                    rect2.top = i10;
                    rect2.bottom = rect.bottom + i6;
                    float fD = ea.q.d(r0Var.f2685h, 1.0f, interpolation, 1.0f);
                    r0Var.f2681b = fD;
                    BitmapDrawable bitmapDrawable2 = r0Var.f2680a;
                    if (bitmapDrawable2 != null) {
                        bitmapDrawable2.setAlpha((int) (fD * 255.0f));
                        bitmapDrawable2.setBounds(rect2);
                    }
                    if (r0Var.f2687j && fMax >= 1.0f) {
                        r0Var.f2688k = true;
                        a7.f fVar = r0Var.f2689l;
                        if (fVar != null) {
                            u uVar = (u) fVar.f170c;
                            uVar.I.remove((q1.s0) fVar.f169b);
                            uVar.E.notifyDataSetChanged();
                        }
                    }
                    z7 = !r0Var.f2688k;
                }
                if (!z7) {
                    it.remove();
                }
            }
        }
    }

    public OverlayListView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f2542a = new ArrayList();
    }
}
