package y1;

import android.view.View;
import androidx.transition.Transition;
import androidx.transition.TransitionSet;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l extends z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11297a;

    /* renamed from: b, reason: collision with root package name */
    public Object f11298b;

    public /* synthetic */ l() {
        this.f11297a = 2;
    }

    @Override // y1.z, y1.y
    public void a() {
        switch (this.f11297a) {
            case 2:
                TransitionSet transitionSet = (TransitionSet) this.f11298b;
                if (!transitionSet.A) {
                    transitionSet.D();
                    transitionSet.A = true;
                    break;
                }
                break;
        }
    }

    @Override // y1.y
    public final void e(Transition transition) {
        switch (this.f11297a) {
            case 0:
                g0.b((View) this.f11298b, 1.0f);
                g0.f11276a.getClass();
                transition.u(this);
                break;
            case 1:
                ((Transition) this.f11298b).w();
                transition.u(this);
                break;
            default:
                TransitionSet transitionSet = (TransitionSet) this.f11298b;
                int i6 = transitionSet.f3034z - 1;
                transitionSet.f3034z = i6;
                if (i6 == 0) {
                    transitionSet.A = false;
                    transitionSet.l();
                }
                transition.u(this);
                break;
        }
    }

    public /* synthetic */ l(int i6, Object obj) {
        this.f11297a = i6;
        this.f11298b = obj;
    }
}
