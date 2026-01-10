package x6;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.internal.a0;
import com.google.android.material.tabs.TabLayout;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends LinearLayout {
    public static final /* synthetic */ int f = 0;

    /* renamed from: a, reason: collision with root package name */
    public ValueAnimator f11054a;

    /* renamed from: b, reason: collision with root package name */
    public int f11055b;

    /* renamed from: c, reason: collision with root package name */
    public float f11056c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TabLayout f11057e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(TabLayout tabLayout, Context context) {
        super(context);
        this.f11057e = tabLayout;
        this.f11055b = -1;
        this.d = -1;
        setWillNotDraw(false);
    }

    public final void a() {
        View childAt = getChildAt(this.f11055b);
        TabLayout tabLayout = this.f11057e;
        q.b bVar = tabLayout.F;
        Drawable drawable = tabLayout.f5235l;
        bVar.getClass();
        RectF rectFC = q.b.c(tabLayout, childAt);
        drawable.setBounds((int) rectFC.left, drawable.getBounds().top, (int) rectFC.right, drawable.getBounds().bottom);
    }

    public final void b(int i6) {
        TabLayout tabLayout = this.f11057e;
        Rect bounds = tabLayout.f5235l.getBounds();
        tabLayout.f5235l.setBounds(bounds.left, 0, bounds.right, i6);
        requestLayout();
    }

    public final void c(View view, View view2, float f3) {
        TabLayout tabLayout = this.f11057e;
        if (view == null || view.getWidth() <= 0) {
            Drawable drawable = tabLayout.f5235l;
            drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.f5235l.getBounds().bottom);
        } else {
            tabLayout.F.e(tabLayout, view, view2, f3, tabLayout.f5235l);
        }
        WeakHashMap weakHashMap = s0.f8353a;
        postInvalidateOnAnimation();
    }

    public final void d(int i6, int i10, boolean z7) {
        View childAt = getChildAt(this.f11055b);
        View childAt2 = getChildAt(i6);
        if (childAt2 == null) {
            a();
            return;
        }
        e eVar = new e(this, childAt, childAt2);
        if (!z7) {
            this.f11054a.removeAllUpdateListeners();
            this.f11054a.addUpdateListener(eVar);
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f11054a = valueAnimator;
        valueAnimator.setInterpolator(y5.a.f11407b);
        valueAnimator.setDuration(i10);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.addUpdateListener(eVar);
        valueAnimator.addListener(new f(this, i6));
        valueAnimator.start();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int height;
        TabLayout tabLayout = this.f11057e;
        int iHeight = tabLayout.f5235l.getBounds().height();
        if (iHeight < 0) {
            iHeight = tabLayout.f5235l.getIntrinsicHeight();
        }
        int i6 = tabLayout.f5248y;
        if (i6 == 0) {
            height = getHeight() - iHeight;
            iHeight = getHeight();
        } else if (i6 != 1) {
            height = 0;
            if (i6 != 2) {
                iHeight = i6 != 3 ? 0 : getHeight();
            }
        } else {
            height = (getHeight() - iHeight) / 2;
            iHeight = (getHeight() + iHeight) / 2;
        }
        if (tabLayout.f5235l.getBounds().width() > 0) {
            Rect bounds = tabLayout.f5235l.getBounds();
            tabLayout.f5235l.setBounds(bounds.left, height, bounds.right, iHeight);
            Drawable drawableW = tabLayout.f5235l;
            if (tabLayout.f5236m != 0) {
                drawableW = n5.d.W(drawableW);
                if (Build.VERSION.SDK_INT == 21) {
                    drawableW.setColorFilter(tabLayout.f5236m, PorterDuff.Mode.SRC_IN);
                } else {
                    g0.a.g(drawableW, tabLayout.f5236m);
                }
            } else if (Build.VERSION.SDK_INT == 21) {
                drawableW.setColorFilter(null);
            } else {
                g0.a.h(drawableW, null);
            }
            drawableW.draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        ValueAnimator valueAnimator = this.f11054a;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            a();
        } else {
            d(this.f11055b, -1, false);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        if (View.MeasureSpec.getMode(i6) != 1073741824) {
            return;
        }
        TabLayout tabLayout = this.f11057e;
        boolean z7 = true;
        if (tabLayout.f5246w == 1 || tabLayout.f5249z == 2) {
            int childCount = getChildCount();
            int iMax = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() == 0) {
                    iMax = Math.max(iMax, childAt.getMeasuredWidth());
                }
            }
            if (iMax <= 0) {
                return;
            }
            if (iMax * childCount <= getMeasuredWidth() - (((int) a0.e(getContext(), 16)) * 2)) {
                boolean z10 = false;
                for (int i12 = 0; i12 < childCount; i12++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i12).getLayoutParams();
                    if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                        layoutParams.width = iMax;
                        layoutParams.weight = 0.0f;
                        z10 = true;
                    }
                }
                z7 = z10;
            } else {
                tabLayout.f5246w = 0;
                tabLayout.p(false);
            }
            if (z7) {
                super.onMeasure(i6, i10);
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        if (Build.VERSION.SDK_INT >= 23 || this.d == i6) {
            return;
        }
        requestLayout();
        this.d = i6;
    }
}
