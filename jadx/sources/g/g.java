package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.alibaba.fastjson.asm.Opcodes;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g extends Drawable implements Drawable.Callback {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f7030m = 0;

    /* renamed from: a, reason: collision with root package name */
    public b f7031a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f7032b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f7033c;
    public Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public int f7034e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f7035g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7036h;

    /* renamed from: i, reason: collision with root package name */
    public a.f f7037i;

    /* renamed from: j, reason: collision with root package name */
    public long f7038j;

    /* renamed from: k, reason: collision with root package name */
    public long f7039k;

    /* renamed from: l, reason: collision with root package name */
    public f f7040l;

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f7033c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L38
            long r9 = r13.f7038j
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f7034e
            r3.setAlpha(r9)
            r13.f7038j = r6
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            g.b r9 = r13.f7031a
            int r9 = r9.f7014y
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.f7034e
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.f7038j = r6
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.d
            if (r9 == 0) goto L65
            long r10 = r13.f7039k
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r8, r8)
            r0 = 0
            r13.d = r0
            r13.f7039k = r6
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            g.b r4 = r13.f7031a
            int r4 = r4.f7015z
            int r3 = r3 / r4
            int r4 = r13.f7034e
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.f7039k = r6
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            a.f r14 = r13.f7037i
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: g.g.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        b bVar = this.f7031a;
        if (theme == null) {
            bVar.getClass();
            return;
        }
        bVar.c();
        int i6 = bVar.f6997h;
        Drawable[] drawableArr = bVar.f6996g;
        for (int i10 = 0; i10 < i6; i10++) {
            Drawable drawable = drawableArr[i10];
            if (drawable != null && g0.a.b(drawable)) {
                g0.a.a(drawableArr[i10], theme);
                bVar.f6995e |= drawableArr[i10].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            bVar.f6993b = resources;
            int i11 = resources.getDisplayMetrics().densityDpi;
            if (i11 == 0) {
                i11 = Opcodes.IF_ICMPNE;
            }
            int i12 = bVar.f6994c;
            bVar.f6994c = i11;
            if (i12 != i11) {
                bVar.f7002m = false;
                bVar.f6999j = false;
            }
        }
    }

    public final void b(Drawable drawable) {
        if (this.f7040l == null) {
            this.f7040l = new f();
        }
        f fVar = this.f7040l;
        fVar.f7029b = drawable.getCallback();
        drawable.setCallback(fVar);
        try {
            if (this.f7031a.f7014y <= 0 && this.f) {
                drawable.setAlpha(this.f7034e);
            }
            b bVar = this.f7031a;
            if (bVar.C) {
                drawable.setColorFilter(bVar.B);
            } else {
                if (bVar.F) {
                    g0.a.h(drawable, bVar.D);
                }
                b bVar2 = this.f7031a;
                if (bVar2.G) {
                    g0.a.i(drawable, bVar2.E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f7031a.f7012w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                n5.d.Q(drawable, n5.d.w(this));
            }
            drawable.setAutoMirrored(this.f7031a.A);
            Rect rect = this.f7032b;
            if (rect != null) {
                g0.a.f(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
            f fVar2 = this.f7040l;
            Drawable.Callback callback = (Drawable.Callback) fVar2.f7029b;
            fVar2.f7029b = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            f fVar3 = this.f7040l;
            Drawable.Callback callback2 = (Drawable.Callback) fVar3.f7029b;
            fVar3.f7029b = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(int r10) {
        /*
            r9 = this;
            int r0 = r9.f7035g
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            g.b r0 = r9.f7031a
            int r0 = r0.f7015z
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.d
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f7033c
            if (r0 == 0) goto L29
            r9.d = r0
            g.b r0 = r9.f7031a
            int r0 = r0.f7015z
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f7039k = r0
            goto L35
        L29:
            r9.d = r4
            r9.f7039k = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f7033c
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            g.b r0 = r9.f7031a
            int r1 = r0.f6997h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.d(r10)
            r9.f7033c = r0
            r9.f7035g = r10
            if (r0 == 0) goto L5a
            g.b r10 = r9.f7031a
            int r10 = r10.f7014y
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f7038j = r2
        L51:
            r9.b(r0)
            goto L5a
        L55:
            r9.f7033c = r4
            r10 = -1
            r9.f7035g = r10
        L5a:
            long r0 = r9.f7038j
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.f7039k
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L7e
        L67:
            a.f r0 = r9.f7037i
            if (r0 != 0) goto L78
            a.f r0 = new a.f
            r1 = r9
            g.e r1 = (g.e) r1
            r2 = 17
            r0.<init>(r2, r1)
            r9.f7037i = r0
            goto L7b
        L78:
            r9.unscheduleSelf(r0)
        L7b:
            r9.a(r10)
        L7e:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: g.g.c(int):boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f7031a.canApplyTheme();
    }

    public abstract void d(b bVar);

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f7034e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f7031a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z7;
        b bVar = this.f7031a;
        if (!bVar.f7010u) {
            bVar.c();
            bVar.f7010u = true;
            int i6 = bVar.f6997h;
            Drawable[] drawableArr = bVar.f6996g;
            int i10 = 0;
            while (true) {
                if (i10 >= i6) {
                    bVar.f7011v = true;
                    z7 = true;
                    break;
                }
                if (drawableArr[i10].getConstantState() == null) {
                    bVar.f7011v = false;
                    z7 = false;
                    break;
                }
                i10++;
            }
        } else {
            z7 = bVar.f7011v;
        }
        if (!z7) {
            return null;
        }
        this.f7031a.d = getChangingConfigurations();
        return this.f7031a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f7033c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f7032b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f7031a;
        if (bVar.f7001l) {
            if (!bVar.f7002m) {
                bVar.b();
            }
            return bVar.f7004o;
        }
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f7031a;
        if (bVar.f7001l) {
            if (!bVar.f7002m) {
                bVar.b();
            }
            return bVar.f7003n;
        }
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f7031a;
        if (bVar.f7001l) {
            if (!bVar.f7002m) {
                bVar.b();
            }
            return bVar.f7006q;
        }
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f7031a;
        if (bVar.f7001l) {
            if (!bVar.f7002m) {
                bVar.b();
            }
            return bVar.f7005p;
        }
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable = this.f7033c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        b bVar = this.f7031a;
        if (bVar.f7007r) {
            return bVar.f7008s;
        }
        bVar.c();
        int i6 = bVar.f6997h;
        Drawable[] drawableArr = bVar.f6996g;
        int opacity = i6 > 0 ? drawableArr[0].getOpacity() : -2;
        for (int i10 = 1; i10 < i6; i10++) {
            opacity = Drawable.resolveOpacity(opacity, drawableArr[i10].getOpacity());
        }
        bVar.f7008s = opacity;
        bVar.f7007r = true;
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        b bVar = this.f7031a;
        boolean padding = false;
        Rect rect2 = null;
        if (!bVar.f6998i) {
            Rect rect3 = bVar.f7000k;
            if (rect3 != null || bVar.f6999j) {
                rect2 = rect3;
            } else {
                bVar.c();
                Rect rect4 = new Rect();
                int i6 = bVar.f6997h;
                Drawable[] drawableArr = bVar.f6996g;
                for (int i10 = 0; i10 < i6; i10++) {
                    if (drawableArr[i10].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i11 = rect4.left;
                        if (i11 > rect2.left) {
                            rect2.left = i11;
                        }
                        int i12 = rect4.top;
                        if (i12 > rect2.top) {
                            rect2.top = i12;
                        }
                        int i13 = rect4.right;
                        if (i13 > rect2.right) {
                            rect2.right = i13;
                        }
                        int i14 = rect4.bottom;
                        if (i14 > rect2.bottom) {
                            rect2.bottom = i14;
                        }
                    }
                }
                bVar.f6999j = true;
                bVar.f7000k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                padding = true;
            }
        } else {
            Drawable drawable = this.f7033c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f7031a.A && n5.d.w(this) == 1) {
            int i15 = rect.left;
            rect.left = rect.right;
            rect.right = i15;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        b bVar = this.f7031a;
        if (bVar != null) {
            bVar.f7007r = false;
            bVar.f7009t = false;
        }
        if (drawable != this.f7033c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f7031a.A;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z7;
        Drawable drawable = this.d;
        boolean z10 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.d = null;
            z7 = true;
        } else {
            z7 = false;
        }
        Drawable drawable2 = this.f7033c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f) {
                this.f7033c.setAlpha(this.f7034e);
            }
        }
        if (this.f7039k != 0) {
            this.f7039k = 0L;
            z7 = true;
        }
        if (this.f7038j != 0) {
            this.f7038j = 0L;
        } else {
            z10 = z7;
        }
        if (z10) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f7036h && super.mutate() == this) {
            e eVar = (e) this;
            b bVar = new b(eVar.f7023p, eVar, null);
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            d(bVar);
            this.f7036h = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f7033c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i6) {
        b bVar = this.f7031a;
        int i10 = this.f7035g;
        int i11 = bVar.f6997h;
        Drawable[] drawableArr = bVar.f6996g;
        boolean z7 = false;
        for (int i12 = 0; i12 < i11; i12++) {
            Drawable drawable = drawableArr[i12];
            if (drawable != null) {
                boolean zQ = Build.VERSION.SDK_INT >= 23 ? n5.d.Q(drawable, i6) : false;
                if (i12 == i10) {
                    z7 = zQ;
                }
            }
        }
        bVar.f7013x = i6;
        return z7;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.setLevel(i6);
        }
        Drawable drawable2 = this.f7033c;
        if (drawable2 != null) {
            return drawable2.setLevel(i6);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        if (drawable != this.f7033c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        if (this.f && this.f7034e == i6) {
            return;
        }
        this.f = true;
        this.f7034e = i6;
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            if (this.f7038j == 0) {
                drawable.setAlpha(i6);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        b bVar = this.f7031a;
        if (bVar.A != z7) {
            bVar.A = z7;
            Drawable drawable = this.f7033c;
            if (drawable != null) {
                drawable.setAutoMirrored(z7);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        b bVar = this.f7031a;
        bVar.C = true;
        if (bVar.B != colorFilter) {
            bVar.B = colorFilter;
            Drawable drawable = this.f7033c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z7) {
        b bVar = this.f7031a;
        if (bVar.f7012w != z7) {
            bVar.f7012w = z7;
            Drawable drawable = this.f7033c;
            if (drawable != null) {
                drawable.setDither(z7);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f3) {
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            g0.a.e(drawable, f, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i6, int i10, int i11, int i12) {
        Rect rect = this.f7032b;
        if (rect == null) {
            this.f7032b = new Rect(i6, i10, i11, i12);
        } else {
            rect.set(i6, i10, i11, i12);
        }
        Drawable drawable = this.f7033c;
        if (drawable != null) {
            g0.a.f(drawable, i6, i10, i11, i12);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        setTintList(ColorStateList.valueOf(i6));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        b bVar = this.f7031a;
        bVar.F = true;
        if (bVar.D != colorStateList) {
            bVar.D = colorStateList;
            g0.a.h(this.f7033c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f7031a;
        bVar.G = true;
        if (bVar.E != mode) {
            bVar.E = mode;
            g0.a.i(this.f7033c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z7, boolean z10) {
        boolean visible = super.setVisible(z7, z10);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setVisible(z7, z10);
        }
        Drawable drawable2 = this.f7033c;
        if (drawable2 != null) {
            drawable2.setVisible(z7, z10);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f7033c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
