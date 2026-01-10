package androidx.transition;

import a7.g;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import e0.b;
import y1.e0;
import y1.g0;
import y1.l;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Fade extends Visibility {
    public Fade(int i6) {
        J(i6);
    }

    @Override // androidx.transition.Visibility
    public final Animator H(ViewGroup viewGroup, View view, e0 e0Var, e0 e0Var2) {
        Float f;
        float fFloatValue = (e0Var == null || (f = (Float) e0Var.f11259a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f.floatValue();
        return K(view, fFloatValue != 1.0f ? fFloatValue : 0.0f, 1.0f);
    }

    @Override // androidx.transition.Visibility
    public final Animator I(ViewGroup viewGroup, View view, e0 e0Var) {
        Float f;
        g0.f11276a.getClass();
        return K(view, (e0Var == null || (f = (Float) e0Var.f11259a.get("android:fade:transitionAlpha")) == null) ? 1.0f : f.floatValue(), 0.0f);
    }

    public final ObjectAnimator K(View view, float f, float f3) {
        if (f == f3) {
            return null;
        }
        g0.b(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, g0.f11277b, f3);
        objectAnimatorOfFloat.addListener(new g(view));
        a(new l(0, view));
        return objectAnimatorOfFloat;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void f(e0 e0Var) {
        Visibility.F(e0Var);
        e0Var.f11259a.put("android:fade:transitionAlpha", Float.valueOf(g0.f11276a.k(e0Var.f11260b)));
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.d);
        J(b.c(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, this.f3036x));
        typedArrayObtainStyledAttributes.recycle();
    }
}
