package androidx.fragment.app;

import android.animation.Animator;
import android.util.Log;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements j0.d, androidx.lifecycle.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1437a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1438b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f1437a = i6;
        this.f1438b = obj;
    }

    @Override // j0.d
    public void a() {
        switch (this.f1437a) {
            case 0:
                ((Animator) this.f1438b).end();
                break;
            default:
                ((v0) this.f1438b).a();
                break;
        }
    }

    public void b() {
        ((v) this.f1438b).f1557i.K();
    }

    @Override // androidx.lifecycle.e0
    public void c(Object obj) {
        if (((androidx.lifecycle.w) obj) != null) {
            m mVar = (m) this.f1438b;
            if (mVar.f1488b0) {
                View viewL = mVar.L();
                if (viewL.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (mVar.f1492f0 != null) {
                    if (Log.isLoggable("FragmentManager", 3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + mVar.f1492f0);
                    }
                    mVar.f1492f0.setContentView(viewL);
                }
            }
        }
    }
}
