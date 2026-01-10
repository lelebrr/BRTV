package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f1569a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f1570b;

    public x(y yVar, p0 p0Var) {
        this.f1570b = yVar;
        this.f1569a = p0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        p0 p0Var = this.f1569a;
        p0Var.k();
        i.f((ViewGroup) p0Var.f1511c.F.getParent(), this.f1570b.f1571a.D()).e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
