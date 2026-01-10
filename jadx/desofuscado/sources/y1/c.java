package y1;

import android.view.ViewGroup;
import androidx.transition.Transition;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class c extends z {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11246a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f11247b;

    public c(ViewGroup viewGroup) {
        this.f11247b = viewGroup;
    }

    @Override // y1.z, y1.y
    public final void b() {
        v.j(this.f11247b, false);
    }

    @Override // y1.z, y1.y
    public final void c() {
        v.j(this.f11247b, true);
    }

    @Override // y1.z, y1.y
    public final void d() {
        v.j(this.f11247b, false);
        this.f11246a = true;
    }

    @Override // y1.y
    public final void e(Transition transition) {
        if (!this.f11246a) {
            v.j(this.f11247b, false);
        }
        transition.u(this);
    }
}
