package q1;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 extends s0 {

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList f9105w;

    /* renamed from: x, reason: collision with root package name */
    public final p.e f9106x;

    public p0(r0 r0Var, String str, String str2) {
        super(r0Var, str, str2, false);
        this.f9105w = new ArrayList();
        this.f9106x = new p.e(0);
    }

    public final boolean n() {
        u0.b();
        h hVarC = u0.c();
        hVarC.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = hVarC.f8993j.values().iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return arrayList.contains(this);
    }

    public final boolean o(s0 s0Var) {
        z zVar = (z) this.f9106x.get(s0Var.f9131c);
        return zVar != null && zVar.d;
    }

    public final void p(ArrayList arrayList) {
        s0 s0Var;
        this.f9148v.clear();
        ArrayList arrayList2 = this.f9105w;
        arrayList2.clear();
        p.e eVar = this.f9106x;
        eVar.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            String strF = zVar.f9185a.f();
            Iterator it2 = this.f9129a.f9123b.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    s0Var = null;
                    break;
                } else {
                    s0Var = (s0) it2.next();
                    if (s0Var.f9130b.equals(strF)) {
                        break;
                    }
                }
            }
            if (s0Var != null) {
                arrayList2.add(s0Var);
                eVar.put(s0Var.f9131c, zVar);
                int i6 = zVar.f9186b;
                if (i6 == 2 || i6 == 3) {
                    this.f9148v.add(s0Var);
                }
            }
        }
        u0.c().f8986a.b(259, this);
    }
}
