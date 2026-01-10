package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1444a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1445b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f1446c;

    public f(ViewGroup viewGroup, View view, g gVar) {
        this.f1444a = viewGroup;
        this.f1445b = view;
        this.f1446c = gVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f1444a.post(new e(0, this));
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
