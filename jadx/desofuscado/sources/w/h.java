package w;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class h extends g {

    /* renamed from: m, reason: collision with root package name */
    public int f10777m;

    public h(n nVar) {
        super(nVar);
        if (nVar instanceof k) {
            this.f10770e = 2;
        } else {
            this.f10770e = 3;
        }
    }

    @Override // w.g
    public final void d(int i6) {
        if (this.f10774j) {
            return;
        }
        this.f10774j = true;
        this.f10771g = i6;
        Iterator it = this.f10775k.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            eVar.a(eVar);
        }
    }
}
