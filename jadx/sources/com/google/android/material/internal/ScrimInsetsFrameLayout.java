package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.g0;
import n0.r1;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f4971a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f4972b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f4973c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f4974e;

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f4972b == null || this.f4971a == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        boolean z7 = this.d;
        Rect rect = this.f4973c;
        if (z7) {
            rect.set(0, 0, width, this.f4972b.top);
            this.f4971a.setBounds(rect);
            this.f4971a.draw(canvas);
        }
        if (this.f4974e) {
            rect.set(0, height - this.f4972b.bottom, width, height);
            this.f4971a.setBounds(rect);
            this.f4971a.draw(canvas);
        }
        Rect rect2 = this.f4972b;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f4971a.setBounds(rect);
        this.f4971a.draw(canvas);
        Rect rect3 = this.f4972b;
        rect.set(width - rect3.right, rect3.top, width, height - rect3.bottom);
        this.f4971a.setBounds(rect);
        this.f4971a.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f4971a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f4971a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z7) {
        this.f4974e = z7;
    }

    public void setDrawTopInsetForeground(boolean z7) {
        this.d = z7;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f4971a = drawable;
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f4973c = new Rect();
        this.d = true;
        this.f4974e = true;
        TypedArray typedArrayJ = a0.j(context, attributeSet, x5.a.Q, i6, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f4971a = typedArrayJ.getDrawable(0);
        typedArrayJ.recycle();
        setWillNotDraw(true);
        a0.b bVar = new a0.b(17, this);
        WeakHashMap weakHashMap = s0.f8353a;
        g0.u(this, bVar);
    }

    public void a(r1 r1Var) {
    }
}
