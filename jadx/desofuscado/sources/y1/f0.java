package y1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.transition.Transition;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f0 extends AnimatorListenerAdapter implements y {

    /* renamed from: a, reason: collision with root package name */
    public final View f11263a;

    /* renamed from: b, reason: collision with root package name */
    public final View f11264b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11265c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f11266e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f11267g;

    /* renamed from: h, reason: collision with root package name */
    public final float f11268h;

    /* renamed from: i, reason: collision with root package name */
    public final float f11269i;

    public f0(View view, View view2, int i6, int i10, float f, float f3) {
        this.f11264b = view;
        this.f11263a = view2;
        this.f11265c = i6 - Math.round(view.getTranslationX());
        this.d = i10 - Math.round(view.getTranslationY());
        this.f11268h = f;
        this.f11269i = f3;
        int[] iArr = (int[]) view2.getTag(R.id.transition_position);
        this.f11266e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.transition_position, null);
        }
    }

    @Override // y1.y
    public final void e(Transition transition) {
        View view = this.f11264b;
        view.setTranslationX(this.f11268h);
        view.setTranslationY(this.f11269i);
        transition.u(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f11266e == null) {
            this.f11266e = new int[2];
        }
        int[] iArr = this.f11266e;
        float f = this.f11265c;
        View view = this.f11264b;
        iArr[0] = Math.round(view.getTranslationX() + f);
        this.f11266e[1] = Math.round(view.getTranslationY() + this.d);
        this.f11263a.setTag(R.id.transition_position, this.f11266e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        View view = this.f11264b;
        this.f = view.getTranslationX();
        this.f11267g = view.getTranslationY();
        view.setTranslationX(this.f11268h);
        view.setTranslationY(this.f11269i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        float f = this.f;
        View view = this.f11264b;
        view.setTranslationX(f);
        view.setTranslationY(this.f11267g);
    }

    @Override // y1.y
    public final void a() {
    }

    @Override // y1.y
    public final void b() {
    }

    @Override // y1.y
    public final void c() {
    }

    @Override // y1.y
    public final void d() {
    }
}
