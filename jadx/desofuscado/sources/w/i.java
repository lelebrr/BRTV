package w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i extends n {
    @Override // w.e
    public final void a(e eVar) {
        g gVar = this.f10788h;
        if (gVar.f10769c && !gVar.f10774j) {
            gVar.d((int) ((((g) gVar.f10776l.get(0)).f10771g * ((v.i) this.f10784b).f10609g0) + 0.5f));
        }
    }

    @Override // w.n
    public final void d() {
        v.e eVar = this.f10784b;
        v.i iVar = (v.i) eVar;
        int i6 = iVar.f10610h0;
        int i10 = iVar.i0;
        int i11 = iVar.f10612k0;
        g gVar = this.f10788h;
        if (i11 == 1) {
            if (i6 != -1) {
                gVar.f10776l.add(eVar.K.d.f10788h);
                this.f10784b.K.d.f10788h.f10775k.add(gVar);
                gVar.f = i6;
            } else if (i10 != -1) {
                gVar.f10776l.add(eVar.K.d.f10789i);
                this.f10784b.K.d.f10789i.f10775k.add(gVar);
                gVar.f = -i10;
            } else {
                gVar.f10768b = true;
                gVar.f10776l.add(eVar.K.d.f10789i);
                this.f10784b.K.d.f10789i.f10775k.add(gVar);
            }
            m(this.f10784b.d.f10788h);
            m(this.f10784b.d.f10789i);
            return;
        }
        if (i6 != -1) {
            gVar.f10776l.add(eVar.K.f10540e.f10788h);
            this.f10784b.K.f10540e.f10788h.f10775k.add(gVar);
            gVar.f = i6;
        } else if (i10 != -1) {
            gVar.f10776l.add(eVar.K.f10540e.f10789i);
            this.f10784b.K.f10540e.f10789i.f10775k.add(gVar);
            gVar.f = -i10;
        } else {
            gVar.f10768b = true;
            gVar.f10776l.add(eVar.K.f10540e.f10789i);
            this.f10784b.K.f10540e.f10789i.f10775k.add(gVar);
        }
        m(this.f10784b.f10540e.f10788h);
        m(this.f10784b.f10540e.f10789i);
    }

    @Override // w.n
    public final void e() {
        v.e eVar = this.f10784b;
        int i6 = ((v.i) eVar).f10612k0;
        g gVar = this.f10788h;
        if (i6 == 1) {
            eVar.P = gVar.f10771g;
        } else {
            eVar.Q = gVar.f10771g;
        }
    }

    @Override // w.n
    public final void f() {
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
