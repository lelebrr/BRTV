package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1592a = false;

    /* renamed from: b, reason: collision with root package name */
    public float f1593b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1594c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1595e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final Property f1596g;

    public f(View view, Property property, float f, float f3, int i6) {
        this.f1596g = property;
        this.f1594c = view;
        this.f1595e = f;
        this.d = f3;
        this.f = i6;
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        View view = this.f1594c;
        view.setTag(R.id.lb_slide_transition_value, new float[]{view.getTranslationX(), view.getTranslationY()});
        this.f1596g.set(view, Float.valueOf(this.f1595e));
        this.f1592a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z7 = this.f1592a;
        View view = this.f1594c;
        if (!z7) {
            this.f1596g.set(view, Float.valueOf(this.f1595e));
        }
        view.setVisibility(this.f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        Property property = this.f1596g;
        View view = this.f1594c;
        this.f1593b = ((Float) property.get(view)).floatValue();
        property.set(view, Float.valueOf(this.d));
        view.setVisibility(this.f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        Float fValueOf = Float.valueOf(this.f1593b);
        Property property = this.f1596g;
        View view = this.f1594c;
        property.set(view, fValueOf);
        view.setVisibility(0);
    }
}
