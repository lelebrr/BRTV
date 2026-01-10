package y5;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public long f11415a;

    /* renamed from: c, reason: collision with root package name */
    public TimeInterpolator f11417c = null;
    public int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f11418e = 1;

    /* renamed from: b, reason: collision with root package name */
    public long f11416b = 150;

    public f(long j10) {
        this.f11415a = j10;
    }

    public final void a(Animator animator) {
        animator.setStartDelay(this.f11415a);
        animator.setDuration(this.f11416b);
        animator.setInterpolator(b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.d);
            valueAnimator.setRepeatMode(this.f11418e);
        }
    }

    public final TimeInterpolator b() {
        TimeInterpolator timeInterpolator = this.f11417c;
        return timeInterpolator != null ? timeInterpolator : a.f11407b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f11415a == fVar.f11415a && this.f11416b == fVar.f11416b && this.d == fVar.d && this.f11418e == fVar.f11418e) {
            return b().getClass().equals(fVar.b().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f11415a;
        long j11 = this.f11416b;
        return ((((b().getClass().hashCode() + (((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31)) * 31) + this.d) * 31) + this.f11418e;
    }

    public final String toString() {
        return "\n" + f.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f11415a + " duration: " + this.f11416b + " interpolator: " + b().getClass() + " repeatCount: " + this.d + " repeatMode: " + this.f11418e + "}\n";
    }
}
