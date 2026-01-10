package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ScaleFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public float f1731a;

    /* renamed from: b, reason: collision with root package name */
    public float f1732b;

    /* renamed from: c, reason: collision with root package name */
    public float f1733c;

    public ScaleFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i6, layoutParams);
        view.setScaleX(this.f1733c);
        view.setScaleY(this.f1733c);
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i6, ViewGroup.LayoutParams layoutParams, boolean z7) {
        boolean zAddViewInLayout = super.addViewInLayout(view, i6, layoutParams, z7);
        if (zAddViewInLayout) {
            view.setScaleX(this.f1733c);
            view.setScaleY(this.f1733c);
        }
        return zAddViewInLayout;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLayout(boolean r17, int r18, int r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.ScaleFrameLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        float f = this.f1731a;
        if (f == 1.0f && this.f1732b == 1.0f) {
            super.onMeasure(i6, i10);
            return;
        }
        if (f != 1.0f) {
            i6 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i6) / f) + 0.5f), View.MeasureSpec.getMode(i6));
        }
        float f3 = this.f1732b;
        if (f3 != 1.0f) {
            i10 = View.MeasureSpec.makeMeasureSpec((int) ((View.MeasureSpec.getSize(i10) / f3) + 0.5f), View.MeasureSpec.getMode(i10));
        }
        super.onMeasure(i6, i10);
        setMeasuredDimension((int) ((getMeasuredWidth() * this.f1731a) + 0.5f), (int) ((getMeasuredHeight() * this.f1732b) + 0.5f));
    }

    public void setChildScale(float f) {
        if (this.f1733c != f) {
            this.f1733c = f;
            for (int i6 = 0; i6 < getChildCount(); i6++) {
                getChildAt(i6).setScaleX(f);
                getChildAt(i6).setScaleY(f);
            }
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        throw new UnsupportedOperationException();
    }

    public void setLayoutScaleX(float f) {
        if (f != this.f1731a) {
            this.f1731a = f;
            requestLayout();
        }
    }

    public void setLayoutScaleY(float f) {
        if (f != this.f1732b) {
            this.f1732b = f;
            requestLayout();
        }
    }

    public ScaleFrameLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1731a = 1.0f;
        this.f1732b = 1.0f;
        this.f1733c = 1.0f;
    }
}
