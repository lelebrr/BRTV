package com.youth.banner.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircleIndicator extends BaseIndicator {
    private int mNormalRadius;
    private int mSelectedRadius;
    private int maxRadius;

    public CircleIndicator(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int indicatorSize = this.config.getIndicatorSize();
        if (indicatorSize <= 1) {
            return;
        }
        float indicatorSpace = 0.0f;
        int i6 = 0;
        while (i6 < indicatorSize) {
            this.mPaint.setColor(this.config.getCurrentPosition() == i6 ? this.config.getSelectedColor() : this.config.getNormalColor());
            int selectedWidth = this.config.getCurrentPosition() == i6 ? this.config.getSelectedWidth() : this.config.getNormalWidth();
            float f = this.config.getCurrentPosition() == i6 ? this.mSelectedRadius : this.mNormalRadius;
            canvas.drawCircle(indicatorSpace + f, this.maxRadius, f, this.mPaint);
            indicatorSpace += this.config.getIndicatorSpace() + selectedWidth;
            i6++;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        int indicatorSize = this.config.getIndicatorSize();
        if (indicatorSize <= 1) {
            return;
        }
        this.mNormalRadius = this.config.getNormalWidth() / 2;
        int selectedWidth = this.config.getSelectedWidth() / 2;
        this.mSelectedRadius = selectedWidth;
        this.maxRadius = Math.max(selectedWidth, this.mNormalRadius);
        int i11 = indicatorSize - 1;
        setMeasuredDimension((this.config.getNormalWidth() * i11) + this.config.getSelectedWidth() + (this.config.getIndicatorSpace() * i11), Math.max(this.config.getNormalWidth(), this.config.getSelectedWidth()));
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.mNormalRadius = this.config.getNormalWidth() / 2;
        this.mSelectedRadius = this.config.getSelectedWidth() / 2;
    }
}
