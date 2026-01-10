package androidx.fragment.app;

import android.view.View;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1499a;

    public o0(View view) {
        this.f1499a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        View view2 = this.f1499a;
        view2.removeOnAttachStateChangeListener(this);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        n0.e0.c(view2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
