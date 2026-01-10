package g0;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends Drawable implements Drawable.Callback, i, h {

    /* renamed from: g, reason: collision with root package name */
    public static final PorterDuff.Mode f7051g = PorterDuff.Mode.SRC_IN;

    /* renamed from: h, reason: collision with root package name */
    public static Method f7052h;

    /* renamed from: a, reason: collision with root package name */
    public int f7053a;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f7054b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7055c;
    public k d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7056e;
    public Drawable f;

    public static void a() {
        if (f7052h == null) {
            try {
                f7052h = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception e5) {
                Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e5);
            }
        }
    }

    public final boolean b() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    public final k c() {
        k kVar = this.d;
        k kVar2 = new k();
        kVar2.f7059c = null;
        kVar2.d = f7051g;
        if (kVar != null) {
            kVar2.f7057a = kVar.f7057a;
            kVar2.f7058b = kVar.f7058b;
            kVar2.f7059c = kVar.f7059c;
            kVar2.d = kVar.d;
        }
        return kVar2;
    }

    public final boolean d(int[] iArr) {
        return i(iArr) || this.f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        this.f.draw(canvas);
    }

    public final void e(int i6) {
        setTintList(ColorStateList.valueOf(i6));
    }

    public final void f(ColorStateList colorStateList) {
        this.d.f7059c = colorStateList;
        i(this.f.getState());
    }

    public final void g(PorterDuff.Mode mode) {
        this.d.d = mode;
        i(this.f.getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        k kVar = this.d;
        return changingConfigurations | (kVar != null ? kVar.getChangingConfigurations() : 0) | this.f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        k kVar = this.d;
        if (kVar == null || kVar.f7058b == null) {
            return null;
        }
        kVar.f7057a = getChangingConfigurations();
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public final Rect getDirtyBounds() {
        return this.f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getLayoutDirection() {
        return n5.d.w(this.f);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return this.f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return this.f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        this.f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        return this.f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final int[] getState() {
        return this.f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        return this.f.getTransparentRegion();
    }

    public final void h(Drawable drawable) {
        Drawable drawable2 = this.f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            k kVar = this.d;
            if (kVar != null) {
                kVar.f7058b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    public final boolean i(int[] iArr) {
        if (!b()) {
            return false;
        }
        k kVar = this.d;
        ColorStateList colorStateList = kVar.f7059c;
        PorterDuff.Mode mode = kVar.d;
        if (colorStateList == null || mode == null) {
            this.f7055c = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f7055c || colorForState != this.f7053a || mode != this.f7054b) {
                setColorFilter(colorForState, mode);
                this.f7053a = colorForState;
                this.f7054b = mode;
                this.f7055c = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isProjected() {
        Method method;
        Drawable drawable = this.f;
        if (drawable == null || (method = f7052h) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, null)).booleanValue();
        } catch (Exception e5) {
            Log.w("WrappedDrawableApi21", "Error calling Drawable#isProjected() method", e5);
            return false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        k kVar;
        ColorStateList colorStateList = (!b() || (kVar = this.d) == null) ? null : kVar.f7059c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f7056e && super.mutate() == this) {
            this.d = c();
            Drawable drawable = this.f;
            if (drawable != null) {
                drawable.mutate();
            }
            k kVar = this.d;
            if (kVar != null) {
                Drawable drawable2 = this.f;
                kVar.f7058b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f7056e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i6) {
        return n5.d.Q(this.f, i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        return this.f.setLevel(i6);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f.setAlpha(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        this.f.setAutoMirrored(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setChangingConfigurations(int i6) {
        this.f.setChangingConfigurations(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z7) {
        this.f.setDither(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z7) {
        this.f.setFilterBitmap(z7);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f3) {
        this.f.setHotspot(f, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i6, int i10, int i11, int i12) {
        this.f.setHotspotBounds(i6, i10, i11, i12);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setState(int[] iArr) {
        if (!d(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        if (b()) {
            e(i6);
        } else {
            this.f.setTint(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (b()) {
            f(colorStateList);
        } else {
            this.f.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (b()) {
            g(mode);
        } else {
            this.f.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        return super.setVisible(z7, z10) || this.f.setVisible(z7, z10);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
