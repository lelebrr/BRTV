package w;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class n implements e {

    /* renamed from: a, reason: collision with root package name */
    public int f10783a;

    /* renamed from: b, reason: collision with root package name */
    public v.e f10784b;

    /* renamed from: c, reason: collision with root package name */
    public l f10785c;
    public v.d d;

    /* renamed from: e, reason: collision with root package name */
    public final h f10786e = new h(this);
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10787g = false;

    /* renamed from: h, reason: collision with root package name */
    public final g f10788h = new g(this);

    /* renamed from: i, reason: collision with root package name */
    public final g f10789i = new g(this);

    /* renamed from: j, reason: collision with root package name */
    public int f10790j = 1;

    public n(v.e eVar) {
        this.f10784b = eVar;
    }

    public static void b(g gVar, g gVar2, int i6) {
        gVar.f10776l.add(gVar2);
        gVar.f = i6;
        gVar2.f10775k.add(gVar);
    }

    public static g h(v.c cVar) {
        v.c cVar2 = cVar.d;
        if (cVar2 == null) {
            return null;
        }
        int iA = u.h.a(cVar2.f10526c);
        v.e eVar = cVar2.f10525b;
        if (iA == 1) {
            return eVar.d.f10788h;
        }
        if (iA == 2) {
            return eVar.f10540e.f10788h;
        }
        if (iA == 3) {
            return eVar.d.f10789i;
        }
        if (iA == 4) {
            return eVar.f10540e.f10789i;
        }
        if (iA != 5) {
            return null;
        }
        return eVar.f10540e.f10781k;
    }

    public static g i(v.c cVar, int i6) {
        v.c cVar2 = cVar.d;
        if (cVar2 == null) {
            return null;
        }
        v.e eVar = cVar2.f10525b;
        n nVar = i6 == 0 ? eVar.d : eVar.f10540e;
        int iA = u.h.a(cVar2.f10526c);
        if (iA == 1 || iA == 2) {
            return nVar.f10788h;
        }
        if (iA == 3 || iA == 4) {
            return nVar.f10789i;
        }
        return null;
    }

    public final void c(g gVar, g gVar2, int i6, h hVar) {
        gVar.f10776l.add(gVar2);
        gVar.f10776l.add(this.f10786e);
        gVar.f10772h = i6;
        gVar.f10773i = hVar;
        gVar2.f10775k.add(gVar);
        hVar.f10775k.add(gVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i6, int i10) {
        int iMax;
        if (i10 == 0) {
            v.e eVar = this.f10784b;
            int i11 = eVar.f10550n;
            iMax = Math.max(eVar.f10549m, i6);
            if (i11 > 0) {
                iMax = Math.min(i11, i6);
            }
            if (iMax == i6) {
                return i6;
            }
        } else {
            v.e eVar2 = this.f10784b;
            int i12 = eVar2.f10553q;
            iMax = Math.max(eVar2.f10552p, i6);
            if (i12 > 0) {
                iMax = Math.min(i12, i6);
            }
            if (iMax == i6) {
                return i6;
            }
        }
        return iMax;
    }

    public long j() {
        if (this.f10786e.f10774j) {
            return r0.f10771g;
        }
        return 0L;
    }

    public abstract boolean k();

    public final void l(v.c cVar, v.c cVar2, int i6) {
        g gVarH = h(cVar);
        g gVarH2 = h(cVar2);
        if (gVarH.f10774j && gVarH2.f10774j) {
            int iC = cVar.c() + gVarH.f10771g;
            int iC2 = gVarH2.f10771g - cVar2.c();
            int i10 = iC2 - iC;
            h hVar = this.f10786e;
            if (!hVar.f10774j) {
                v.d dVar = this.d;
                v.d dVar2 = v.d.f10531c;
                if (dVar == dVar2) {
                    int i11 = this.f10783a;
                    if (i11 == 0) {
                        hVar.d(g(i10, i6));
                    } else if (i11 == 1) {
                        hVar.d(Math.min(g(hVar.f10777m, i6), i10));
                    } else if (i11 == 2) {
                        v.e eVar = this.f10784b;
                        v.e eVar2 = eVar.K;
                        if (eVar2 != null) {
                            if ((i6 == 0 ? eVar2.d : eVar2.f10540e).f10786e.f10774j) {
                                hVar.d(g((int) ((r6.f10771g * (i6 == 0 ? eVar.f10551o : eVar.f10554r)) + 0.5f), i6));
                            }
                        }
                    } else if (i11 == 3) {
                        v.e eVar3 = this.f10784b;
                        n nVar = eVar3.d;
                        v.d dVar3 = nVar.d;
                        n nVar2 = eVar3.f10540e;
                        if (dVar3 != dVar2 || nVar.f10783a != 3 || nVar2.d != dVar2 || nVar2.f10783a != 3) {
                            if (i6 == 0) {
                                nVar = nVar2;
                            }
                            if (nVar.f10786e.f10774j) {
                                float f = eVar3.N;
                                hVar.d(i6 == 1 ? (int) ((r6.f10771g / f) + 0.5f) : (int) ((f * r6.f10771g) + 0.5f));
                            }
                        }
                    }
                }
            }
            if (hVar.f10774j) {
                int i12 = hVar.f10771g;
                g gVar = this.f10789i;
                g gVar2 = this.f10788h;
                if (i12 == i10) {
                    gVar2.d(iC);
                    gVar.d(iC2);
                    return;
                }
                v.e eVar4 = this.f10784b;
                float f3 = i6 == 0 ? eVar4.U : eVar4.V;
                if (gVarH == gVarH2) {
                    iC = gVarH.f10771g;
                    iC2 = gVarH2.f10771g;
                    f3 = 0.5f;
                }
                gVar2.d((int) ((((iC2 - iC) - i12) * f3) + iC + 0.5f));
                gVar.d(gVar2.f10771g + hVar.f10771g);
            }
        }
    }
}
