package n0;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f8358a;

    /* renamed from: b, reason: collision with root package name */
    public ViewTreeObserver f8359b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f8360c;

    public v(View view, Runnable runnable) {
        this.f8358a = view;
        this.f8359b = view.getViewTreeObserver();
        this.f8360c = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        v vVar = new v(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(vVar);
        view.addOnAttachStateChangeListener(vVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.f8359b.isAlive();
        View view = this.f8358a;
        if (zIsAlive) {
            this.f8359b.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f8360c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f8359b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.f8359b.isAlive();
        View view2 = this.f8358a;
        if (zIsAlive) {
            this.f8359b.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
