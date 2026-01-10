package q6;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.g3;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends n {

    /* renamed from: l, reason: collision with root package name */
    public static final int[] f9305l = {533, 567, 850, 750};

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f9306m = {1267, 1000, 333, 0};

    /* renamed from: n, reason: collision with root package name */
    public static final g3 f9307n = new g3("animationFraction", Float.class, 9);
    public ObjectAnimator d;

    /* renamed from: e, reason: collision with root package name */
    public ObjectAnimator f9308e;
    public final Interpolator[] f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearProgressIndicatorSpec f9309g;

    /* renamed from: h, reason: collision with root package name */
    public int f9310h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f9311i;

    /* renamed from: j, reason: collision with root package name */
    public float f9312j;

    /* renamed from: k, reason: collision with root package name */
    public c f9313k;

    public s(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f9310h = 0;
        this.f9313k = null;
        this.f9309g = linearProgressIndicatorSpec;
        this.f = new Interpolator[]{AnimationUtils.loadInterpolator(context, R.animator.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R.animator.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R.animator.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R.animator.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // q6.n
    public final void a() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // q6.n
    public final void b() {
        this.f9310h = 0;
        int iJ = o9.e.j(this.f9309g.f9255c[0], this.f9291a.f9288j);
        int[] iArr = this.f9293c;
        iArr[0] = iJ;
        iArr[1] = iJ;
    }

    @Override // q6.n
    public final void c(c cVar) {
        this.f9313k = cVar;
    }

    @Override // q6.n
    public final void d() {
        ObjectAnimator objectAnimator = this.f9308e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f9291a.isVisible()) {
            this.f9308e.setFloatValues(this.f9312j, 1.0f);
            this.f9308e.setDuration((long) ((1.0f - this.f9312j) * 1800.0f));
            this.f9308e.start();
        }
    }

    @Override // q6.n
    public final void e() {
        ObjectAnimator objectAnimator = this.d;
        g3 g3Var = f9307n;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, g3Var, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new r(this, 0));
        }
        if (this.f9308e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, g3Var, 1.0f);
            this.f9308e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f9308e.setInterpolator(null);
            this.f9308e.addListener(new r(this, 1));
        }
        this.f9310h = 0;
        int iJ = o9.e.j(this.f9309g.f9255c[0], this.f9291a.f9288j);
        int[] iArr = this.f9293c;
        iArr[0] = iJ;
        iArr[1] = iJ;
        this.d.start();
    }

    @Override // q6.n
    public final void f() {
        this.f9313k = null;
    }
}
