package androidx.transition;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.p2elite.brtv2.R;
import y1.e0;
import y1.k;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Explode extends Visibility {
    public static final DecelerateInterpolator A = new DecelerateInterpolator();
    public static final AccelerateInterpolator B = new AccelerateInterpolator();

    /* renamed from: z, reason: collision with root package name */
    public final int[] f3007z;

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3007z = new int[2];
        this.f3030s = new k();
    }

    @Override // androidx.transition.Visibility
    public final Animator H(ViewGroup viewGroup, View view, e0 e0Var, e0 e0Var2) {
        if (e0Var2 == null) {
            return null;
        }
        Rect rect = (Rect) e0Var2.f11259a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        K(viewGroup, rect, this.f3007z);
        return v.c(view, e0Var2, rect.left, rect.top, translationX + r0[0], translationY + r0[1], translationX, translationY, A, this);
    }

    @Override // androidx.transition.Visibility
    public final Animator I(ViewGroup viewGroup, View view, e0 e0Var) {
        float f;
        float f3;
        if (e0Var == null) {
            return null;
        }
        Rect rect = (Rect) e0Var.f11259a.get("android:explode:screenBounds");
        int i6 = rect.left;
        int i10 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) e0Var.f11260b.getTag(R.id.transition_position);
        if (iArr != null) {
            f = (r8 - rect.left) + translationX;
            f3 = (r1 - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f = translationX;
            f3 = translationY;
        }
        K(viewGroup, rect, this.f3007z);
        return v.c(view, e0Var, i6, i10, translationX, translationY, f + r1[0], f3 + r1[1], B, this);
    }

    public final void K(ViewGroup viewGroup, Rect rect, int[] iArr) {
        int[] iArr2 = this.f3007z;
        viewGroup.getLocationOnScreen(iArr2);
        int i6 = iArr2[0];
        int i10 = iArr2[1];
        int iRound = Math.round(viewGroup.getTranslationX()) + (viewGroup.getWidth() / 2) + i6;
        int iRound2 = Math.round(viewGroup.getTranslationY()) + (viewGroup.getHeight() / 2) + i10;
        float fCenterX = rect.centerX() - iRound;
        float fCenterY = rect.centerY() - iRound2;
        if (fCenterX == 0.0f && fCenterY == 0.0f) {
            fCenterX = ((float) (Math.random() * 2.0d)) - 1.0f;
            fCenterY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float fSqrt = (float) Math.sqrt((fCenterY * fCenterY) + (fCenterX * fCenterX));
        int i11 = iRound - i6;
        int i12 = iRound2 - i10;
        float fMax = Math.max(i11, viewGroup.getWidth() - i11);
        float fMax2 = Math.max(i12, viewGroup.getHeight() - i12);
        float fSqrt2 = (float) Math.sqrt((fMax2 * fMax2) + (fMax * fMax));
        iArr[0] = Math.round((fCenterX / fSqrt) * fSqrt2);
        iArr[1] = Math.round(fSqrt2 * (fCenterY / fSqrt));
    }

    public final void L(e0 e0Var) {
        View view = e0Var.f11260b;
        int[] iArr = this.f3007z;
        view.getLocationOnScreen(iArr);
        int i6 = iArr[0];
        int i10 = iArr[1];
        e0Var.f11259a.put("android:explode:screenBounds", new Rect(i6, i10, view.getWidth() + i6, view.getHeight() + i10));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void c(e0 e0Var) {
        Visibility.F(e0Var);
        L(e0Var);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void f(e0 e0Var) {
        Visibility.F(e0Var);
        L(e0Var);
    }
}
