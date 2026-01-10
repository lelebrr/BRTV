package s6;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import g0.h;
import u6.m;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends Drawable implements x, h {

    /* renamed from: a, reason: collision with root package name */
    public a f9822a;

    public b(a aVar) {
        this.f9822a = aVar;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        a aVar = this.f9822a;
        if (aVar.f9821b) {
            aVar.f9820a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f9822a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        this.f9822a.f9820a.getClass();
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f9822a = new a(this.f9822a);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f9822a.f9820a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f9822a.f9820a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zC = c.c(iArr);
        a aVar = this.f9822a;
        if (aVar.f9821b == zC) {
            return zOnStateChange;
        }
        aVar.f9821b = zC;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f9822a.f9820a.setAlpha(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f9822a.f9820a.setColorFilter(colorFilter);
    }

    @Override // u6.x
    public final void setShapeAppearanceModel(m mVar) {
        this.f9822a.f9820a.setShapeAppearanceModel(mVar);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        this.f9822a.f9820a.setTint(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f9822a.f9820a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f9822a.f9820a.setTintMode(mode);
    }
}
