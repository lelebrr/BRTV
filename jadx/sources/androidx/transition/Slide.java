package androidx.transition;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import e0.b;
import org.xmlpull.v1.XmlPullParser;
import y1.e0;
import y1.r;
import y1.s;
import y1.t;
import y1.u;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Slide extends Visibility {
    public static final DecelerateInterpolator A = new DecelerateInterpolator();
    public static final AccelerateInterpolator B = new AccelerateInterpolator();
    public static final s C = new s(0);
    public static final s D = new s(1);
    public static final t E = new t(0);
    public static final s F = new s(2);
    public static final s G = new s(3);
    public static final t H = new t(1);

    /* renamed from: z, reason: collision with root package name */
    public final u f3010z;

    @SuppressLint({"RestrictedApi"})
    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        t tVar = H;
        this.f3010z = tVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f);
        int iC = b.c(typedArrayObtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        typedArrayObtainStyledAttributes.recycle();
        if (iC == 3) {
            this.f3010z = C;
        } else if (iC == 5) {
            this.f3010z = F;
        } else if (iC == 48) {
            this.f3010z = E;
        } else if (iC == 80) {
            this.f3010z = tVar;
        } else if (iC == 8388611) {
            this.f3010z = D;
        } else {
            if (iC != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f3010z = G;
        }
        r rVar = new r();
        rVar.f11320v = iC;
        this.f3030s = rVar;
    }

    @Override // androidx.transition.Visibility
    public final Animator H(ViewGroup viewGroup, View view, e0 e0Var, e0 e0Var2) {
        if (e0Var2 == null) {
            return null;
        }
        int[] iArr = (int[]) e0Var2.f11259a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return v.c(view, e0Var2, iArr[0], iArr[1], this.f3010z.b(viewGroup, view), this.f3010z.a(viewGroup, view), translationX, translationY, A, this);
    }

    @Override // androidx.transition.Visibility
    public final Animator I(ViewGroup viewGroup, View view, e0 e0Var) {
        if (e0Var == null) {
            return null;
        }
        int[] iArr = (int[]) e0Var.f11259a.get("android:slide:screenPosition");
        return v.c(view, e0Var, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f3010z.b(viewGroup, view), this.f3010z.a(viewGroup, view), B, this);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void c(e0 e0Var) {
        Visibility.F(e0Var);
        int[] iArr = new int[2];
        e0Var.f11260b.getLocationOnScreen(iArr);
        e0Var.f11259a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void f(e0 e0Var) {
        Visibility.F(e0Var);
        int[] iArr = new int[2];
        e0Var.f11260b.getLocationOnScreen(iArr);
        e0Var.f11259a.put("android:slide:screenPosition", iArr);
    }
}
