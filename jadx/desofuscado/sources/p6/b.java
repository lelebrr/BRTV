package p6;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.navigation.d;
import com.google.android.material.navigation.f;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends f {
    public int E;
    public final FrameLayout.LayoutParams F;

    public b(Context context) {
        super(context);
        this.E = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.F = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    @Override // com.google.android.material.navigation.f
    public final d e(Context context) {
        return new a(context);
    }

    public final int g(int i6, int i10, int i11) {
        int iMax = i10 / Math.max(1, i11);
        int size = this.E;
        if (size == -1) {
            size = View.MeasureSpec.getSize(i6);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, iMax), 0);
    }

    public int getItemMinimumHeight() {
        return this.E;
    }

    public int getMenuGravity() {
        return this.F.gravity;
    }

    public final int h(int i6, int i10, int i11, View view) {
        int measuredHeight;
        g(i6, i10, i11);
        int iG = view == null ? g(i6, i10, i11) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt != view) {
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i6, iG);
                    measuredHeight = childAt.getMeasuredHeight();
                } else {
                    measuredHeight = 0;
                }
                i12 += measuredHeight;
            }
        }
        return i12;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int i13 = i11 - i6;
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i14;
                childAt.layout(0, i14, i13, measuredHeight);
                i14 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int iH;
        int measuredHeight;
        int size = View.MeasureSpec.getSize(i10);
        int size2 = getMenu().l().size();
        if (size2 <= 1 || !f.f(getLabelVisibilityMode(), size2)) {
            iH = h(i6, size, size2, null);
        } else {
            View childAt = getChildAt(getSelectedItemPosition());
            if (childAt != null) {
                int iG = g(i6, size, size2);
                if (childAt.getVisibility() != 8) {
                    childAt.measure(i6, iG);
                    measuredHeight = childAt.getMeasuredHeight();
                } else {
                    measuredHeight = 0;
                }
                size -= measuredHeight;
                size2--;
            } else {
                measuredHeight = 0;
            }
            iH = h(i6, size, size2, childAt) + measuredHeight;
        }
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i6), i6, 0), View.resolveSizeAndState(iH, i10, 0));
    }

    public void setItemMinimumHeight(int i6) {
        if (this.E != i6) {
            this.E = i6;
            requestLayout();
        }
    }

    public void setMenuGravity(int i6) {
        FrameLayout.LayoutParams layoutParams = this.F;
        if (layoutParams.gravity != i6) {
            layoutParams.gravity = i6;
            setLayoutParams(layoutParams);
        }
    }
}
