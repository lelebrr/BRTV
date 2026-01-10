package k3;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Set f7736a = Collections.newSetFromMap(new WeakHashMap());

    @Override // k3.i
    public final void c() {
        Iterator it = r3.n.e(this.f7736a).iterator();
        while (it.hasNext()) {
            ((o3.h) it.next()).c();
        }
    }

    @Override // k3.i
    public final void i() {
        Iterator it = r3.n.e(this.f7736a).iterator();
        while (it.hasNext()) {
            ((o3.h) it.next()).i();
        }
    }

    @Override // k3.i
    public final void j() {
        Iterator it = r3.n.e(this.f7736a).iterator();
        while (it.hasNext()) {
            ((o3.h) it.next()).j();
        }
    }
}
