package androidx.mediarouter.app;

import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HashMap f2630a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f2631b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f2632c;

    public n(u uVar, HashMap map, HashMap map2) {
        this.f2632c = uVar;
        this.f2630a = map;
        this.f2631b = map2;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        HashMap map;
        HashMap map2;
        r0 r0Var;
        q1.s0 s0Var;
        u uVar = this.f2632c;
        uVar.D.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        HashSet hashSet = uVar.G;
        if (hashSet == null || uVar.H == null) {
            return;
        }
        int size = hashSet.size() - uVar.H.size();
        o oVar = new o(0, uVar);
        int firstVisiblePosition = uVar.D.getFirstVisiblePosition();
        int i6 = 0;
        boolean z7 = false;
        while (true) {
            int childCount = uVar.D.getChildCount();
            map = this.f2630a;
            map2 = this.f2631b;
            if (i6 >= childCount) {
                break;
            }
            View childAt = uVar.D.getChildAt(i6);
            q1.s0 s0Var2 = (q1.s0) uVar.E.getItem(firstVisiblePosition + i6);
            Rect rect = (Rect) map.get(s0Var2);
            int top = childAt.getTop();
            int i10 = rect != null ? rect.top : (uVar.N * size) + top;
            AnimationSet animationSet = new AnimationSet(true);
            HashSet hashSet2 = uVar.G;
            if (hashSet2 == null || !hashSet2.contains(s0Var2)) {
                s0Var = s0Var2;
            } else {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                s0Var = s0Var2;
                alphaAnimation.setDuration(uVar.i0);
                animationSet.addAnimation(alphaAnimation);
                i10 = top;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i10 - top, 0.0f);
            translateAnimation.setDuration(uVar.f2703h0);
            animationSet.addAnimation(translateAnimation);
            animationSet.setFillAfter(true);
            animationSet.setFillEnabled(true);
            animationSet.setInterpolator(uVar.f2708k0);
            if (!z7) {
                animationSet.setAnimationListener(oVar);
                z7 = true;
            }
            childAt.clearAnimation();
            childAt.startAnimation(animationSet);
            q1.s0 s0Var3 = s0Var;
            map.remove(s0Var3);
            map2.remove(s0Var3);
            i6++;
        }
        for (Map.Entry entry : map2.entrySet()) {
            q1.s0 s0Var4 = (q1.s0) entry.getKey();
            BitmapDrawable bitmapDrawable = (BitmapDrawable) entry.getValue();
            Rect rect2 = (Rect) map.get(s0Var4);
            if (uVar.H.contains(s0Var4)) {
                r0Var = new r0(bitmapDrawable, rect2);
                r0Var.f2685h = 0.0f;
                r0Var.f2683e = uVar.f2706j0;
                r0Var.d = uVar.f2708k0;
            } else {
                int i11 = uVar.N * size;
                r0 r0Var2 = new r0(bitmapDrawable, rect2);
                r0Var2.f2684g = i11;
                r0Var2.f2683e = uVar.f2703h0;
                r0Var2.d = uVar.f2708k0;
                r0Var2.f2689l = new a7.f(uVar, 4, s0Var4);
                uVar.I.add(s0Var4);
                r0Var = r0Var2;
            }
            uVar.D.f2542a.add(r0Var);
        }
    }
}
