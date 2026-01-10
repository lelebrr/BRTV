package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.g3;
import e0.b;
import java.util.HashMap;
import java.util.WeakHashMap;
import l6.a;
import l6.m;
import n0.s0;
import y1.e0;
import y1.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    public static final g3 A;
    public static final g3 B;
    public static final g3 C;
    public static final g3 D;
    public static final m E;

    /* renamed from: y, reason: collision with root package name */
    public static final String[] f2996y = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: z, reason: collision with root package name */
    public static final g3 f2997z;

    /* renamed from: x, reason: collision with root package name */
    public boolean f2998x;

    static {
        new a(PointF.class, "boundsOrigin").f7988b = new Rect();
        f2997z = new g3("topLeft", PointF.class, 10);
        A = new g3("bottomRight", PointF.class, 11);
        B = new g3("bottomRight", PointF.class, 12);
        C = new g3("topLeft", PointF.class, 13);
        D = new g3("position", PointF.class, 14);
        E = new m(2);
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2998x = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11324b);
        boolean z7 = b.e((XmlResourceParser) attributeSet, "resizeClip") ? typedArrayObtainStyledAttributes.getBoolean(0, false) : false;
        typedArrayObtainStyledAttributes.recycle();
        this.f2998x = z7;
    }

    public final void F(e0 e0Var) {
        View view = e0Var.f11260b;
        WeakHashMap weakHashMap = s0.f8353a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap map = e0Var.f11259a;
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", e0Var.f11260b.getParent());
        if (this.f2998x) {
            map.put("android:changeBounds:clip", view.getClipBounds());
        }
    }

    @Override // androidx.transition.Transition
    public final void c(e0 e0Var) {
        F(e0Var);
    }

    @Override // androidx.transition.Transition
    public final void f(e0 e0Var) {
        F(e0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01b3  */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.animation.Animator j(android.view.ViewGroup r20, y1.e0 r21, y1.e0 r22) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.j(android.view.ViewGroup, y1.e0, y1.e0):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final String[] o() {
        return f2996y;
    }
}
