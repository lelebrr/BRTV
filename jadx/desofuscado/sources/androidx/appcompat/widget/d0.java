package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends b0 {

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatSeekBar f680e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f681g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f682h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f683i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f684j;

    public d0(AppCompatSeekBar appCompatSeekBar) {
        super(appCompatSeekBar);
        this.f681g = null;
        this.f682h = null;
        this.f683i = false;
        this.f684j = false;
        this.f680e = appCompatSeekBar;
    }

    @Override // androidx.appcompat.widget.b0
    public final void b(AttributeSet attributeSet, int i6) {
        super.b(attributeSet, i6);
        AppCompatSeekBar appCompatSeekBar = this.f680e;
        Context context = appCompatSeekBar.getContext();
        int[] iArr = e.a.f6352h;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        n0.s0.p(appCompatSeekBar, appCompatSeekBar.getContext(), iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        Drawable drawableU = bVarC.u(0);
        if (drawableU != null) {
            appCompatSeekBar.setThumb(drawableU);
        }
        Drawable drawableT = bVarC.t(1);
        Drawable drawable = this.f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f = drawableT;
        if (drawableT != null) {
            drawableT.setCallback(appCompatSeekBar);
            n5.d.Q(drawableT, appCompatSeekBar.getLayoutDirection());
            if (drawableT.isStateful()) {
                drawableT.setState(appCompatSeekBar.getDrawableState());
            }
            f();
        }
        appCompatSeekBar.invalidate();
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        if (typedArray.hasValue(3)) {
            this.f682h = m1.c(typedArray.getInt(3, -1), this.f682h);
            this.f684j = true;
        }
        if (typedArray.hasValue(2)) {
            this.f681g = bVarC.s(2);
            this.f683i = true;
        }
        bVarC.F();
        f();
    }

    public final void f() {
        Drawable drawable = this.f;
        if (drawable != null) {
            if (this.f683i || this.f684j) {
                Drawable drawableW = n5.d.W(drawable.mutate());
                this.f = drawableW;
                if (this.f683i) {
                    g0.a.h(drawableW, this.f681g);
                }
                if (this.f684j) {
                    g0.a.i(this.f, this.f682h);
                }
                if (this.f.isStateful()) {
                    this.f.setState(this.f680e.getDrawableState());
                }
            }
        }
    }

    public final void g(Canvas canvas) {
        if (this.f != null) {
            int max = this.f680e.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f.getIntrinsicWidth();
                int intrinsicHeight = this.f.getIntrinsicHeight();
                int i6 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i10 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f.setBounds(-i6, -i10, i6, i10);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i11 = 0; i11 <= max; i11++) {
                    this.f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
