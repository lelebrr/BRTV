package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.TextView;
import b2.b;
import u7.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    public boolean A;
    public final int B;
    public boolean C;
    public float D;
    public float E;
    public final int F;

    /* renamed from: q, reason: collision with root package name */
    public int f3038q;

    /* renamed from: r, reason: collision with root package name */
    public final int f3039r;

    /* renamed from: s, reason: collision with root package name */
    public final int f3040s;

    /* renamed from: t, reason: collision with root package name */
    public final int f3041t;

    /* renamed from: u, reason: collision with root package name */
    public final int f3042u;

    /* renamed from: v, reason: collision with root package name */
    public final int f3043v;

    /* renamed from: w, reason: collision with root package name */
    public final Paint f3044w;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f3045x;

    /* renamed from: y, reason: collision with root package name */
    public int f3046y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f3047z;

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f3044w = paint;
        this.f3045x = new Rect();
        this.f3046y = 255;
        this.f3047z = false;
        this.A = false;
        int i6 = this.f3061n;
        this.f3038q = i6;
        paint.setColor(i6);
        float f = context.getResources().getDisplayMetrics().density;
        this.f3039r = (int) ((3.0f * f) + 0.5f);
        this.f3040s = (int) ((6.0f * f) + 0.5f);
        this.f3041t = (int) (64.0f * f);
        this.f3043v = (int) ((16.0f * f) + 0.5f);
        this.B = (int) ((1.0f * f) + 0.5f);
        this.f3042u = (int) ((f * 32.0f) + 0.5f);
        this.F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.f3051b.setFocusable(true);
        this.f3051b.setOnClickListener(new b(this, 0));
        this.d.setFocusable(true);
        this.d.setOnClickListener(new b(this, 1));
        if (getBackground() == null) {
            this.f3047z = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final void c(float f, int i6, boolean z7) {
        int height = getHeight();
        TextView textView = this.f3052c;
        int left = textView.getLeft();
        int i10 = this.f3043v;
        int right = textView.getRight() + i10;
        int i11 = height - this.f3039r;
        Rect rect = this.f3045x;
        rect.set(left - i10, i11, right, height);
        super.c(f, i6, z7);
        this.f3046y = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(textView.getLeft() - i10, i11, textView.getRight() + i10, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.f3047z;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.f3042u);
    }

    public int getTabIndicatorColor() {
        return this.f3038q;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        TextView textView = this.f3052c;
        int left = textView.getLeft();
        int i6 = this.f3043v;
        int i10 = left - i6;
        int right = textView.getRight() + i6;
        int i11 = height - this.f3039r;
        Paint paint = this.f3044w;
        paint.setColor((this.f3046y << 24) | (this.f3038q & 16777215));
        float f = right;
        float f3 = height;
        canvas.drawRect(i10, i11, f, f3, paint);
        if (this.f3047z) {
            paint.setColor((this.f3038q & 16777215) | (-16777216));
            canvas.drawRect(getPaddingLeft(), height - this.B, getWidth() - getPaddingRight(), f3, paint);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.C) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y7 = motionEvent.getY();
        if (action == 0) {
            this.D = x10;
            this.E = y7;
            this.C = false;
        } else if (action == 1) {
            int left = this.f3052c.getLeft();
            int i6 = this.f3043v;
            if (x10 < left - i6) {
                ViewPager viewPager = this.f3050a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            } else if (x10 > r5.getRight() + i6) {
                ViewPager viewPager2 = this.f3050a;
                viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            }
        } else if (action == 2) {
            float fAbs = Math.abs(x10 - this.D);
            float f = this.F;
            if (fAbs > f || Math.abs(y7 - this.E) > f) {
                this.C = true;
            }
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i6) {
        super.setBackgroundColor(i6);
        if (this.A) {
            return;
        }
        this.f3047z = (i6 & (-16777216)) == 0;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.A) {
            return;
        }
        this.f3047z = drawable == null;
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        if (this.A) {
            return;
        }
        this.f3047z = i6 == 0;
    }

    public void setDrawFullUnderline(boolean z7) {
        this.f3047z = z7;
        this.A = true;
        invalidate();
    }

    @Override // android.view.View
    public final void setPadding(int i6, int i10, int i11, int i12) {
        int i13 = this.f3040s;
        if (i12 < i13) {
            i12 = i13;
        }
        super.setPadding(i6, i10, i11, i12);
    }

    public void setTabIndicatorColor(int i6) {
        this.f3038q = i6;
        this.f3044w.setColor(i6);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i6) {
        setTabIndicatorColor(d.i(getContext(), i6));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i6) {
        int i10 = this.f3041t;
        if (i6 < i10) {
            i6 = i10;
        }
        super.setTextSpacing(i6);
    }
}
