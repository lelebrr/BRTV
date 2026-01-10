package androidx.recyclerview.widget;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends t0 implements a1 {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final m B;

    /* renamed from: a, reason: collision with root package name */
    public final int f2909a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2910b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f2911c;
    public final Drawable d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2912e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f2913g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f2914h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2915i;

    /* renamed from: j, reason: collision with root package name */
    public final int f2916j;

    /* renamed from: k, reason: collision with root package name */
    public int f2917k;

    /* renamed from: l, reason: collision with root package name */
    public int f2918l;

    /* renamed from: m, reason: collision with root package name */
    public float f2919m;

    /* renamed from: n, reason: collision with root package name */
    public int f2920n;

    /* renamed from: o, reason: collision with root package name */
    public int f2921o;

    /* renamed from: p, reason: collision with root package name */
    public float f2922p;

    /* renamed from: s, reason: collision with root package name */
    public final RecyclerView f2925s;

    /* renamed from: z, reason: collision with root package name */
    public final ValueAnimator f2932z;

    /* renamed from: q, reason: collision with root package name */
    public int f2923q = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f2924r = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f2926t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2927u = false;

    /* renamed from: v, reason: collision with root package name */
    public int f2928v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f2929w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f2930x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public final int[] f2931y = new int[2];

    public p(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i6, int i10, int i11) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2932z = valueAnimatorOfFloat;
        this.A = 0;
        m mVar = new m(0, this);
        this.B = mVar;
        n nVar = new n(this);
        this.f2911c = stateListDrawable;
        this.d = drawable;
        this.f2913g = stateListDrawable2;
        this.f2914h = drawable2;
        this.f2912e = Math.max(i6, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i6, drawable.getIntrinsicWidth());
        this.f2915i = Math.max(i6, stateListDrawable2.getIntrinsicWidth());
        this.f2916j = Math.max(i6, drawable2.getIntrinsicWidth());
        this.f2909a = i10;
        this.f2910b = i11;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new a7.g(this));
        valueAnimatorOfFloat.addUpdateListener(new o(this));
        RecyclerView recyclerView2 = this.f2925s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f2925s.removeOnItemTouchListener(this);
            this.f2925s.removeOnScrollListener(nVar);
            this.f2925s.removeCallbacks(mVar);
        }
        this.f2925s = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.f2925s.addOnItemTouchListener(this);
            this.f2925s.addOnScrollListener(nVar);
        }
    }

    public static int c(float f, float f3, int[] iArr, int i6, int i10, int i11) {
        int i12 = iArr[1] - iArr[0];
        if (i12 == 0) {
            return 0;
        }
        int i13 = i6 - i11;
        int i14 = (int) (((f3 - f) / i12) * i13);
        int i15 = i10 + i14;
        if (i15 >= i13 || i15 < 0) {
            return 0;
        }
        return i14;
    }

    public final boolean a(float f, float f3) {
        if (f3 >= this.f2924r - this.f2915i) {
            int i6 = this.f2921o;
            int i10 = this.f2920n;
            if (f >= i6 - (i10 / 2) && f <= (i10 / 2) + i6) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(float f, float f3) {
        boolean z7 = this.f2925s.getLayoutDirection() == 1;
        int i6 = this.f2912e;
        if (z7) {
            if (f > i6) {
                return false;
            }
        } else if (f < this.f2923q - i6) {
            return false;
        }
        int i10 = this.f2918l;
        int i11 = this.f2917k / 2;
        return f3 >= ((float) (i10 - i11)) && f3 <= ((float) (i11 + i10));
    }

    public final void d(int i6) {
        m mVar = this.B;
        StateListDrawable stateListDrawable = this.f2911c;
        if (i6 == 2 && this.f2928v != 2) {
            stateListDrawable.setState(C);
            this.f2925s.removeCallbacks(mVar);
        }
        if (i6 == 0) {
            this.f2925s.invalidate();
        } else {
            e();
        }
        if (this.f2928v == 2 && i6 != 2) {
            stateListDrawable.setState(D);
            this.f2925s.removeCallbacks(mVar);
            this.f2925s.postDelayed(mVar, 1200);
        } else if (i6 == 1) {
            this.f2925s.removeCallbacks(mVar);
            this.f2925s.postDelayed(mVar, 1500);
        }
        this.f2928v = i6;
    }

    public final void e() {
        int i6 = this.A;
        ValueAnimator valueAnimator = this.f2932z;
        if (i6 != 0) {
            if (i6 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.t0
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, l1 l1Var) {
        if (this.f2923q != this.f2925s.getWidth() || this.f2924r != this.f2925s.getHeight()) {
            this.f2923q = this.f2925s.getWidth();
            this.f2924r = this.f2925s.getHeight();
            d(0);
            return;
        }
        if (this.A != 0) {
            if (this.f2926t) {
                int i6 = this.f2923q;
                int i10 = this.f2912e;
                int i11 = i6 - i10;
                int i12 = this.f2918l;
                int i13 = this.f2917k;
                int i14 = i12 - (i13 / 2);
                StateListDrawable stateListDrawable = this.f2911c;
                stateListDrawable.setBounds(0, 0, i10, i13);
                int i15 = this.f2924r;
                int i16 = this.f;
                Drawable drawable = this.d;
                drawable.setBounds(0, 0, i16, i15);
                if (this.f2925s.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i10, i14);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i10, -i14);
                } else {
                    canvas.translate(i11, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i14);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i11, -i14);
                }
            }
            if (this.f2927u) {
                int i17 = this.f2924r;
                int i18 = this.f2915i;
                int i19 = i17 - i18;
                int i20 = this.f2921o;
                int i21 = this.f2920n;
                int i22 = i20 - (i21 / 2);
                StateListDrawable stateListDrawable2 = this.f2913g;
                stateListDrawable2.setBounds(0, 0, i21, i18);
                int i23 = this.f2923q;
                int i24 = this.f2916j;
                Drawable drawable2 = this.f2914h;
                drawable2.setBounds(0, 0, i23, i24);
                canvas.translate(0.0f, i19);
                drawable2.draw(canvas);
                canvas.translate(i22, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i22, -i19);
            }
        }
    }
}
