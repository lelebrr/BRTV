package o;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public float f8508a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f8509b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f8510c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public float f8511e;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f8513h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f8514i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f8515j;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8512g = true;

    /* renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f8516k = PorterDuff.Mode.SRC_IN;

    public a(ColorStateList colorStateList, float f) {
        this.f8508a = f;
        Paint paint = new Paint(5);
        this.f8509b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f8513h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f8513h.getDefaultColor()));
        this.f8510c = new RectF();
        this.d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        RectF rectF = this.f8510c;
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.d;
        rect2.set(rect);
        if (this.f) {
            rect2.inset((int) Math.ceil(b.a(this.f8511e, this.f8508a, this.f8512g)), (int) Math.ceil(b.b(this.f8511e, this.f8508a, this.f8512g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z7;
        Paint paint = this.f8509b;
        if (this.f8514i == null || paint.getColorFilter() != null) {
            z7 = false;
        } else {
            paint.setColorFilter(this.f8514i);
            z7 = true;
        }
        RectF rectF = this.f8510c;
        float f = this.f8508a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z7) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.d, this.f8508a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f8515j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f8513h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f8513h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f8509b;
        boolean z7 = colorForState != paint.getColor();
        if (z7) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f8515j;
        if (colorStateList2 == null || (mode = this.f8516k) == null) {
            return z7;
        }
        this.f8514i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f8509b.setAlpha(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f8509b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f8515j = colorStateList;
        this.f8514i = a(colorStateList, this.f8516k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f8516k = mode;
        this.f8514i = a(this.f8515j, mode);
        invalidateSelf();
    }
}
