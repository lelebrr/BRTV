package androidx.transition;

import a6.a;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.WeakHashMap;
import l6.m;
import n0.s0;
import y1.e0;
import y1.g0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ChangeClipBounds extends Transition {

    /* renamed from: x, reason: collision with root package name */
    public static final String[] f2999x = {"android:clipBounds:clip"};

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static void F(e0 e0Var) {
        View view = e0Var.f11260b;
        if (view.getVisibility() == 8) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        Rect clipBounds = view.getClipBounds();
        HashMap map = e0Var.f11259a;
        map.put("android:clipBounds:clip", clipBounds);
        if (clipBounds == null) {
            map.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
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

    @Override // androidx.transition.Transition
    public final Animator j(ViewGroup viewGroup, e0 e0Var, e0 e0Var2) {
        if (e0Var != null && e0Var2 != null) {
            HashMap map = e0Var.f11259a;
            if (map.containsKey("android:clipBounds:clip")) {
                HashMap map2 = e0Var2.f11259a;
                if (map2.containsKey("android:clipBounds:clip")) {
                    Rect rect = (Rect) map.get("android:clipBounds:clip");
                    Rect rect2 = (Rect) map2.get("android:clipBounds:clip");
                    boolean z7 = rect2 == null;
                    if (rect == null && rect2 == null) {
                        return null;
                    }
                    if (rect == null) {
                        rect = (Rect) map.get("android:clipBounds:bounds");
                    } else if (rect2 == null) {
                        rect2 = (Rect) map2.get("android:clipBounds:bounds");
                    }
                    if (rect.equals(rect2)) {
                        return null;
                    }
                    WeakHashMap weakHashMap = s0.f8353a;
                    View view = e0Var2.f11260b;
                    view.setClipBounds(rect);
                    Rect rect3 = new Rect();
                    m mVar = new m(2);
                    mVar.f8034b = rect3;
                    ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, g0.f11278c, mVar, rect, rect2);
                    if (z7) {
                        objectAnimatorOfObject.addListener(new a(7, view));
                    }
                    return objectAnimatorOfObject;
                }
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] o() {
        return f2999x;
    }
}
