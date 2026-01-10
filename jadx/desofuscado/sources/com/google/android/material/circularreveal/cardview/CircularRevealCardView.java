package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import c2.b;
import com.google.android.material.card.MaterialCardView;
import f6.d;
import f6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CircularRevealCardView extends MaterialCardView implements e {

    /* renamed from: o, reason: collision with root package name */
    public final b f4796o;

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4796o = new b(this);
    }

    @Override // f6.e
    public final void c() {
        this.f4796o.getClass();
    }

    @Override // f6.e
    public final void d(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        b bVar = this.f4796o;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // f6.e
    public final void e() {
        this.f4796o.getClass();
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return (Drawable) this.f4796o.f;
    }

    @Override // f6.e
    public int getCircularRevealScrimColor() {
        return ((Paint) this.f4796o.d).getColor();
    }

    @Override // f6.e
    public d getRevealInfo() {
        return this.f4796o.d();
    }

    @Override // f6.e
    public final boolean h() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        b bVar = this.f4796o;
        return bVar != null ? bVar.e() : super.isOpaque();
    }

    @Override // f6.e
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        this.f4796o.f(drawable);
    }

    @Override // f6.e
    public void setCircularRevealScrimColor(int i6) {
        this.f4796o.g(i6);
    }

    @Override // f6.e
    public void setRevealInfo(d dVar) {
        this.f4796o.h(dVar);
    }
}
