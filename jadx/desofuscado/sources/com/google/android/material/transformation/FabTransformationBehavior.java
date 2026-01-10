package com.google.android.material.transformation;

import a7.f;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import androidx.coordinatorlayout.widget.c;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import y5.a;
import y5.e;
import y5.g;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c, reason: collision with root package name */
    public final Rect f5415c;
    public final RectF d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f5416e;
    public final int[] f;

    /* renamed from: g, reason: collision with root package name */
    public float f5417g;

    /* renamed from: h, reason: collision with root package name */
    public float f5418h;

    public FabTransformationBehavior() {
        this.f5415c = new Rect();
        this.d = new RectF();
        this.f5416e = new RectF();
        this.f = new int[2];
    }

    public static Pair u(float f, float f3, boolean z7, f fVar) {
        y5.f fVarF;
        y5.f fVarF2;
        if (f == 0.0f || f3 == 0.0f) {
            fVarF = ((e) fVar.f169b).f("translationXLinear");
            fVarF2 = ((e) fVar.f169b).f("translationYLinear");
        } else if ((!z7 || f3 >= 0.0f) && (z7 || f3 <= 0.0f)) {
            fVarF = ((e) fVar.f169b).f("translationXCurveDownwards");
            fVarF2 = ((e) fVar.f169b).f("translationYCurveDownwards");
        } else {
            fVarF = ((e) fVar.f169b).f("translationXCurveUpwards");
            fVarF2 = ((e) fVar.f169b).f("translationYCurveUpwards");
        }
        return new Pair(fVarF, fVarF2);
    }

    public static float x(f fVar, y5.f fVar2, float f) {
        long j10 = fVar2.f11415a;
        y5.f fVarF = ((e) fVar.f169b).f("expansion");
        return a.a(f, 0.0f, fVar2.b().getInterpolation((((fVarF.f11415a + fVarF.f11416b) + 17) - j10) / fVar2.f11416b));
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean b(View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void c(c cVar) {
        if (cVar.f1127h == 0) {
            cVar.f1127h = 80;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0346  */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.animation.AnimatorSet t(android.view.View r25, android.view.View r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 988
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.t(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    public final float v(View view, View view2, g gVar) {
        RectF rectF = this.d;
        RectF rectF2 = this.f5416e;
        y(view, rectF);
        rectF.offset(this.f5417g, this.f5418h);
        y(view2, rectF2);
        gVar.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public final float w(View view, View view2, g gVar) {
        RectF rectF = this.d;
        RectF rectF2 = this.f5416e;
        y(view, rectF);
        rectF.offset(this.f5417g, this.f5418h);
        y(view2, rectF2);
        gVar.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final void y(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public abstract f z(Context context, boolean z7);

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5415c = new Rect();
        this.d = new RectF();
        this.f5416e = new RectF();
        this.f = new int[2];
    }
}
