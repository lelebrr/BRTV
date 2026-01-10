package q6;

import android.animation.ObjectAnimator;
import androidx.appcompat.widget.g3;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends n {

    /* renamed from: l, reason: collision with root package name */
    public static final int[] f9261l = {0, 1350, 2700, 4050};

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f9262m = {667, 2017, 3367, 4717};

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f9263n = {1000, 2350, 3700, 5050};

    /* renamed from: o, reason: collision with root package name */
    public static final g3 f9264o = new g3("animationFraction", Float.class, 5);

    /* renamed from: p, reason: collision with root package name */
    public static final g3 f9265p = new g3("completeEndFraction", Float.class, 6);
    public ObjectAnimator d;

    /* renamed from: e, reason: collision with root package name */
    public ObjectAnimator f9266e;
    public final g1.a f;

    /* renamed from: g, reason: collision with root package name */
    public final CircularProgressIndicatorSpec f9267g;

    /* renamed from: h, reason: collision with root package name */
    public int f9268h;

    /* renamed from: i, reason: collision with root package name */
    public float f9269i;

    /* renamed from: j, reason: collision with root package name */
    public float f9270j;

    /* renamed from: k, reason: collision with root package name */
    public c f9271k;

    public h(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f9268h = 0;
        this.f9271k = null;
        this.f9267g = circularProgressIndicatorSpec;
        this.f = new g1.a();
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
        this.f9268h = 0;
        this.f9293c[0] = o9.e.j(this.f9267g.f9255c[0], this.f9291a.f9288j);
        this.f9270j = 0.0f;
    }

    @Override // q6.n
    public final void c(c cVar) {
        this.f9271k = cVar;
    }

    @Override // q6.n
    public final void d() {
        ObjectAnimator objectAnimator = this.f9266e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f9291a.isVisible()) {
            this.f9266e.start();
        } else {
            a();
        }
    }

    @Override // q6.n
    public final void e() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f9264o, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new g(this, 0));
        }
        if (this.f9266e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f9265p, 0.0f, 1.0f);
            this.f9266e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f9266e.setInterpolator(this.f);
            this.f9266e.addListener(new g(this, 1));
        }
        this.f9268h = 0;
        this.f9293c[0] = o9.e.j(this.f9267g.f9255c[0], this.f9291a.f9288j);
        this.f9270j = 0.0f;
        this.d.start();
    }

    @Override // q6.n
    public final void f() {
        this.f9271k = null;
    }
}
