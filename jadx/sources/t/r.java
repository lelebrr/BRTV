package t;

import androidx.constraintlayout.motion.widget.MotionLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends p {

    /* renamed from: a, reason: collision with root package name */
    public float f10011a = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    public float f10012b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public float f10013c;
    public final /* synthetic */ MotionLayout d;

    public r(MotionLayout motionLayout) {
        this.d = motionLayout;
    }

    @Override // t.p
    public final float a() {
        return this.d.f963s;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f3 = this.f10011a;
        MotionLayout motionLayout = this.d;
        if (f3 > 0.0f) {
            float f4 = this.f10013c;
            if (f3 / f4 < f) {
                f = f3 / f4;
            }
            motionLayout.f963s = f3 - (f4 * f);
            return ((f3 * f) - (((f4 * f) * f) / 2.0f)) + this.f10012b;
        }
        float f5 = this.f10013c;
        if ((-f3) / f5 < f) {
            f = (-f3) / f5;
        }
        motionLayout.f963s = (f5 * f) + f3;
        return (((f5 * f) * f) / 2.0f) + (f3 * f) + this.f10012b;
    }
}
