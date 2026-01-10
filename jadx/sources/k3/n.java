package k3;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f7721a;

    public n(t tVar) {
        this.f7721a = tVar;
    }

    @Override // k3.a
    public final void a(boolean z7) {
        ArrayList arrayList;
        r3.n.a();
        synchronized (this.f7721a) {
            arrayList = new ArrayList((HashSet) this.f7721a.d);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(z7);
        }
    }
}
