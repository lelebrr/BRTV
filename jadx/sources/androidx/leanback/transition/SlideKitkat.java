package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class SlideKitkat extends Visibility {

    /* renamed from: b, reason: collision with root package name */
    public static final DecelerateInterpolator f1581b = new DecelerateInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static final AccelerateInterpolator f1582c = new AccelerateInterpolator();
    public static final c d = new c(0);

    /* renamed from: e, reason: collision with root package name */
    public static final d f1583e = new d(0);
    public static final c f = new c(1);

    /* renamed from: g, reason: collision with root package name */
    public static final d f1584g = new d(1);

    /* renamed from: h, reason: collision with root package name */
    public static final c f1585h = new c(2);

    /* renamed from: i, reason: collision with root package name */
    public static final c f1586i = new c(3);

    /* renamed from: a, reason: collision with root package name */
    public final e f1587a;

    public SlideKitkat(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h1.a.f7168k);
        int i6 = typedArrayObtainStyledAttributes.getInt(3, 80);
        if (i6 == 3) {
            this.f1587a = d;
        } else if (i6 == 5) {
            this.f1587a = f;
        } else if (i6 == 48) {
            this.f1587a = f1583e;
        } else if (i6 == 80) {
            this.f1587a = f1584g;
        } else if (i6 == 8388611) {
            this.f1587a = f1585h;
        } else {
            if (i6 != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f1587a = f1586i;
        }
        long j10 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (j10 >= 0) {
            setDuration(j10);
        }
        long j11 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (j11 > 0) {
            setStartDelay(j11);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static ObjectAnimator a(View view, Property property, float f3, float f4, float f5, TimeInterpolator timeInterpolator, int i6) {
        float[] fArr = (float[]) view.getTag(R.id.lb_slide_transition_value);
        if (fArr != null) {
            f3 = View.TRANSLATION_Y == property ? fArr[1] : fArr[0];
            view.setTag(R.id.lb_slide_transition_value, null);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f3, f4);
        f fVar = new f(view, property, f5, f4, i6);
        objectAnimatorOfFloat.addListener(fVar);
        objectAnimatorOfFloat.addPauseListener(fVar);
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        return objectAnimatorOfFloat;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i6, TransitionValues transitionValues2, int i10) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        if (view == null) {
            return null;
        }
        float fJ = this.f1587a.j(view);
        return a(view, this.f1587a.l(), this.f1587a.h(view), fJ, fJ, f1581b, 0);
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i6, TransitionValues transitionValues2, int i10) {
        View view = transitionValues != null ? transitionValues.view : null;
        if (view == null) {
            return null;
        }
        float fJ = this.f1587a.j(view);
        return a(view, this.f1587a.l(), fJ, this.f1587a.h(view), fJ, f1582c, 4);
    }
}
