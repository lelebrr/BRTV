package t;

import android.view.animation.Interpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s.e f10053a;

    public z(s.e eVar) {
        this.f10053a = eVar;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return (float) this.f10053a.a(f);
    }
}
