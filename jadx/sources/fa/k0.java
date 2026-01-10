package fa;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6900a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l0 f6901b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ m0 f6902c;

    public k0(m0 m0Var, int i6, l0 l0Var) {
        this.f6902c = m0Var;
        this.f6900a = i6;
        this.f6901b = l0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    @Override // android.view.View.OnKeyListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onKey(android.view.View r6, int r7, android.view.KeyEvent r8) {
        /*
            r5 = this;
            r0 = 20
            r1 = 0
            int r2 = r5.f6900a
            fa.m0 r3 = r5.f6902c
            if (r7 != r0) goto L47
            int r0 = r8.getAction()
            r4 = 1
            if (r0 != r4) goto L47
            java.util.ArrayList r6 = r3.d
            int r6 = r6.size()
            int r7 = r3.f6917c
            int r8 = r6 % r7
            int r0 = r2 % r7
            int r3 = r6 / r7
            int r2 = r2 / r7
            int r2 = r2 + r4
            if (r3 != r2) goto L23
            goto L24
        L23:
            r4 = 0
        L24:
            if (r8 == 0) goto L59
            if (r4 == 0) goto L59
            if (r0 < r8) goto L59
            fa.l0 r7 = r5.f6901b
            android.view.View r7 = r7.itemView
            android.view.ViewParent r7 = r7.getParent()
        L32:
            if (r7 == 0) goto L40
            boolean r8 = r7 instanceof androidx.recyclerview.widget.RecyclerView
            if (r8 == 0) goto L3b
            androidx.recyclerview.widget.RecyclerView r7 = (androidx.recyclerview.widget.RecyclerView) r7
            goto L41
        L3b:
            android.view.ViewParent r7 = r7.getParent()
            goto L32
        L40:
            r7 = 0
        L41:
            if (r7 == 0) goto L59
            o9.d.z(r7, r6)
            goto L59
        L47:
            android.view.View$OnKeyListener r0 = r3.f6916b
            if (r0 == 0) goto L59
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            r6.setTag(r0)
            android.view.View$OnKeyListener r0 = r3.f6916b
            boolean r6 = r0.onKey(r6, r7, r8)
            return r6
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.k0.onKey(android.view.View, int, android.view.KeyEvent):boolean");
    }
}
