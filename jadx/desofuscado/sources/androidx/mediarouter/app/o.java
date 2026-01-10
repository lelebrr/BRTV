package androidx.mediarouter.app;

import android.view.animation.Animation;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2642a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2643b;

    public /* synthetic */ o(int i6, Object obj) {
        this.f2642a = i6;
        this.f2643b = obj;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        switch (this.f2642a) {
            case 0:
                break;
            case 1:
                ((u) this.f2643b).m(true);
                break;
            default:
                q0 q0Var = ((o0) this.f2643b).f2651j;
                q0Var.f2676x = false;
                q0Var.q();
                break;
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        int i6 = this.f2642a;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        switch (this.f2642a) {
            case 0:
                u uVar = (u) this.f2643b;
                OverlayListView overlayListView = uVar.D;
                Iterator it = overlayListView.f2542a.iterator();
                while (it.hasNext()) {
                    r0 r0Var = (r0) it.next();
                    if (!r0Var.f2687j) {
                        r0Var.f2686i = overlayListView.getDrawingTime();
                        r0Var.f2687j = true;
                    }
                }
                uVar.D.postDelayed(uVar.f2716o0, uVar.f2703h0);
                break;
            case 1:
                break;
            default:
                ((o0) this.f2643b).f2651j.f2676x = true;
                break;
        }
    }

    private final void a(Animation animation) {
    }

    private final void b(Animation animation) {
    }

    private final void c(Animation animation) {
    }

    private final void d(Animation animation) {
    }

    private final void e(Animation animation) {
    }
}
