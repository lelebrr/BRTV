package n2;

import android.view.ViewTreeObserver;
import ea.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f8390a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f8391b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver f8392c;
    public final /* synthetic */ t9.e d;

    public k(f fVar, ViewTreeObserver viewTreeObserver, t9.e eVar) {
        this.f8391b = fVar;
        this.f8392c = viewTreeObserver;
        this.d = eVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        f fVar = this.f8391b;
        h hVarB = q.b(fVar);
        if (hVarB != null) {
            ViewTreeObserver viewTreeObserver = this.f8392c;
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            } else {
                fVar.f8379a.getViewTreeObserver().removeOnPreDrawListener(this);
            }
            if (!this.f8390a) {
                this.f8390a = true;
                this.d.resumeWith(hVarB);
            }
        }
        return true;
    }
}
