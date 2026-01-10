package q6;

import android.animation.ObjectAnimator;
import androidx.appcompat.widget.g3;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends n {

    /* renamed from: j, reason: collision with root package name */
    public static final g3 f9298j = new g3("animationFraction", Float.class, 8);
    public ObjectAnimator d;

    /* renamed from: e, reason: collision with root package name */
    public final g1.a f9299e;
    public final LinearProgressIndicatorSpec f;

    /* renamed from: g, reason: collision with root package name */
    public int f9300g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f9301h;

    /* renamed from: i, reason: collision with root package name */
    public float f9302i;

    public q(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f9300g = 1;
        this.f = linearProgressIndicatorSpec;
        this.f9299e = new g1.a();
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
        this.f9301h = true;
        this.f9300g = 1;
        Arrays.fill(this.f9293c, o9.e.j(this.f.f9255c[0], this.f9291a.f9288j));
    }

    @Override // q6.n
    public final void e() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f9298j, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new a6.a(6, this));
        }
        this.f9301h = true;
        this.f9300g = 1;
        Arrays.fill(this.f9293c, o9.e.j(this.f.f9255c[0], this.f9291a.f9288j));
        this.d.start();
    }

    @Override // q6.n
    public final void d() {
    }

    @Override // q6.n
    public final void f() {
    }

    @Override // q6.n
    public final void c(c cVar) {
    }
}
