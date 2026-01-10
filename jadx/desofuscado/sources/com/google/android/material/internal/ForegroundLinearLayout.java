package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.LinearLayoutCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: p, reason: collision with root package name */
    public Drawable f4960p;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f4961q;

    /* renamed from: r, reason: collision with root package name */
    public final Rect f4962r;

    /* renamed from: s, reason: collision with root package name */
    public int f4963s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f4964t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4965u;

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f4960p;
        if (drawable != null) {
            if (this.f4965u) {
                this.f4965u = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z7 = this.f4964t;
                Rect rect = this.f4961q;
                if (z7) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i6 = this.f4963s;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f4962r;
                Gravity.apply(i6, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f, float f3) {
        super.drawableHotspotChanged(f, f3);
        Drawable drawable = this.f4960p;
        if (drawable != null) {
            drawable.setHotspot(f, f3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f4960p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f4960p.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f4960p;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f4963s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f4960p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        this.f4965u = z7 | this.f4965u;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        this.f4965u = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f4960p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f4960p);
            }
            this.f4960p = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f4963s == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i6) {
        if (this.f4963s != i6) {
            if ((8388615 & i6) == 0) {
                i6 |= 8388611;
            }
            if ((i6 & 112) == 0) {
                i6 |= 48;
            }
            this.f4963s = i6;
            if (i6 == 119 && this.f4960p != null) {
                this.f4960p.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4960p;
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f4961q = new Rect();
        this.f4962r = new Rect();
        this.f4963s = 119;
        this.f4964t = true;
        this.f4965u = false;
        TypedArray typedArrayJ = a0.j(context, attributeSet, x5.a.f11040u, i6, 0, new int[0]);
        this.f4963s = typedArrayJ.getInt(1, this.f4963s);
        Drawable drawable = typedArrayJ.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f4964t = typedArrayJ.getBoolean(2, true);
        typedArrayJ.recycle();
    }
}
