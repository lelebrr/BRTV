package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends u6.h {

    /* renamed from: x, reason: collision with root package name */
    public final RectF f5319x;

    public g(u6.m mVar) {
        super(mVar == null ? new u6.m() : mVar);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f5319x = new RectF();
    }

    @Override // u6.h
    public final void f(Canvas canvas) {
        RectF rectF = this.f5319x;
        if (rectF.isEmpty()) {
            super.f(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(rectF);
        } else {
            canvas.clipRect(rectF, Region.Op.DIFFERENCE);
        }
        super.f(canvas);
        canvas.restore();
    }

    public final void w(float f, float f3, float f4, float f5) {
        RectF rectF = this.f5319x;
        if (f == rectF.left && f3 == rectF.top && f4 == rectF.right && f5 == rectF.bottom) {
            return;
        }
        rectF.set(f, f3, f4, f5);
        invalidateSelf();
    }
}
