package l6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8020a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f8021b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f8022c;
    public final /* synthetic */ q d;

    public j(q qVar, boolean z7, h hVar) {
        this.d = qVar;
        this.f8021b = z7;
        this.f8022c = hVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f8020a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        q qVar = this.d;
        qVar.f8054r = 0;
        qVar.f8048l = null;
        if (this.f8020a) {
            return;
        }
        boolean z7 = this.f8021b;
        qVar.f8058v.a(z7 ? 8 : 4, z7);
        h hVar = this.f8022c;
        if (hVar != null) {
            ((o9.e) hVar.f8016b).D((FloatingActionButton) hVar.f8017c);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        q qVar = this.d;
        qVar.f8058v.a(0, this.f8021b);
        qVar.f8054r = 1;
        qVar.f8048l = animator;
        this.f8020a = false;
    }
}
