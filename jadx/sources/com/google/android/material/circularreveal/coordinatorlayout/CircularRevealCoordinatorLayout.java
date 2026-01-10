package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c2.b;
import f6.d;
import f6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements e {

    /* renamed from: y, reason: collision with root package name */
    public final b f4797y;

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4797y = new b(this);
    }

    @Override // f6.e
    public final void c() {
        this.f4797y.getClass();
    }

    @Override // f6.e
    public final void d(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        b bVar = this.f4797y;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // f6.e
    public final void e() {
        this.f4797y.getClass();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return (Drawable) this.f4797y.f;
    }

    @Override // f6.e
    public int getCircularRevealScrimColor() {
        return ((Paint) this.f4797y.d).getColor();
    }

    @Override // f6.e
    public d getRevealInfo() {
        return this.f4797y.d();
    }

    @Override // f6.e
    public final boolean h() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        b bVar = this.f4797y;
        return bVar != null ? bVar.e() : super.isOpaque();
    }

    @Override // f6.e
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4797y.f(drawable);
    }

    @Override // f6.e
    public void setCircularRevealScrimColor(int i6) {
        this.f4797y.g(i6);
    }

    @Override // f6.e
    public void setRevealInfo(d dVar) {
        this.f4797y.h(dVar);
    }
}
