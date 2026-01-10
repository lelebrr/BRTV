package androidx.appcompat.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final e f715a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f716b;

    public g(k kVar, e eVar) {
        this.f716b = kVar;
        this.f715a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k.j jVar;
        k kVar = this.f716b;
        k.l lVar = kVar.f7545c;
        if (lVar != null && (jVar = lVar.f7612e) != null) {
            jVar.n(lVar);
        }
        View view = (View) kVar.f7548h;
        if (view != null && view.getWindowToken() != null) {
            e eVar = this.f715a;
            if (eVar.b()) {
                kVar.f757t = eVar;
            } else if (eVar.f7671e != null) {
                eVar.d(0, 0, false, false);
                kVar.f757t = eVar;
            }
        }
        kVar.f759v = null;
    }
}
