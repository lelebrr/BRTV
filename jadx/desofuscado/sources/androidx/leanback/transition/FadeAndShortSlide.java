package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FadeAndShortSlide extends Visibility {
    public static final DecelerateInterpolator d = new DecelerateInterpolator();

    /* renamed from: e, reason: collision with root package name */
    public static final a f1574e = new a(0);
    public static final a f = new a(1);

    /* renamed from: g, reason: collision with root package name */
    public static final a f1575g = new a(2);

    /* renamed from: h, reason: collision with root package name */
    public static final a f1576h = new a(3);

    /* renamed from: i, reason: collision with root package name */
    public static final a f1577i = new a(4);

    /* renamed from: a, reason: collision with root package name */
    public final r4.b f1578a;

    /* renamed from: b, reason: collision with root package name */
    public Visibility f1579b;

    /* renamed from: c, reason: collision with root package name */
    public final float f1580c;

    public FadeAndShortSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1579b = new Fade();
        this.f1580c = -1.0f;
        b bVar = new b(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h1.a.f7168k);
        int i6 = typedArrayObtainStyledAttributes.getInt(3, 8388611);
        if (i6 == 48) {
            this.f1578a = f1577i;
        } else if (i6 == 80) {
            this.f1578a = f1576h;
        } else if (i6 == 112) {
            this.f1578a = bVar;
        } else if (i6 == 8388611) {
            this.f1578a = f1574e;
        } else if (i6 == 8388613) {
            this.f1578a = f;
        } else {
            if (i6 != 8388615) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f1578a = f1575g;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final float a(ViewGroup viewGroup) {
        float f3 = this.f1580c;
        return f3 >= 0.0f ? f3 : viewGroup.getWidth() / 4;
    }

    @Override // android.transition.Transition
    public final Transition addListener(Transition.TransitionListener transitionListener) {
        this.f1579b.addListener(transitionListener);
        return super.addListener(transitionListener);
    }

    public final float b(ViewGroup viewGroup) {
        float f3 = this.f1580c;
        return f3 >= 0.0f ? f3 : viewGroup.getHeight() / 4;
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        this.f1579b.captureEndValues(transitionValues);
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        this.f1579b.captureStartValues(transitionValues);
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:fadeAndShortSlideTransition:screenPosition");
        int i6 = iArr[0];
        int i10 = iArr[1];
        float translationX = view.getTranslationX();
        ObjectAnimator objectAnimatorF = com.bumptech.glide.c.f(view, transitionValues2, i6, i10, this.f1578a.n(this, viewGroup, view, iArr), this.f1578a.o(this, viewGroup, view, iArr), translationX, view.getTranslationY(), d, this);
        Animator animatorOnAppear = this.f1579b.onAppear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorF == null) {
            return animatorOnAppear;
        }
        if (animatorOnAppear == null) {
            return objectAnimatorF;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorF).with(animatorOnAppear);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:fadeAndShortSlideTransition:screenPosition");
        ObjectAnimator objectAnimatorF = com.bumptech.glide.c.f(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f1578a.n(this, viewGroup, view, iArr), this.f1578a.o(this, viewGroup, view, iArr), d, this);
        Animator animatorOnDisappear = this.f1579b.onDisappear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorF == null) {
            return animatorOnDisappear;
        }
        if (animatorOnDisappear == null) {
            return objectAnimatorF;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorF).with(animatorOnDisappear);
        return animatorSet;
    }

    @Override // android.transition.Transition
    public final Transition removeListener(Transition.TransitionListener transitionListener) {
        this.f1579b.removeListener(transitionListener);
        return super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public final void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        this.f1579b.setEpicenterCallback(epicenterCallback);
        super.setEpicenterCallback(epicenterCallback);
    }

    @Override // android.transition.Transition
    public final Transition clone() {
        FadeAndShortSlide fadeAndShortSlide = (FadeAndShortSlide) super.clone();
        fadeAndShortSlide.f1579b = (Visibility) this.f1579b.clone();
        return fadeAndShortSlide;
    }
}
