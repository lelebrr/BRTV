package w;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j extends n {
    @Override // w.e
    public final void a(e eVar) {
        v.a aVar = (v.a) this.f10784b;
        int i6 = aVar.i0;
        g gVar = this.f10788h;
        Iterator it = gVar.f10776l.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it.hasNext()) {
            int i12 = ((g) it.next()).f10771g;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (i6 == 0 || i6 == 2) {
            gVar.d(i11 + aVar.f10508k0);
        } else {
            gVar.d(i10 + aVar.f10508k0);
        }
    }

    @Override // w.n
    public final void d() {
        v.e eVar = this.f10784b;
        if (eVar instanceof v.a) {
            g gVar = this.f10788h;
            gVar.f10768b = true;
            v.a aVar = (v.a) eVar;
            int i6 = aVar.i0;
            boolean z7 = aVar.f10507j0;
            int i10 = 0;
            if (i6 == 0) {
                gVar.f10770e = 4;
                while (i10 < aVar.f10614h0) {
                    v.e eVar2 = aVar.f10613g0[i10];
                    if (z7 || eVar2.X != 8) {
                        g gVar2 = eVar2.d.f10788h;
                        gVar2.f10775k.add(gVar);
                        gVar.f10776l.add(gVar2);
                    }
                    i10++;
                }
                m(this.f10784b.d.f10788h);
                m(this.f10784b.d.f10789i);
                return;
            }
            if (i6 == 1) {
                gVar.f10770e = 5;
                while (i10 < aVar.f10614h0) {
                    v.e eVar3 = aVar.f10613g0[i10];
                    if (z7 || eVar3.X != 8) {
                        g gVar3 = eVar3.d.f10789i;
                        gVar3.f10775k.add(gVar);
                        gVar.f10776l.add(gVar3);
                    }
                    i10++;
                }
                m(this.f10784b.d.f10788h);
                m(this.f10784b.d.f10789i);
                return;
            }
            if (i6 == 2) {
                gVar.f10770e = 6;
                while (i10 < aVar.f10614h0) {
                    v.e eVar4 = aVar.f10613g0[i10];
                    if (z7 || eVar4.X != 8) {
                        g gVar4 = eVar4.f10540e.f10788h;
                        gVar4.f10775k.add(gVar);
                        gVar.f10776l.add(gVar4);
                    }
                    i10++;
                }
                m(this.f10784b.f10540e.f10788h);
                m(this.f10784b.f10540e.f10789i);
                return;
            }
            if (i6 != 3) {
                return;
            }
            gVar.f10770e = 7;
            while (i10 < aVar.f10614h0) {
                v.e eVar5 = aVar.f10613g0[i10];
                if (z7 || eVar5.X != 8) {
                    g gVar5 = eVar5.f10540e.f10789i;
                    gVar5.f10775k.add(gVar);
                    gVar.f10776l.add(gVar5);
                }
                i10++;
            }
            m(this.f10784b.f10540e.f10788h);
            m(this.f10784b.f10540e.f10789i);
        }
    }

    @Override // w.n
    public final void e() {
        v.e eVar = this.f10784b;
        if (eVar instanceof v.a) {
            int i6 = ((v.a) eVar).i0;
            g gVar = this.f10788h;
            if (i6 == 0 || i6 == 1) {
                eVar.P = gVar.f10771g;
            } else {
                eVar.Q = gVar.f10771g;
            }
        }
    }

    @Override // w.n
    public final void f() {
        this.f10785c = null;
        this.f10788h.c();
    }

    @Override // w.n
    public final boolean k() {
        return false;
    }

    public final void m(g gVar) {
        g gVar2 = this.f10788h;
        gVar2.f10775k.add(gVar);
        gVar.f10776l.add(gVar2);
    }
}
