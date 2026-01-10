package q6;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d extends ProgressBar {

    /* renamed from: a, reason: collision with root package name */
    public final e f9244a;

    /* renamed from: b, reason: collision with root package name */
    public int f9245b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9246c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public a f9247e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f9248g;

    /* renamed from: h, reason: collision with root package name */
    public final b f9249h;

    /* renamed from: i, reason: collision with root package name */
    public final b f9250i;

    /* renamed from: j, reason: collision with root package name */
    public final c f9251j;

    /* renamed from: k, reason: collision with root package name */
    public final c f9252k;

    public d(Context context, AttributeSet attributeSet, int i6, int i10) {
        super(y6.a.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_ProgressIndicator), attributeSet, i6);
        this.f = false;
        this.f9248g = 4;
        this.f9249h = new b(this, 0);
        this.f9250i = new b(this, 1);
        this.f9251j = new c(this, 0);
        this.f9252k = new c(this, 1);
        Context context2 = getContext();
        this.f9244a = a(context2, attributeSet);
        TypedArray typedArrayJ = a0.j(context2, attributeSet, x5.a.d, i6, i10, new int[0]);
        typedArrayJ.getInt(5, -1);
        this.d = Math.min(typedArrayJ.getInt(3, -1), 1000);
        typedArrayJ.recycle();
        this.f9247e = new a();
        this.f9246c = true;
    }

    private m getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().f9294l;
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().f9273l;
    }

    public abstract e a(Context context, AttributeSet attributeSet);

    public void b(int i6) {
        if (!isIndeterminate()) {
            super.setProgress(i6);
            if (getProgressDrawable() != null) {
                getProgressDrawable().jumpToCurrentState();
                return;
            }
            return;
        }
        if (getProgressDrawable() != null) {
            this.f9245b = i6;
            this.f = true;
            if (getIndeterminateDrawable().isVisible()) {
                a aVar = this.f9247e;
                ContentResolver contentResolver = getContext().getContentResolver();
                aVar.getClass();
                if (Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) != 0.0f) {
                    getIndeterminateDrawable().f9295m.d();
                    return;
                }
            }
            getIndeterminateDrawable();
            this.f9251j.a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0027, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c() {
        /*
            r2 = this;
            java.util.WeakHashMap r0 = n0.s0.f8353a
            boolean r0 = r2.isAttachedToWindow()
            if (r0 == 0) goto L2c
            int r0 = r2.getWindowVisibility()
            if (r0 != 0) goto L2c
            r0 = r2
        Lf:
            int r1 = r0.getVisibility()
            if (r1 == 0) goto L16
            goto L2c
        L16:
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L23
            int r0 = r2.getWindowVisibility()
            if (r0 != 0) goto L2c
            goto L27
        L23:
            boolean r1 = r0 instanceof android.view.View
            if (r1 != 0) goto L29
        L27:
            r0 = 1
            goto L2d
        L29:
            android.view.View r0 = (android.view.View) r0
            goto Lf
        L2c:
            r0 = 0
        L2d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: q6.d.c():boolean");
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f9244a.f;
    }

    public int[] getIndicatorColor() {
        return this.f9244a.f9255c;
    }

    public int getShowAnimationBehavior() {
        return this.f9244a.f9256e;
    }

    public int getTrackColor() {
        return this.f9244a.d;
    }

    public int getTrackCornerRadius() {
        return this.f9244a.f9254b;
    }

    public int getTrackThickness() {
        return this.f9244a.f9253a;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f9295m.c(this.f9251j);
        }
        j progressDrawable = getProgressDrawable();
        c cVar = this.f9252k;
        if (progressDrawable != null) {
            j progressDrawable2 = getProgressDrawable();
            if (progressDrawable2.f == null) {
                progressDrawable2.f = new ArrayList();
            }
            if (!progressDrawable2.f.contains(cVar)) {
                progressDrawable2.f.add(cVar);
            }
        }
        if (getIndeterminateDrawable() != null) {
            o indeterminateDrawable = getIndeterminateDrawable();
            if (indeterminateDrawable.f == null) {
                indeterminateDrawable.f = new ArrayList();
            }
            if (!indeterminateDrawable.f.contains(cVar)) {
                indeterminateDrawable.f.add(cVar);
            }
        }
        if (c()) {
            if (this.d > 0) {
                SystemClock.uptimeMillis();
            }
            setVisibility(0);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f9250i);
        removeCallbacks(this.f9249h);
        ((l) getCurrentDrawable()).e(false, false, false);
        o indeterminateDrawable = getIndeterminateDrawable();
        c cVar = this.f9252k;
        if (indeterminateDrawable != null) {
            getIndeterminateDrawable().g(cVar);
            getIndeterminateDrawable().f9295m.f();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().g(cVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i6, int i10) {
        try {
            super.onMeasure(i6, i10);
            m currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            int iE = currentDrawingDelegate.e();
            int iD = currentDrawingDelegate.d();
            setMeasuredDimension(iE < 0 ? getMeasuredWidth() : iE + getPaddingLeft() + getPaddingRight(), iD < 0 ? getMeasuredHeight() : iD + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i6) {
        super.onVisibilityChanged(view, i6);
        boolean z7 = i6 == 0;
        if (this.f9246c) {
            ((l) getCurrentDrawable()).e(c(), false, z7);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i6) {
        super.onWindowVisibilityChanged(i6);
        if (this.f9246c) {
            ((l) getCurrentDrawable()).e(c(), false, false);
        }
    }

    public void setAnimatorDurationScaleProvider(a aVar) {
        this.f9247e = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f9283c = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f9283c = aVar;
        }
    }

    public void setHideAnimationBehavior(int i6) {
        this.f9244a.f = i6;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z7) {
        try {
            if (z7 == isIndeterminate()) {
                return;
            }
            l lVar = (l) getCurrentDrawable();
            if (lVar != null) {
                lVar.e(false, false, false);
            }
            super.setIndeterminate(z7);
            l lVar2 = (l) getCurrentDrawable();
            if (lVar2 != null) {
                lVar2.e(c(), false, false);
            }
            if ((lVar2 instanceof o) && c()) {
                ((o) lVar2).f9295m.e();
            }
            this.f = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof o)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((l) drawable).e(false, false, false);
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{o9.e.q(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f9244a.f9255c = iArr;
        getIndeterminateDrawable().f9295m.b();
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i6) {
        if (isIndeterminate()) {
            return;
        }
        b(i6);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof j)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            j jVar = (j) drawable;
            jVar.e(false, false, false);
            super.setProgressDrawable(jVar);
            jVar.setLevel((int) ((getProgress() / getMax()) * 10000.0f));
        }
    }

    public void setShowAnimationBehavior(int i6) {
        this.f9244a.f9256e = i6;
        invalidate();
    }

    public void setTrackColor(int i6) {
        e eVar = this.f9244a;
        if (eVar.d != i6) {
            eVar.d = i6;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i6) {
        e eVar = this.f9244a;
        if (eVar.f9254b != i6) {
            eVar.f9254b = Math.min(i6, eVar.f9253a / 2);
        }
    }

    public void setTrackThickness(int i6) {
        e eVar = this.f9244a;
        if (eVar.f9253a != i6) {
            eVar.f9253a = i6;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i6) {
        if (i6 != 0 && i6 != 4 && i6 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f9248g = i6;
    }

    @Override // android.widget.ProgressBar
    public o getIndeterminateDrawable() {
        return (o) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    public j getProgressDrawable() {
        return (j) super.getProgressDrawable();
    }
}
