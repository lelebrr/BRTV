package z1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends e implements Animatable {

    /* renamed from: c, reason: collision with root package name */
    public final Context f11454c;
    public final g.f d = new g.f(this);

    /* renamed from: b, reason: collision with root package name */
    public final b f11453b = new b();

    public c(Context context) {
        this.f11454c = context;
    }

    @Override // z1.e, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.a(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return g0.a.b(drawable);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        b bVar = this.f11453b;
        bVar.f11450a.draw(canvas);
        if (bVar.f11451b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getAlpha() : this.f11453b.f11450a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f11453b.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f11456a;
        return drawable != null ? g0.a.c(drawable) : this.f11453b.f11450a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f11456a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new i3.c(2, this.f11456a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f11453b.f11450a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f11453b.f11450a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getOpacity() : this.f11453b.f11450a.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0175, code lost:
    
        if (r8.f11451b != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0177, code lost:
    
        r8.f11451b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x017e, code lost:
    
        r8.f11451b.playTogether(r8.f11452c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0185, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a7  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void inflate(android.content.res.Resources r22, org.xmlpull.v1.XmlPullParser r23, android.util.AttributeSet r24, android.content.res.Resources.Theme r25) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z1.c.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.isAutoMirrored() : this.f11453b.f11450a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f11456a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f11453b.f11451b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.isStateful() : this.f11453b.f11450a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f11453b.f11450a.setBounds(rect);
        }
    }

    @Override // z1.e, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.setLevel(i6) : this.f11453b.f11450a.setLevel(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.setState(iArr) : this.f11453b.f11450a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setAlpha(i6);
        } else {
            this.f11453b.f11450a.setAlpha(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setAutoMirrored(z7);
        } else {
            this.f11453b.f11450a.setAutoMirrored(z7);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f11453b.f11450a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            n5.d.S(drawable, i6);
        } else {
            this.f11453b.f11450a.setTint(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.h(drawable, colorStateList);
        } else {
            this.f11453b.f11450a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.i(drawable, mode);
        } else {
            this.f11453b.f11450a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return drawable.setVisible(z7, z10);
        }
        this.f11453b.f11450a.setVisible(z7, z10);
        return super.setVisible(z7, z10);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        b bVar = this.f11453b;
        if (bVar.f11451b.isStarted()) {
            return;
        }
        bVar.f11451b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f11453b.f11451b.end();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, Resources.NotFoundException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
