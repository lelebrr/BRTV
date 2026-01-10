package n2;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements i {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f8379a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8380b;

    public f(ImageView imageView, boolean z7) {
        this.f8379a = imageView;
        this.f8380b = z7;
    }

    @Override // n2.i
    public final Object a(c2.i iVar) {
        h hVarB = q.b(this);
        if (hVarB != null) {
            return hVarB;
        }
        t9.e eVar = new t9.e(com.bumptech.glide.d.r(iVar), 1);
        eVar.n();
        ViewTreeObserver viewTreeObserver = this.f8379a.getViewTreeObserver();
        k kVar = new k(this, viewTreeObserver, eVar);
        viewTreeObserver.addOnPreDrawListener(kVar);
        eVar.p(new j(this, viewTreeObserver, kVar));
        return eVar.m();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (j9.i.a(this.f8379a, fVar.f8379a) && this.f8380b == fVar.f8380b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f8379a.hashCode() * 31) + (this.f8380b ? 1231 : 1237);
    }
}
