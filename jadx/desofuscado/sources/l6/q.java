package l6;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import u6.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class q {
    public static final g1.a C = y5.a.f11408c;
    public static final int[] D = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] E = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    public static final int[] F = {R.attr.state_focused, R.attr.state_enabled};
    public static final int[] G = {R.attr.state_hovered, R.attr.state_enabled};
    public static final int[] H = {R.attr.state_enabled};
    public static final int[] I = new int[0];
    public a0.d B;

    /* renamed from: a, reason: collision with root package name */
    public u6.m f8039a;

    /* renamed from: b, reason: collision with root package name */
    public u6.h f8040b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f8041c;
    public c d;

    /* renamed from: e, reason: collision with root package name */
    public LayerDrawable f8042e;
    public boolean f;

    /* renamed from: h, reason: collision with root package name */
    public float f8044h;

    /* renamed from: i, reason: collision with root package name */
    public float f8045i;

    /* renamed from: j, reason: collision with root package name */
    public float f8046j;

    /* renamed from: k, reason: collision with root package name */
    public int f8047k;

    /* renamed from: l, reason: collision with root package name */
    public Animator f8048l;

    /* renamed from: m, reason: collision with root package name */
    public y5.e f8049m;

    /* renamed from: n, reason: collision with root package name */
    public y5.e f8050n;

    /* renamed from: o, reason: collision with root package name */
    public float f8051o;

    /* renamed from: q, reason: collision with root package name */
    public int f8053q;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f8055s;

    /* renamed from: t, reason: collision with root package name */
    public ArrayList f8056t;

    /* renamed from: u, reason: collision with root package name */
    public ArrayList f8057u;

    /* renamed from: v, reason: collision with root package name */
    public final FloatingActionButton f8058v;

    /* renamed from: w, reason: collision with root package name */
    public final j7.c f8059w;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8043g = true;

    /* renamed from: p, reason: collision with root package name */
    public float f8052p = 1.0f;

    /* renamed from: r, reason: collision with root package name */
    public int f8054r = 0;

    /* renamed from: x, reason: collision with root package name */
    public final Rect f8060x = new Rect();

    /* renamed from: y, reason: collision with root package name */
    public final RectF f8061y = new RectF();

    /* renamed from: z, reason: collision with root package name */
    public final RectF f8062z = new RectF();
    public final Matrix A = new Matrix();

    public q(FloatingActionButton floatingActionButton, j7.c cVar) {
        this.f8058v = floatingActionButton;
        this.f8059w = cVar;
        a1.b bVar = new a1.b(15);
        s sVar = (s) this;
        bVar.g(D, d(new o(sVar, 1)));
        bVar.g(E, d(new o(sVar, 0)));
        bVar.g(F, d(new o(sVar, 0)));
        bVar.g(G, d(new o(sVar, 0)));
        bVar.g(H, d(new o(sVar, 2)));
        bVar.g(I, d(new n(sVar)));
        this.f8051o = floatingActionButton.getRotation();
    }

    public static ValueAnimator d(p pVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(C);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(pVar);
        valueAnimator.addUpdateListener(pVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public final void a(float f, Matrix matrix) {
        matrix.reset();
        if (this.f8058v.getDrawable() == null || this.f8053q == 0) {
            return;
        }
        RectF rectF = this.f8061y;
        RectF rectF2 = this.f8062z;
        rectF.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        float f3 = this.f8053q;
        rectF2.set(0.0f, 0.0f, f3, f3);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        float f4 = this.f8053q / 2.0f;
        matrix.postScale(f, f, f4, f4);
    }

    public final AnimatorSet b(y5.e eVar, float f, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        int i6 = 0;
        float[] fArr = {f};
        FloatingActionButton floatingActionButton = this.f8058v;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        eVar.f("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        eVar.f("scale").a(objectAnimatorOfFloat2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 26) {
            m mVar = new m(i6);
            mVar.f8034b = new FloatEvaluator();
            objectAnimatorOfFloat2.setEvaluator(mVar);
        }
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        eVar.f("scale").a(objectAnimatorOfFloat3);
        if (i10 == 26) {
            m mVar2 = new m(i6);
            mVar2.f8034b = new FloatEvaluator();
            objectAnimatorOfFloat3.setEvaluator(mVar2);
        }
        arrayList.add(objectAnimatorOfFloat3);
        Matrix matrix = this.A;
        a(f4, matrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(floatingActionButton, new a(), new k(this), new Matrix(matrix));
        eVar.f("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        o9.d.x(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet c(float f, float f3, float f4) throws Resources.NotFoundException {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        FloatingActionButton floatingActionButton = this.f8058v;
        valueAnimatorOfFloat.addUpdateListener(new l(this, floatingActionButton.getAlpha(), f, floatingActionButton.getScaleX(), f3, floatingActionButton.getScaleY(), this.f8052p, f4, new Matrix(this.A)));
        arrayList.add(valueAnimatorOfFloat);
        o9.d.x(animatorSet, arrayList);
        Context context = floatingActionButton.getContext();
        int integer = floatingActionButton.getContext().getResources().getInteger(com.p2elite.brtv2.R.integer.material_motion_duration_long_1);
        TypedValue typedValueL = com.bumptech.glide.c.l(context, com.p2elite.brtv2.R.attr.motionDurationLong1);
        if (typedValueL != null && typedValueL.type == 16) {
            integer = typedValueL.data;
        }
        animatorSet.setDuration(integer);
        animatorSet.setInterpolator(a2.a.K(floatingActionButton.getContext(), y5.a.f11407b));
        return animatorSet;
    }

    public abstract float e();

    public void f(Rect rect) {
        int sizeDimension = this.f ? (this.f8047k - this.f8058v.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.f8043g ? e() + this.f8046j : 0.0f));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    public abstract void g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i6);

    public abstract void h();

    public abstract void i();

    public abstract void j(int[] iArr);

    public abstract void k(float f, float f3, float f4);

    public final void l() {
        ArrayList arrayList = this.f8057u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                com.google.android.material.bottomappbar.b bVar = iVar.f8018a;
                bVar.getClass();
                u6.h hVar = bVar.f4667a.W;
                FloatingActionButton floatingActionButton = iVar.f8019b;
                hVar.o(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
            }
        }
    }

    public final void m() {
        ArrayList arrayList = this.f8057u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                com.google.android.material.bottomappbar.b bVar = iVar.f8018a;
                bVar.getClass();
                FloatingActionButton floatingActionButton = iVar.f8019b;
                float translationX = floatingActionButton.getTranslationX();
                BottomAppBar bottomAppBar = bVar.f4667a;
                float f = bottomAppBar.getTopEdgeTreatment().f4679g;
                u6.h hVar = bottomAppBar.W;
                if (f != translationX) {
                    bottomAppBar.getTopEdgeTreatment().f4679g = translationX;
                    hVar.invalidateSelf();
                }
                float scaleY = 0.0f;
                float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
                if (bottomAppBar.getTopEdgeTreatment().f != fMax) {
                    bottomAppBar.getTopEdgeTreatment().k(fMax);
                    hVar.invalidateSelf();
                }
                if (floatingActionButton.getVisibility() == 0) {
                    scaleY = floatingActionButton.getScaleY();
                }
                hVar.o(scaleY);
            }
        }
    }

    public void n(ColorStateList colorStateList) {
        Drawable drawable = this.f8041c;
        if (drawable != null) {
            g0.a.h(drawable, s6.c.b(colorStateList));
        }
    }

    public final void o(u6.m mVar) {
        this.f8039a = mVar;
        u6.h hVar = this.f8040b;
        if (hVar != null) {
            hVar.setShapeAppearanceModel(mVar);
        }
        Object obj = this.f8041c;
        if (obj instanceof x) {
            ((x) obj).setShapeAppearanceModel(mVar);
        }
        c cVar = this.d;
        if (cVar != null) {
            cVar.f8005o = mVar;
            cVar.invalidateSelf();
        }
    }

    public abstract boolean p();

    public abstract void q();

    public final void r() {
        Rect rect = this.f8060x;
        f(rect);
        a2.a.p(this.f8042e, "Didn't initialize content background");
        boolean zP = p();
        j7.c cVar = this.f8059w;
        if (zP) {
            super/*android.widget.ImageButton*/.setBackgroundDrawable(new InsetDrawable((Drawable) this.f8042e, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            LayerDrawable layerDrawable = this.f8042e;
            if (layerDrawable != null) {
                super/*android.widget.ImageButton*/.setBackgroundDrawable(layerDrawable);
            } else {
                cVar.getClass();
            }
        }
        int i6 = rect.left;
        int i10 = rect.top;
        int i11 = rect.right;
        int i12 = rect.bottom;
        FloatingActionButton floatingActionButton = (FloatingActionButton) cVar.f7444b;
        floatingActionButton.f4930l.set(i6, i10, i11, i12);
        int i13 = floatingActionButton.f4927i;
        floatingActionButton.setPadding(i6 + i13, i10 + i13, i11 + i13, i12 + i13);
    }
}
