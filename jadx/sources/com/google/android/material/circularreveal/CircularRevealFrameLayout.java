package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import c2.b;
import f6.d;
import f6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircularRevealFrameLayout extends FrameLayout implements e {

    /* renamed from: a, reason: collision with root package name */
    public final b f4792a;

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4792a = new b(this);
    }

    @Override // f6.e
    public final void c() {
        this.f4792a.getClass();
    }

    @Override // f6.e
    public final void d(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        b bVar = this.f4792a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // f6.e
    public final void e() {
        this.f4792a.getClass();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return (Drawable) this.f4792a.f;
    }

    @Override // f6.e
    public int getCircularRevealScrimColor() {
        return ((Paint) this.f4792a.d).getColor();
    }

    @Override // f6.e
    public d getRevealInfo() {
        return this.f4792a.d();
    }

    @Override // f6.e
    public final boolean h() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        b bVar = this.f4792a;
        return bVar != null ? bVar.e() : super.isOpaque();
    }

    @Override // f6.e
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4792a.f(drawable);
    }

    @Override // f6.e
    public void setCircularRevealScrimColor(int i6) {
        this.f4792a.g(i6);
    }

    @Override // f6.e
    public void setRevealInfo(d dVar) {
        this.f4792a.h(dVar);
    }
}
