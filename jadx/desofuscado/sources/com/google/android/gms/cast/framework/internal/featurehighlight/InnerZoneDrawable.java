package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.Keep;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class InnerZoneDrawable extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public float f3808a;

    /* renamed from: b, reason: collision with root package name */
    public float f3809b;

    /* renamed from: c, reason: collision with root package name */
    public float f3810c;

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f3810c > 0.0f) {
            throw null;
        }
        canvas.drawCircle(0.0f, 0.0f, 0.0f * this.f3808a, null);
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
    public void setPulseAlpha(float f) {
        this.f3810c = f;
        invalidateSelf();
    }

    @Keep
    public void setPulseScale(float f) {
        this.f3809b = f;
        invalidateSelf();
    }

    @Keep
    public void setScale(float f) {
        this.f3808a = f;
        invalidateSelf();
    }
}
