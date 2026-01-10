package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1433a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1434b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1435c;
    public final /* synthetic */ v0 d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f1436e;

    public c(ViewGroup viewGroup, View view, boolean z7, v0 v0Var, g gVar) {
        this.f1433a = viewGroup;
        this.f1434b = view;
        this.f1435c = z7;
        this.d = v0Var;
        this.f1436e = gVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f1433a;
        View view = this.f1434b;
        viewGroup.endViewTransition(view);
        if (this.f1435c) {
            a.e.a(this.d.f1559a, view);
        }
        this.f1436e.d();
    }
}
