package androidx.transition;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import e0.b;
import java.util.HashMap;
import y1.e0;
import y1.n0;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class Visibility extends Transition {

    /* renamed from: y, reason: collision with root package name */
    public static final String[] f3035y = {"android:visibility:visibility", "android:visibility:parent"};

    /* renamed from: x, reason: collision with root package name */
    public int f3036x;

    public Visibility() {
        this.f3036x = 3;
    }

    public static void F(e0 e0Var) {
        int visibility = e0Var.f11260b.getVisibility();
        HashMap map = e0Var.f11259a;
        map.put("android:visibility:visibility", Integer.valueOf(visibility));
        View view = e0Var.f11260b;
        map.put("android:visibility:parent", view.getParent());
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        map.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static y1.n0 G(y1.e0 r8, y1.e0 r9) {
        /*
            y1.n0 r0 = new y1.n0
            r0.<init>()
            r1 = 0
            r0.f11309a = r1
            r0.f11310b = r1
            r2 = 0
            r3 = -1
            java.lang.String r4 = "android:visibility:parent"
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L2f
            java.util.HashMap r6 = r8.f11259a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L2f
            java.lang.Object r7 = r6.get(r5)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r0.f11311c = r7
            java.lang.Object r6 = r6.get(r4)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f11312e = r6
            goto L33
        L2f:
            r0.f11311c = r3
            r0.f11312e = r2
        L33:
            if (r9 == 0) goto L52
            java.util.HashMap r6 = r9.f11259a
            boolean r7 = r6.containsKey(r5)
            if (r7 == 0) goto L52
            java.lang.Object r2 = r6.get(r5)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            r0.d = r2
            java.lang.Object r2 = r6.get(r4)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f = r2
            goto L56
        L52:
            r0.d = r3
            r0.f = r2
        L56:
            r2 = 1
            if (r8 == 0) goto L8a
            if (r9 == 0) goto L8a
            int r8 = r0.f11311c
            int r9 = r0.d
            if (r8 != r9) goto L68
            android.view.ViewGroup r3 = r0.f11312e
            android.view.ViewGroup r4 = r0.f
            if (r3 != r4) goto L68
            return r0
        L68:
            if (r8 == r9) goto L78
            if (r8 != 0) goto L71
            r0.f11310b = r1
            r0.f11309a = r2
            goto L9f
        L71:
            if (r9 != 0) goto L9f
            r0.f11310b = r2
            r0.f11309a = r2
            goto L9f
        L78:
            android.view.ViewGroup r8 = r0.f
            if (r8 != 0) goto L81
            r0.f11310b = r1
            r0.f11309a = r2
            goto L9f
        L81:
            android.view.ViewGroup r8 = r0.f11312e
            if (r8 != 0) goto L9f
            r0.f11310b = r2
            r0.f11309a = r2
            goto L9f
        L8a:
            if (r8 != 0) goto L95
            int r8 = r0.d
            if (r8 != 0) goto L95
            r0.f11310b = r2
            r0.f11309a = r2
            goto L9f
        L95:
            if (r9 != 0) goto L9f
            int r8 = r0.f11311c
            if (r8 != 0) goto L9f
            r0.f11310b = r1
            r0.f11309a = r2
        L9f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.G(y1.e0, y1.e0):y1.n0");
    }

    public Animator H(ViewGroup viewGroup, View view, e0 e0Var, e0 e0Var2) {
        return null;
    }

    public Animator I(ViewGroup viewGroup, View view, e0 e0Var) {
        return null;
    }

    public final void J(int i6) {
        if ((i6 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f3036x = i6;
    }

    @Override // androidx.transition.Transition
    public void c(e0 e0Var) {
        F(e0Var);
    }

    @Override // androidx.transition.Transition
    public void f(e0 e0Var) {
        F(e0Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
    
        if (G(m(r5, false), p(r5, false)).f11309a != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01fb  */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.animation.Animator j(android.view.ViewGroup r21, y1.e0 r22, y1.e0 r23) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Visibility.j(android.view.ViewGroup, y1.e0, y1.e0):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] o() {
        return f3035y;
    }

    @Override // androidx.transition.Transition
    public final boolean q(e0 e0Var, e0 e0Var2) {
        if (e0Var == null && e0Var2 == null) {
            return false;
        }
        if (e0Var != null && e0Var2 != null && e0Var2.f11259a.containsKey("android:visibility:visibility") != e0Var.f11259a.containsKey("android:visibility:visibility")) {
            return false;
        }
        n0 n0VarG = G(e0Var, e0Var2);
        if (n0VarG.f11309a) {
            return n0VarG.f11311c == 0 || n0VarG.d == 0;
        }
        return false;
    }

    @SuppressLint({"RestrictedApi"})
    public Visibility(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3036x = 3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11325c);
        int iC = b.c(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionVisibilityMode", 0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (iC != 0) {
            J(iC);
        }
    }
}
