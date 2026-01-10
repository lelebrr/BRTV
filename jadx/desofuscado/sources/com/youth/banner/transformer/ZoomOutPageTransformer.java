package com.youth.banner.transformer;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ZoomOutPageTransformer extends BasePageTransformer {
    private static final float DEFAULT_MIN_ALPHA = 0.5f;
    private static final float DEFAULT_MIN_SCALE = 0.85f;
    private float mMinAlpha;
    private float mMinScale;

    public ZoomOutPageTransformer() {
        this.mMinScale = DEFAULT_MIN_SCALE;
        this.mMinAlpha = 0.5f;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        float fMax = Math.max(this.mMinScale, 1.0f - Math.abs(f));
        float f3 = 1.0f - fMax;
        float f4 = (height * f3) / 2.0f;
        float f5 = (width * f3) / 2.0f;
        if (f < 0.0f) {
            view.setTranslationX(f5 - (f4 / 2.0f));
        } else {
            view.setTranslationX((f4 / 2.0f) + (-f5));
        }
        view.setScaleX(fMax);
        view.setScaleY(fMax);
        float f10 = this.mMinAlpha;
        float f11 = this.mMinScale;
        view.setAlpha(((1.0f - f10) * ((fMax - f11) / (1.0f - f11))) + f10);
    }

    public ZoomOutPageTransformer(float f, float f3) {
        this.mMinScale = f;
        this.mMinAlpha = f3;
    }
}
