package a7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import l6.h;
import l6.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f158a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f159b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f160c;
    public final /* synthetic */ Object d;

    public b(boolean z7, View view, View view2) {
        this.f159b = z7;
        this.f160c = view;
        this.d = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f158a) {
            case 0:
                if (!this.f159b) {
                    ((View) this.f160c).setVisibility(4);
                    View view = (View) this.d;
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                    break;
                }
                break;
            default:
                q qVar = (q) this.d;
                qVar.f8054r = 0;
                qVar.f8048l = null;
                h hVar = (h) this.f160c;
                if (hVar != null) {
                    ((o9.e) hVar.f8016b).E();
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f158a) {
            case 0:
                if (this.f159b) {
                    ((View) this.f160c).setVisibility(0);
                    View view = (View) this.d;
                    view.setAlpha(0.0f);
                    view.setVisibility(4);
                    break;
                }
                break;
            default:
                q qVar = (q) this.d;
                qVar.f8058v.a(0, this.f159b);
                qVar.f8054r = 2;
                qVar.f8048l = animator;
                break;
        }
    }

    public b(q qVar, boolean z7, h hVar) {
        this.d = qVar;
        this.f159b = z7;
        this.f160c = hVar;
    }
}
