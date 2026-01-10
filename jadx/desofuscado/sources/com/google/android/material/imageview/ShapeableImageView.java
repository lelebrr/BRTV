package com.google.android.material.imageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.p2elite.brtv2.R;
import u6.h;
import u6.m;
import u6.n;
import u6.o;
import u6.x;
import u7.d;
import y6.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements x {
    public final o d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f4937e;
    public final RectF f;

    /* renamed from: g, reason: collision with root package name */
    public final Paint f4938g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f4939h;

    /* renamed from: i, reason: collision with root package name */
    public final Path f4940i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f4941j;

    /* renamed from: k, reason: collision with root package name */
    public h f4942k;

    /* renamed from: l, reason: collision with root package name */
    public m f4943l;

    /* renamed from: m, reason: collision with root package name */
    public float f4944m;

    /* renamed from: n, reason: collision with root package name */
    public final Path f4945n;

    /* renamed from: o, reason: collision with root package name */
    public final int f4946o;

    /* renamed from: p, reason: collision with root package name */
    public final int f4947p;

    /* renamed from: q, reason: collision with root package name */
    public final int f4948q;

    /* renamed from: r, reason: collision with root package name */
    public final int f4949r;

    /* renamed from: s, reason: collision with root package name */
    public final int f4950s;

    /* renamed from: t, reason: collision with root package name */
    public final int f4951t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4952u;

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final boolean c() {
        return getLayoutDirection() == 1;
    }

    public final void d(int i6, int i10) {
        RectF rectF = this.f4937e;
        rectF.set(getPaddingLeft(), getPaddingTop(), i6 - getPaddingRight(), i10 - getPaddingBottom());
        m mVar = this.f4943l;
        Path path = this.f4940i;
        this.d.a(mVar, 1.0f, rectF, null, path);
        Path path2 = this.f4945n;
        path2.rewind();
        path2.addPath(path);
        RectF rectF2 = this.f;
        rectF2.set(0.0f, 0.0f, i6, i10);
        path2.addRect(rectF2, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.f4949r;
    }

    public final int getContentPaddingEnd() {
        int i6 = this.f4951t;
        return i6 != Integer.MIN_VALUE ? i6 : c() ? this.f4946o : this.f4948q;
    }

    public int getContentPaddingLeft() {
        int i6;
        int i10;
        if (this.f4950s != Integer.MIN_VALUE || this.f4951t != Integer.MIN_VALUE) {
            if (c() && (i10 = this.f4951t) != Integer.MIN_VALUE) {
                return i10;
            }
            if (!c() && (i6 = this.f4950s) != Integer.MIN_VALUE) {
                return i6;
            }
        }
        return this.f4946o;
    }

    public int getContentPaddingRight() {
        int i6;
        int i10;
        if (this.f4950s != Integer.MIN_VALUE || this.f4951t != Integer.MIN_VALUE) {
            if (c() && (i10 = this.f4950s) != Integer.MIN_VALUE) {
                return i10;
            }
            if (!c() && (i6 = this.f4951t) != Integer.MIN_VALUE) {
                return i6;
            }
        }
        return this.f4948q;
    }

    public final int getContentPaddingStart() {
        int i6 = this.f4950s;
        return i6 != Integer.MIN_VALUE ? i6 : c() ? this.f4948q : this.f4946o;
    }

    public int getContentPaddingTop() {
        return this.f4947p;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    public m getShapeAppearanceModel() {
        return this.f4943l;
    }

    public ColorStateList getStrokeColor() {
        return this.f4941j;
    }

    public float getStrokeWidth() {
        return this.f4944m;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f4945n, this.f4939h);
        if (this.f4941j == null) {
            return;
        }
        Paint paint = this.f4938g;
        paint.setStrokeWidth(this.f4944m);
        int colorForState = this.f4941j.getColorForState(getDrawableState(), this.f4941j.getDefaultColor());
        if (this.f4944m <= 0.0f || colorForState == 0) {
            return;
        }
        paint.setColor(colorForState);
        canvas.drawPath(this.f4940i, paint);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        if (!this.f4952u && isLayoutDirectionResolved()) {
            this.f4952u = true;
            if (!isPaddingRelative() && this.f4950s == Integer.MIN_VALUE && this.f4951t == Integer.MIN_VALUE) {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            } else {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        d(i6, i10);
    }

    @Override // android.view.View
    public final void setPadding(int i6, int i10, int i11, int i12) {
        super.setPadding(getContentPaddingLeft() + i6, getContentPaddingTop() + i10, getContentPaddingRight() + i11, getContentPaddingBottom() + i12);
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i6, int i10, int i11, int i12) {
        super.setPaddingRelative(getContentPaddingStart() + i6, getContentPaddingTop() + i10, getContentPaddingEnd() + i11, getContentPaddingBottom() + i12);
    }

    @Override // u6.x
    public void setShapeAppearanceModel(m mVar) {
        this.f4943l = mVar;
        h hVar = this.f4942k;
        if (hVar != null) {
            hVar.setShapeAppearanceModel(mVar);
        }
        d(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f4941j = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i6) {
        setStrokeColor(d.k(getContext(), i6));
    }

    public void setStrokeWidth(float f) {
        if (this.f4944m != f) {
            this.f4944m = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i6) {
        setStrokeWidth(getResources().getDimensionPixelSize(i6));
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet, int i6) {
        super(a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_ShapeableImageView), attributeSet, i6);
        this.d = n.f10410a;
        this.f4940i = new Path();
        this.f4952u = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f4939h = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f4937e = new RectF();
        this.f = new RectF();
        this.f4945n = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, x5.a.T, i6, R.style.Widget_MaterialComponents_ShapeableImageView);
        this.f4941j = com.bumptech.glide.d.k(context2, typedArrayObtainStyledAttributes, 9);
        this.f4944m = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f4946o = dimensionPixelSize;
        this.f4947p = dimensionPixelSize;
        this.f4948q = dimensionPixelSize;
        this.f4949r = dimensionPixelSize;
        this.f4946o = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, dimensionPixelSize);
        this.f4947p = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, dimensionPixelSize);
        this.f4948q = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, dimensionPixelSize);
        this.f4949r = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, dimensionPixelSize);
        this.f4950s = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, Integer.MIN_VALUE);
        this.f4951t = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f4938g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f4943l = m.b(context2, attributeSet, i6, R.style.Widget_MaterialComponents_ShapeableImageView).a();
        setOutlineProvider(new m6.a(this));
    }
}
