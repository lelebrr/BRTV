package a6;

import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public int f153c;
    public int d = -1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f154e;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f154e = swipeDismissBehavior;
    }

    @Override // r4.b
    public final void F(int i6, View view) {
        this.d = i6;
        this.f153c = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // r4.b
    public final void G(int i6) {
        this.f154e.getClass();
    }

    @Override // r4.b
    public final void H(View view, int i6, int i10) {
        float f = this.f153c;
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f154e;
        float f3 = (width * swipeDismissBehavior.d) + f;
        float width2 = (view.getWidth() * swipeDismissBehavior.f4644e) + this.f153c;
        float f4 = i6;
        if (f4 <= f3) {
            view.setAlpha(1.0f);
        } else if (f4 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f4 - f3) / (width2 - f3))), 1.0f));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    @Override // r4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void I(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.d = r11
            int r11 = r9.getWidth()
            r0 = 1
            com.google.android.material.behavior.SwipeDismissBehavior r1 = r8.f154e
            r2 = 0
            r3 = 0
            int r4 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r4 == 0) goto L39
            java.util.WeakHashMap r5 = n0.s0.f8353a
            int r5 = r9.getLayoutDirection()
            if (r5 != r0) goto L1a
            r5 = 1
            goto L1b
        L1a:
            r5 = 0
        L1b:
            int r6 = r1.f4643c
            r7 = 2
            if (r6 != r7) goto L21
            goto L56
        L21:
            if (r6 != 0) goto L2d
            if (r5 == 0) goto L2a
            int r10 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r10 >= 0) goto L62
            goto L56
        L2a:
            if (r4 <= 0) goto L62
            goto L56
        L2d:
            if (r6 != r0) goto L62
            if (r5 == 0) goto L34
            if (r4 <= 0) goto L62
            goto L56
        L34:
            int r10 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r10 >= 0) goto L62
            goto L56
        L39:
            int r10 = r9.getLeft()
            int r3 = r8.f153c
            int r10 = r10 - r3
            int r3 = r9.getWidth()
            float r3 = (float) r3
            r1.getClass()
            r4 = 1056964608(0x3f000000, float:0.5)
            float r3 = r3 * r4
            int r3 = java.lang.Math.round(r3)
            int r10 = java.lang.Math.abs(r10)
            if (r10 < r3) goto L62
        L56:
            int r10 = r9.getLeft()
            int r2 = r8.f153c
            if (r10 >= r2) goto L60
            int r2 = r2 - r11
            goto L66
        L60:
            int r2 = r2 + r11
            goto L66
        L62:
            int r10 = r8.f153c
            r2 = r10
            r0 = 0
        L66:
            v0.d r10 = r1.f4641a
            int r11 = r9.getTop()
            boolean r10 = r10.q(r2, r11)
            if (r10 == 0) goto L7c
            a3.c r10 = new a3.c
            r10.<init>(r1, r9, r0)
            java.util.WeakHashMap r11 = n0.s0.f8353a
            r9.postOnAnimation(r10)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a6.b.I(android.view.View, float, float):void");
    }

    @Override // r4.b
    public final boolean O(int i6, View view) {
        int i10 = this.d;
        return (i10 == -1 || i10 == i6) && this.f154e.s(view);
    }

    @Override // r4.b
    public final int d(int i6, View view) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = s0.f8353a;
        boolean z7 = view.getLayoutDirection() == 1;
        int i10 = this.f154e.f4643c;
        if (i10 == 0) {
            if (z7) {
                width = this.f153c - view.getWidth();
                width2 = this.f153c;
            } else {
                width = this.f153c;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i10 != 1) {
            width = this.f153c - view.getWidth();
            width2 = view.getWidth() + this.f153c;
        } else if (z7) {
            width = this.f153c;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f153c - view.getWidth();
            width2 = this.f153c;
        }
        return Math.min(Math.max(width, i6), width2);
    }

    @Override // r4.b
    public final int e(int i6, View view) {
        return view.getTop();
    }

    @Override // r4.b
    public final int x(View view) {
        return view.getWidth();
    }
}
