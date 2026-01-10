package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class OuterHighlightDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public float f3811a;

    /* renamed from: b, reason: collision with root package name */
    public float f3812b;

    /* renamed from: c, reason: collision with root package name */
    public float f3813c;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawCircle(0.0f + this.f3812b, 0.0f + this.f3813c, 0.0f * this.f3811a, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }

    @Keep
    public void setScale(float f) {
        this.f3811a = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationX(float f) {
        this.f3812b = f;
        invalidateSelf();
    }

    @Keep
    public void setTranslationY(float f) {
        this.f3813c = f;
        invalidateSelf();
    }
}
