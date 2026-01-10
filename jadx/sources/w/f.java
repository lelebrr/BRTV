package w;

import ea.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public v.f f10761a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10762b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10763c;
    public v.f d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f10764e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public b f10765g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f10766h;

    public final void a(g gVar, int i6, ArrayList arrayList, l lVar) {
        n nVar = gVar.d;
        if (nVar.f10785c == null) {
            v.f fVar = this.f10761a;
            if (nVar == fVar.d || nVar == fVar.f10540e) {
                return;
            }
            if (lVar == null) {
                lVar = new l();
                lVar.f10779a = null;
                lVar.f10780b = new ArrayList();
                lVar.f10779a = nVar;
                arrayList.add(lVar);
            }
            nVar.f10785c = lVar;
            lVar.f10780b.add(nVar);
            g gVar2 = nVar.f10788h;
            Iterator it = gVar2.f10775k.iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                if (eVar instanceof g) {
                    a((g) eVar, i6, arrayList, lVar);
                }
            }
            g gVar3 = nVar.f10789i;
            Iterator it2 = gVar3.f10775k.iterator();
            while (it2.hasNext()) {
                e eVar2 = (e) it2.next();
                if (eVar2 instanceof g) {
                    a((g) eVar2, i6, arrayList, lVar);
                }
            }
            if (i6 == 1 && (nVar instanceof m)) {
                Iterator it3 = ((m) nVar).f10781k.f10775k.iterator();
                while (it3.hasNext()) {
                    e eVar3 = (e) it3.next();
                    if (eVar3 instanceof g) {
                        a((g) eVar3, i6, arrayList, lVar);
                    }
                }
            }
            Iterator it4 = gVar2.f10776l.iterator();
            while (it4.hasNext()) {
                a((g) it4.next(), i6, arrayList, lVar);
            }
            Iterator it5 = gVar3.f10776l.iterator();
            while (it5.hasNext()) {
                a((g) it5.next(), i6, arrayList, lVar);
            }
            if (i6 == 1 && (nVar instanceof m)) {
                Iterator it6 = ((m) nVar).f10781k.f10776l.iterator();
                while (it6.hasNext()) {
                    a((g) it6.next(), i6, arrayList, lVar);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(v.f r23) {
        /*
            Method dump skipped, instructions count: 800
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w.f.b(v.f):void");
    }

    public final void c() {
        ArrayList arrayList = this.f10764e;
        arrayList.clear();
        v.f fVar = this.d;
        fVar.d.f();
        m mVar = fVar.f10540e;
        mVar.f();
        arrayList.add(fVar.d);
        arrayList.add(mVar);
        Iterator it = fVar.f10563g0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            v.e eVar = (v.e) it.next();
            if (eVar instanceof v.i) {
                i iVar = new i(eVar);
                eVar.d.f();
                eVar.f10540e.f();
                iVar.f = ((v.i) eVar).f10612k0;
                arrayList.add(iVar);
            } else {
                if (eVar.r()) {
                    if (eVar.f10535b == null) {
                        eVar.f10535b = new d(eVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f10535b);
                } else {
                    arrayList.add(eVar.d);
                }
                if (eVar.s()) {
                    if (eVar.f10537c == null) {
                        eVar.f10537c = new d(eVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f10537c);
                } else {
                    arrayList.add(eVar.f10540e);
                }
                if (eVar instanceof v.j) {
                    arrayList.add(new j(eVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((n) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            n nVar = (n) it3.next();
            if (nVar.f10784b != fVar) {
                nVar.d();
            }
        }
        ArrayList arrayList2 = this.f10766h;
        arrayList2.clear();
        v.f fVar2 = this.f10761a;
        e(fVar2.d, 0, arrayList2);
        e(fVar2.f10540e, 1, arrayList2);
        this.f10762b = false;
    }

    public final int d(v.f fVar, int i6) {
        ArrayList arrayList;
        int i10;
        int i11;
        long jMax;
        float f;
        v.f fVar2 = fVar;
        ArrayList arrayList2 = this.f10766h;
        int size = arrayList2.size();
        int i12 = 0;
        long jMax2 = 0;
        while (i12 < size) {
            n nVar = ((l) arrayList2.get(i12)).f10779a;
            if (!(nVar instanceof d) ? !(i6 != 0 ? (nVar instanceof m) : (nVar instanceof k)) : ((d) nVar).f != i6) {
                g gVar = (i6 == 0 ? fVar2.d : fVar2.f10540e).f10788h;
                g gVar2 = (i6 == 0 ? fVar2.d : fVar2.f10540e).f10789i;
                boolean zContains = nVar.f10788h.f10776l.contains(gVar);
                g gVar3 = nVar.f10789i;
                boolean zContains2 = gVar3.f10776l.contains(gVar2);
                long j10 = nVar.j();
                g gVar4 = nVar.f10788h;
                if (zContains && zContains2) {
                    long jB = l.b(gVar4, 0L);
                    ArrayList arrayList3 = arrayList2;
                    i10 = size;
                    long jA = l.a(gVar3, 0L);
                    long j11 = jB - j10;
                    int i13 = gVar3.f;
                    arrayList = arrayList3;
                    i11 = i12;
                    if (j11 >= (-i13)) {
                        j11 += i13;
                    }
                    long j12 = (-jA) - j10;
                    long j13 = gVar4.f;
                    long j14 = j12 - j13;
                    if (j14 >= j13) {
                        j14 -= j13;
                    }
                    v.e eVar = nVar.f10784b;
                    if (i6 == 0) {
                        f = eVar.U;
                    } else if (i6 == 1) {
                        f = eVar.V;
                    } else {
                        eVar.getClass();
                        f = -1.0f;
                    }
                    float f3 = f > 0.0f ? (long) ((j11 / (1.0f - f)) + (j14 / f)) : 0L;
                    jMax = (gVar4.f + ((((long) ((f3 * f) + 0.5f)) + j10) + ((long) q.d(1.0f, f, f3, 0.5f)))) - gVar3.f;
                } else {
                    arrayList = arrayList2;
                    i10 = size;
                    i11 = i12;
                    jMax = zContains ? Math.max(l.b(gVar4, gVar4.f), gVar4.f + j10) : zContains2 ? Math.max(-l.a(gVar3, gVar3.f), (-gVar3.f) + j10) : (nVar.j() + gVar4.f) - gVar3.f;
                }
            } else {
                arrayList = arrayList2;
                i10 = size;
                i11 = i12;
                jMax = 0;
            }
            jMax2 = Math.max(jMax2, jMax);
            i12 = i11 + 1;
            fVar2 = fVar;
            size = i10;
            arrayList2 = arrayList;
        }
        return (int) jMax2;
    }

    public final void e(n nVar, int i6, ArrayList arrayList) {
        g gVar;
        Iterator it = nVar.f10788h.f10775k.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            gVar = nVar.f10789i;
            if (!zHasNext) {
                break;
            }
            e eVar = (e) it.next();
            if (eVar instanceof g) {
                a((g) eVar, i6, arrayList, null);
            } else if (eVar instanceof n) {
                a(((n) eVar).f10788h, i6, arrayList, null);
            }
        }
        Iterator it2 = gVar.f10775k.iterator();
        while (it2.hasNext()) {
            e eVar2 = (e) it2.next();
            if (eVar2 instanceof g) {
                a((g) eVar2, i6, arrayList, null);
            } else if (eVar2 instanceof n) {
                a(((n) eVar2).f10789i, i6, arrayList, null);
            }
        }
        if (i6 == 1) {
            Iterator it3 = ((m) nVar).f10781k.f10775k.iterator();
            while (it3.hasNext()) {
                e eVar3 = (e) it3.next();
                if (eVar3 instanceof g) {
                    a((g) eVar3, i6, arrayList, null);
                }
            }
        }
    }

    public final void f(v.e eVar, v.d dVar, int i6, v.d dVar2, int i10) {
        b bVar = this.f10765g;
        bVar.f10751a = dVar;
        bVar.f10752b = dVar2;
        bVar.f10753c = i6;
        bVar.d = i10;
        ((androidx.constraintlayout.widget.b) this.f).a(eVar, bVar);
        eVar.z(bVar.f10754e);
        eVar.w(bVar.f);
        eVar.f10559w = bVar.f10756h;
        int i11 = bVar.f10755g;
        eVar.R = i11;
        eVar.f10559w = i11 > 0;
    }

    public final void g() {
        a aVar;
        Iterator it = this.f10761a.f10563g0.iterator();
        while (it.hasNext()) {
            v.e eVar = (v.e) it.next();
            if (!eVar.f10533a) {
                v.d[] dVarArr = eVar.J;
                boolean z7 = false;
                v.d dVar = dVarArr[0];
                v.d dVar2 = dVarArr[1];
                int i6 = eVar.f10546j;
                int i10 = eVar.f10547k;
                v.d dVar3 = v.d.f10530b;
                v.d dVar4 = v.d.f10531c;
                boolean z10 = dVar == dVar3 || (dVar == dVar4 && i6 == 1);
                if (dVar2 == dVar3 || (dVar2 == dVar4 && i10 == 1)) {
                    z7 = true;
                }
                k kVar = eVar.d;
                h hVar = kVar.f10786e;
                boolean z11 = hVar.f10774j;
                m mVar = eVar.f10540e;
                h hVar2 = mVar.f10786e;
                boolean z12 = hVar2.f10774j;
                v.d dVar5 = v.d.f10529a;
                if (z11 && z12) {
                    f(eVar, dVar5, hVar.f10771g, dVar5, hVar2.f10771g);
                    eVar.f10533a = true;
                } else if (z11 && z7) {
                    f(eVar, dVar5, hVar.f10771g, dVar3, hVar2.f10771g);
                    if (dVar2 == dVar4) {
                        mVar.f10786e.f10777m = eVar.j();
                    } else {
                        mVar.f10786e.d(eVar.j());
                        eVar.f10533a = true;
                    }
                } else if (z12 && z10) {
                    f(eVar, dVar3, hVar.f10771g, dVar5, hVar2.f10771g);
                    if (dVar == dVar4) {
                        kVar.f10786e.f10777m = eVar.m();
                    } else {
                        kVar.f10786e.d(eVar.m());
                        eVar.f10533a = true;
                    }
                }
                if (eVar.f10533a && (aVar = mVar.f10782l) != null) {
                    aVar.d(eVar.R);
                }
            }
        }
    }
}
