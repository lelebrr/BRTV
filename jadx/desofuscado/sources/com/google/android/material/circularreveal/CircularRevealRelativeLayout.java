package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import c2.b;
import f6.d;
import f6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircularRevealRelativeLayout extends RelativeLayout implements e {

    /* renamed from: a, reason: collision with root package name */
    public final b f4795a;

    public CircularRevealRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4795a = new b(this);
    }

    @Override // f6.e
    public final void c() {
        this.f4795a.getClass();
    }

    @Override // f6.e
    public final void d(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        b bVar = this.f4795a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // f6.e
    public final void e() {
        this.f4795a.getClass();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return (Drawable) this.f4795a.f;
    }

    @Override // f6.e
    public int getCircularRevealScrimColor() {
        return ((Paint) this.f4795a.d).getColor();
    }

    @Override // f6.e
    public d getRevealInfo() {
        return this.f4795a.d();
    }

    @Override // f6.e
    public final boolean h() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        b bVar = this.f4795a;
        return bVar != null ? bVar.e() : super.isOpaque();
    }

    @Override // f6.e
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4795a.f(drawable);
    }

    @Override // f6.e
    public void setCircularRevealScrimColor(int i6) {
        this.f4795a.g(i6);
    }

    @Override // f6.e
    public void setRevealInfo(d dVar) {
        this.f4795a.h(dVar);
    }
}
