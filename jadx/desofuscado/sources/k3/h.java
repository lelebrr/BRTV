package k3;

import androidx.lifecycle.f0;
import androidx.lifecycle.v;
import androidx.lifecycle.w;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements g, v {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f7714a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final androidx.lifecycle.p f7715b;

    public h(androidx.lifecycle.p pVar) {
        this.f7715b = pVar;
        pVar.a(this);
    }

    @Override // k3.g
    public final void g(i iVar) {
        this.f7714a.remove(iVar);
    }

    @Override // k3.g
    public final void h(i iVar) {
        this.f7714a.add(iVar);
        androidx.lifecycle.p pVar = this.f7715b;
        if (pVar.b() == androidx.lifecycle.o.f1980a) {
            iVar.j();
        } else if (pVar.b().compareTo(androidx.lifecycle.o.d) >= 0) {
            iVar.i();
        } else {
            iVar.c();
        }
    }

    @f0(androidx.lifecycle.n.ON_DESTROY)
    public void onDestroy(w wVar) {
        Iterator it = r3.n.e(this.f7714a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).j();
        }
        wVar.f().c(this);
    }

    @f0(androidx.lifecycle.n.ON_START)
    public void onStart(w wVar) {
        Iterator it = r3.n.e(this.f7714a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).i();
        }
    }

    @f0(androidx.lifecycle.n.ON_STOP)
    public void onStop(w wVar) {
        Iterator it = r3.n.e(this.f7714a).iterator();
        while (it.hasNext()) {
            ((i) it.next()).c();
        }
    }
}
