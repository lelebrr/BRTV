package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class NonOverlappingLinearLayoutWithForeground extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f1691a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1692b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1693c;

    public NonOverlappingLinearLayoutWithForeground(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f1691a;
        if (drawable != null) {
            if (this.f1692b) {
                this.f1692b = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                Rect rect = this.f1693c;
                rect.set(0, 0, right, bottom);
                drawable.setBounds(rect);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1691a;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f1691a.setState(getDrawableState());
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1691a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        this.f1692b = z7 | this.f1692b;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1691a;
    }

    public NonOverlappingLinearLayoutWithForeground(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1693c = new Rect();
        if (context.getApplicationInfo().targetSdkVersion < 23 || Build.VERSION.SDK_INT < 23) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.foreground});
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23) {
                    if (i10 >= 23) {
                        setForeground(drawable);
                    }
                } else if (this.f1691a != drawable) {
                    this.f1691a = drawable;
                    this.f1692b = true;
                    setWillNotDraw(false);
                    this.f1691a.setCallback(this);
                    if (this.f1691a.isStateful()) {
                        this.f1691a.setState(getDrawableState());
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
