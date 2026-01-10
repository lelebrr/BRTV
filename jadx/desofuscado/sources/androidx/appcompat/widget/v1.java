package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewConfiguration;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class v1 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final float f854a;

    /* renamed from: b, reason: collision with root package name */
    public final int f855b;

    /* renamed from: c, reason: collision with root package name */
    public final int f856c;
    public final View d;

    /* renamed from: e, reason: collision with root package name */
    public u1 f857e;
    public u1 f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f858g;

    /* renamed from: h, reason: collision with root package name */
    public int f859h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f860i = new int[2];

    public v1(View view) {
        this.d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f854a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f855b = tapTimeout;
        this.f856c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        u1 u1Var = this.f;
        View view = this.d;
        if (u1Var != null) {
            view.removeCallbacks(u1Var);
        }
        u1 u1Var2 = this.f857e;
        if (u1Var2 != null) {
            view.removeCallbacks(u1Var2);
        }
    }

    public abstract k.c0 b();

    public abstract boolean c();

    public boolean d() {
        k.c0 c0VarB = b();
        if (c0VarB == null || !c0VarB.c()) {
            return true;
        }
        c0VarB.dismiss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.v1.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f858g = false;
        this.f859h = -1;
        u1 u1Var = this.f857e;
        if (u1Var != null) {
            this.d.removeCallbacks(u1Var);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
