package x6;

import android.animation.ValueAnimator;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f11049a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f11050b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f11051c;

    public e(g gVar, View view, View view2) {
        this.f11051c = gVar;
        this.f11049a = view;
        this.f11050b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11051c.c(this.f11049a, this.f11050b, valueAnimator.getAnimatedFraction());
    }
}
