package com.youth.banner.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RectangleIndicator extends BaseIndicator {
    RectF rectF;

    public RectangleIndicator(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int indicatorSize = this.config.getIndicatorSize();
        if (indicatorSize <= 1) {
            return;
        }
        int i6 = 0;
        float indicatorSpace = 0.0f;
        while (i6 < indicatorSize) {
            this.mPaint.setColor(this.config.getCurrentPosition() == i6 ? this.config.getSelectedColor() : this.config.getNormalColor());
            this.rectF.set(indicatorSpace, 0.0f, (this.config.getCurrentPosition() == i6 ? this.config.getSelectedWidth() : this.config.getNormalWidth()) + indicatorSpace, this.config.getHeight());
            indicatorSpace += this.config.getIndicatorSpace() + r4;
            canvas.drawRoundRect(this.rectF, this.config.getRadius(), this.config.getRadius(), this.mPaint);
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
        int i11 = indicatorSize - 1;
        setMeasuredDimension(this.config.getSelectedWidth() + (this.config.getNormalWidth() * i11) + (this.config.getIndicatorSpace() * i11), this.config.getHeight());
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RectangleIndicator(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.rectF = new RectF();
    }
}
