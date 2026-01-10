package f2;

import a.e;
import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import java.util.ArrayList;
import n2.g;
import q6.c;
import r4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: a, reason: collision with root package name */
    public final g f6777a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6778b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6779c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6780e = new ArrayList();
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f6781g;

    /* renamed from: h, reason: collision with root package name */
    public long f6782h;

    /* renamed from: i, reason: collision with root package name */
    public int f6783i;

    /* renamed from: j, reason: collision with root package name */
    public int f6784j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f6785k;

    /* renamed from: l, reason: collision with root package name */
    public final Drawable f6786l;

    public a(Drawable drawable, Drawable drawable2, g gVar, int i6, boolean z7, boolean z10) {
        this.f6777a = gVar;
        this.f6778b = i6;
        this.f6779c = z7;
        this.d = z10;
        this.f = a(drawable != null ? Integer.valueOf(drawable.getIntrinsicWidth()) : null, drawable2 != null ? Integer.valueOf(drawable2.getIntrinsicWidth()) : null);
        this.f6781g = a(drawable != null ? Integer.valueOf(drawable.getIntrinsicHeight()) : null, drawable2 != null ? Integer.valueOf(drawable2.getIntrinsicHeight()) : null);
        this.f6783i = 255;
        this.f6785k = drawable != null ? drawable.mutate() : null;
        Drawable drawableMutate = drawable2 != null ? drawable2.mutate() : null;
        this.f6786l = drawableMutate;
        if (i6 <= 0) {
            throw new IllegalArgumentException("durationMillis must be > 0.");
        }
        Drawable drawable3 = this.f6785k;
        if (drawable3 != null) {
            drawable3.setCallback(this);
        }
        if (drawableMutate == null) {
            return;
        }
        drawableMutate.setCallback(this);
    }

    public final int a(Integer num, Integer num2) {
        if (this.d || ((num == null || num.intValue() != -1) && (num2 == null || num2.intValue() != -1))) {
            return Math.max(num != null ? num.intValue() : -1, num2 != null ? num2.intValue() : -1);
        }
        return -1;
    }

    public final void b() {
        this.f6784j = 2;
        this.f6785k = null;
        ArrayList arrayList = this.f6780e;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((c) arrayList.get(i6)).a();
        }
    }

    public final void c(Drawable drawable, Rect rect) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            drawable.setBounds(rect);
            return;
        }
        int iWidth = rect.width();
        int iHeight = rect.height();
        double dJ = l5.a.j(intrinsicWidth, intrinsicHeight, iWidth, iHeight, this.f6777a);
        double d = 2;
        int iJ = b.J((iWidth - (intrinsicWidth * dJ)) / d);
        int iJ2 = b.J((iHeight - (dJ * intrinsicHeight)) / d);
        drawable.setBounds(rect.left + iJ, rect.top + iJ2, rect.right - iJ, rect.bottom - iJ2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int iSave;
        Drawable drawable;
        int i6 = this.f6784j;
        if (i6 == 0) {
            Drawable drawable2 = this.f6785k;
            if (drawable2 != null) {
                drawable2.setAlpha(this.f6783i);
                iSave = canvas.save();
                try {
                    drawable2.draw(canvas);
                    return;
                } finally {
                }
            }
            return;
        }
        Drawable drawable3 = this.f6786l;
        if (i6 == 2) {
            if (drawable3 != null) {
                drawable3.setAlpha(this.f6783i);
                iSave = canvas.save();
                try {
                    drawable3.draw(canvas);
                    return;
                } finally {
                }
            }
            return;
        }
        double dUptimeMillis = (SystemClock.uptimeMillis() - this.f6782h) / this.f6778b;
        double d = dUptimeMillis >= 0.0d ? dUptimeMillis > 1.0d ? 1.0d : dUptimeMillis : 0.0d;
        int i10 = this.f6783i;
        int i11 = (int) (d * i10);
        if (this.f6779c) {
            i10 -= i11;
        }
        boolean z7 = dUptimeMillis >= 1.0d;
        if (!z7 && (drawable = this.f6785k) != null) {
            drawable.setAlpha(i10);
            iSave = canvas.save();
            try {
                drawable.draw(canvas);
            } finally {
            }
        }
        if (drawable3 != null) {
            drawable3.setAlpha(i11);
            iSave = canvas.save();
            try {
                drawable3.draw(canvas);
            } finally {
            }
        }
        if (z7) {
            b();
        } else {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f6783i;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        ColorFilter colorFilter;
        int i6 = this.f6784j;
        if (i6 == 0) {
            Drawable drawable = this.f6785k;
            if (drawable != null) {
                return drawable.getColorFilter();
            }
            return null;
        }
        Drawable drawable2 = this.f6786l;
        if (i6 != 1) {
            if (i6 == 2 && drawable2 != null) {
                return drawable2.getColorFilter();
            }
            return null;
        }
        if (drawable2 != null && (colorFilter = drawable2.getColorFilter()) != null) {
            return colorFilter;
        }
        Drawable drawable3 = this.f6785k;
        if (drawable3 != null) {
            return drawable3.getColorFilter();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f6781g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f6785k;
        int i6 = this.f6784j;
        if (i6 == 0) {
            if (drawable != null) {
                return drawable.getOpacity();
            }
            return -2;
        }
        Drawable drawable2 = this.f6786l;
        if (i6 == 2) {
            if (drawable2 != null) {
                return drawable2.getOpacity();
            }
            return -2;
        }
        if (drawable != null && drawable2 != null) {
            return Drawable.resolveOpacity(drawable.getOpacity(), drawable2.getOpacity());
        }
        if (drawable != null) {
            return drawable.getOpacity();
        }
        if (drawable2 != null) {
            return drawable2.getOpacity();
        }
        return -2;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f6784j == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            c(drawable, rect);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 != null) {
            c(drawable2, rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        Drawable drawable = this.f6785k;
        boolean level = drawable != null ? drawable.setLevel(i6) : false;
        Drawable drawable2 = this.f6786l;
        return level || (drawable2 != null ? drawable2.setLevel(i6) : false);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f6785k;
        boolean state = drawable != null ? drawable.setState(iArr) : false;
        Drawable drawable2 = this.f6786l;
        return state || (drawable2 != null ? drawable2.setState(iArr) : false);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        if (i6 < 0 || i6 >= 256) {
            throw new IllegalArgumentException(e.n(i6, "Invalid alpha: ").toString());
        }
        this.f6783i = i6;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 == null) {
            return;
        }
        drawable2.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            drawable.setTint(i6);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 != null) {
            drawable2.setTint(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintBlendMode(BlendMode blendMode) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            drawable.setTintBlendMode(blendMode);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 != null) {
            drawable2.setTintBlendMode(blendMode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 != null) {
            drawable2.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f6785k;
        if (drawable != null) {
            drawable.setTintMode(mode);
        }
        Drawable drawable2 = this.f6786l;
        if (drawable2 != null) {
            drawable2.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Object obj = this.f6785k;
        Animatable animatable = obj instanceof Animatable ? (Animatable) obj : null;
        if (animatable != null) {
            animatable.start();
        }
        Object obj2 = this.f6786l;
        Animatable animatable2 = obj2 instanceof Animatable ? (Animatable) obj2 : null;
        if (animatable2 != null) {
            animatable2.start();
        }
        if (this.f6784j != 0) {
            return;
        }
        this.f6784j = 1;
        this.f6782h = SystemClock.uptimeMillis();
        ArrayList arrayList = this.f6780e;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((c) arrayList.get(i6)).getClass();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Object obj = this.f6785k;
        Animatable animatable = obj instanceof Animatable ? (Animatable) obj : null;
        if (animatable != null) {
            animatable.stop();
        }
        Object obj2 = this.f6786l;
        Animatable animatable2 = obj2 instanceof Animatable ? (Animatable) obj2 : null;
        if (animatable2 != null) {
            animatable2.stop();
        }
        if (this.f6784j != 2) {
            b();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
