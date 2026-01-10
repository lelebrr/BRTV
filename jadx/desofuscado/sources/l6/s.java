package l6;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.p2elite.brtv2.R;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends q {
    @Override // l6.q
    public final float e() {
        return this.f8058v.getElevation();
    }

    @Override // l6.q
    public final void f(Rect rect) {
        if (((FloatingActionButton) this.f8059w.f7444b).f4929k) {
            super.f(rect);
            return;
        }
        if (this.f) {
            FloatingActionButton floatingActionButton = this.f8058v;
            int sizeDimension = floatingActionButton.getSizeDimension();
            int i6 = this.f8047k;
            if (sizeDimension < i6) {
                int sizeDimension2 = (i6 - floatingActionButton.getSizeDimension()) / 2;
                rect.set(sizeDimension2, sizeDimension2, sizeDimension2, sizeDimension2);
                return;
            }
        }
        rect.set(0, 0, 0, 0);
    }

    @Override // l6.q
    public final void g(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i6) {
        Drawable layerDrawable;
        u6.m mVar = this.f8039a;
        mVar.getClass();
        r rVar = new r(mVar);
        this.f8040b = rVar;
        rVar.setTintList(colorStateList);
        if (mode != null) {
            this.f8040b.setTintMode(mode);
        }
        u6.h hVar = this.f8040b;
        FloatingActionButton floatingActionButton = this.f8058v;
        hVar.k(floatingActionButton.getContext());
        if (i6 > 0) {
            Context context = floatingActionButton.getContext();
            u6.m mVar2 = this.f8039a;
            mVar2.getClass();
            c cVar = new c(mVar2);
            int i10 = u7.d.i(context, R.color.design_fab_stroke_top_outer_color);
            int i11 = u7.d.i(context, R.color.design_fab_stroke_top_inner_color);
            int i12 = u7.d.i(context, R.color.design_fab_stroke_end_inner_color);
            int i13 = u7.d.i(context, R.color.design_fab_stroke_end_outer_color);
            cVar.f7999i = i10;
            cVar.f8000j = i11;
            cVar.f8001k = i12;
            cVar.f8002l = i13;
            float f = i6;
            if (cVar.f7998h != f) {
                cVar.f7998h = f;
                cVar.f7994b.setStrokeWidth(f * 1.3333f);
                cVar.f8004n = true;
                cVar.invalidateSelf();
            }
            if (colorStateList != null) {
                cVar.f8003m = colorStateList.getColorForState(cVar.getState(), cVar.f8003m);
            }
            cVar.f8006p = colorStateList;
            cVar.f8004n = true;
            cVar.invalidateSelf();
            this.d = cVar;
            c cVar2 = this.d;
            cVar2.getClass();
            u6.h hVar2 = this.f8040b;
            hVar2.getClass();
            layerDrawable = new LayerDrawable(new Drawable[]{cVar2, hVar2});
        } else {
            this.d = null;
            layerDrawable = this.f8040b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(s6.c.b(colorStateList2), layerDrawable, null);
        this.f8041c = rippleDrawable;
        this.f8042e = rippleDrawable;
    }

    @Override // l6.q
    public final void i() {
        r();
    }

    @Override // l6.q
    public final void j(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            FloatingActionButton floatingActionButton = this.f8058v;
            if (!floatingActionButton.isEnabled()) {
                floatingActionButton.setElevation(0.0f);
                floatingActionButton.setTranslationZ(0.0f);
                return;
            }
            floatingActionButton.setElevation(this.f8044h);
            if (floatingActionButton.isPressed()) {
                floatingActionButton.setTranslationZ(this.f8046j);
            } else if (floatingActionButton.isFocused() || floatingActionButton.isHovered()) {
                floatingActionButton.setTranslationZ(this.f8045i);
            } else {
                floatingActionButton.setTranslationZ(0.0f);
            }
        }
    }

    @Override // l6.q
    public final void k(float f, float f3, float f4) {
        int i6 = Build.VERSION.SDK_INT;
        FloatingActionButton floatingActionButton = this.f8058v;
        if (i6 == 21) {
            floatingActionButton.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(q.D, s(f, f4));
            stateListAnimator.addState(q.E, s(f, f3));
            stateListAnimator.addState(q.F, s(f, f3));
            stateListAnimator.addState(q.G, s(f, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f).setDuration(0L));
            if (i6 >= 22 && i6 <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(q.C);
            stateListAnimator.addState(q.H, animatorSet);
            stateListAnimator.addState(q.I, s(0.0f, 0.0f));
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (p()) {
            r();
        }
    }

    @Override // l6.q
    public final void n(ColorStateList colorStateList) {
        Drawable drawable = this.f8041c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(s6.c.b(colorStateList));
        } else {
            super.n(colorStateList);
        }
    }

    @Override // l6.q
    public final boolean p() {
        return ((FloatingActionButton) this.f8059w.f7444b).f4929k || (this.f && this.f8058v.getSizeDimension() < this.f8047k);
    }

    public final AnimatorSet s(float f, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = {f};
        FloatingActionButton floatingActionButton = this.f8058v;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", fArr).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f3).setDuration(100L));
        animatorSet.setInterpolator(q.C);
        return animatorSet;
    }

    @Override // l6.q
    public final void h() {
    }

    @Override // l6.q
    public final void q() {
    }
}
