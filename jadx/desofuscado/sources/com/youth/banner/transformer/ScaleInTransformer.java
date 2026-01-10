package com.youth.banner.transformer;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ScaleInTransformer extends BasePageTransformer {
    private static final float DEFAULT_MIN_SCALE = 0.85f;
    private float mMinScale;

    public ScaleInTransformer() {
        this.mMinScale = DEFAULT_MIN_SCALE;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        view.setPivotY(view.getHeight() / 2);
        view.setPivotX(width / 2);
        if (f < -1.0f) {
            view.setScaleX(this.mMinScale);
            view.setScaleY(this.mMinScale);
            view.setPivotX(width);
            return;
        }
        if (f > 1.0f) {
            view.setPivotX(0.0f);
            view.setScaleX(this.mMinScale);
            view.setScaleY(this.mMinScale);
            return;
        }
        if (f < 0.0f) {
            float f3 = this.mMinScale;
            float f4 = ((1.0f - f3) * (f + 1.0f)) + f3;
            view.setScaleX(f4);
            view.setScaleY(f4);
            view.setPivotX((((-f) * 0.5f) + 0.5f) * width);
            return;
        }
        float f5 = 1.0f - f;
        float f10 = this.mMinScale;
        float f11 = ((1.0f - f10) * f5) + f10;
        view.setScaleX(f11);
        view.setScaleY(f11);
        view.setPivotX(f5 * 0.5f * width);
    }

    public ScaleInTransformer(float f) {
        this.mMinScale = f;
    }
}
