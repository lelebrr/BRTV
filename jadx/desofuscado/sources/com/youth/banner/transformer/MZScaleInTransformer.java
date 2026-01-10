package com.youth.banner.transformer;

import android.view.View;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MZScaleInTransformer extends BasePageTransformer {
    private static final float DEFAULT_MIN_SCALE = 0.85f;
    private float mMinScale;

    public MZScaleInTransformer() {
        this.mMinScale = DEFAULT_MIN_SCALE;
    }

    private ViewPager2 requireViewPager(View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        float paddingLeft = requireViewPager(view).getPaddingLeft();
        float measuredWidth = f - (paddingLeft / ((r0.getMeasuredWidth() - paddingLeft) - r0.getPaddingRight()));
        float width = view.getWidth();
        float f3 = this.mMinScale;
        float f4 = ((1.0f - f3) * width) / 2.0f;
        if (measuredWidth <= -1.0f) {
            view.setTranslationX(f4);
            view.setScaleX(this.mMinScale);
            view.setScaleY(this.mMinScale);
            return;
        }
        double d = measuredWidth;
        if (d > 1.0d) {
            view.setScaleX(f3);
            view.setScaleY(this.mMinScale);
            view.setTranslationX(-f4);
            return;
        }
        float fAbs = Math.abs(1.0f - Math.abs(measuredWidth)) * (1.0f - f3);
        float f5 = (-f4) * measuredWidth;
        if (d <= -0.5d) {
            view.setTranslationX((Math.abs(Math.abs(measuredWidth) - 0.5f) / 0.5f) + f5);
        } else if (measuredWidth > 0.0f && d >= 0.5d) {
            view.setTranslationX(f5 - (Math.abs(Math.abs(measuredWidth) - 0.5f) / 0.5f));
        } else {
            view.setTranslationX(f5);
        }
        view.setScaleX(this.mMinScale + fAbs);
        view.setScaleY(fAbs + this.mMinScale);
    }

    public MZScaleInTransformer(float f) {
        this.mMinScale = f;
    }
}
