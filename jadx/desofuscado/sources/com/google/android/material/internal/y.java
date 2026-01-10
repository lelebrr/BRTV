package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y extends Transition {
    @Override // androidx.transition.Transition
    public final void c(y1.e0 e0Var) {
        View view = e0Var.f11260b;
        if (view instanceof TextView) {
            e0Var.f11259a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public final void f(y1.e0 e0Var) {
        View view = e0Var.f11260b;
        if (view instanceof TextView) {
            e0Var.f11259a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public final Animator j(ViewGroup viewGroup, y1.e0 e0Var, y1.e0 e0Var2) {
        if (e0Var == null || e0Var2 == null || !(e0Var.f11260b instanceof TextView)) {
            return null;
        }
        View view = e0Var2.f11260b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        HashMap map = e0Var.f11259a;
        HashMap map2 = e0Var2.f11259a;
        float fFloatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        float fFloatValue2 = map2.get("android:textscale:scale") != null ? ((Float) map2.get("android:textscale:scale")).floatValue() : 1.0f;
        if (fFloatValue == fFloatValue2) {
            return null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fFloatValue, fFloatValue2);
        valueAnimatorOfFloat.addUpdateListener(new a7.c(3, textView));
        return valueAnimatorOfFloat;
    }
}
