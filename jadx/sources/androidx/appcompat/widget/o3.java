package androidx.appcompat.widget;

import android.view.MenuItem;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o3 implements n, k.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f798a;

    public /* synthetic */ o3(Toolbar toolbar) {
        this.f798a = toolbar;
    }

    @Override // k.j
    public boolean j(k.l lVar, MenuItem menuItem) {
        androidx.appcompat.app.q0 q0Var = this.f798a.O;
        return false;
    }

    @Override // k.j
    public void n(k.l lVar) {
        Toolbar toolbar = this.f798a;
        k kVar = toolbar.f630a.f471t;
        if (kVar == null || !kVar.h()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.G.f8017c).iterator();
            if (it.hasNext()) {
                throw a.e.l(it);
            }
        }
        androidx.appcompat.app.q0 q0Var = toolbar.O;
        if (q0Var != null) {
            q0Var.n(lVar);
        }
    }
}
