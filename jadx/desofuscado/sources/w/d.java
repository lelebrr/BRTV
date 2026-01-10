package w;

import ea.q;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d extends n {

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f10759k;

    /* renamed from: l, reason: collision with root package name */
    public int f10760l;

    public d(v.e eVar, int i6) {
        v.e eVar2;
        super(eVar);
        this.f10759k = new ArrayList();
        this.f = i6;
        v.e eVar3 = this.f10784b;
        v.e eVarL = eVar3.l(i6);
        while (true) {
            v.e eVar4 = eVarL;
            eVar2 = eVar3;
            eVar3 = eVar4;
            if (eVar3 == null) {
                break;
            } else {
                eVarL = eVar3.l(this.f);
            }
        }
        this.f10784b = eVar2;
        int i10 = this.f;
        n nVar = i10 == 0 ? eVar2.d : i10 == 1 ? eVar2.f10540e : null;
        ArrayList arrayList = this.f10759k;
        arrayList.add(nVar);
        v.e eVarK = eVar2.k(this.f);
        while (eVarK != null) {
            int i11 = this.f;
            arrayList.add(i11 == 0 ? eVarK.d : i11 == 1 ? eVarK.f10540e : null);
            eVarK = eVarK.k(this.f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            n nVar2 = (n) it.next();
            int i12 = this.f;
            if (i12 == 0) {
                nVar2.f10784b.f10535b = this;
            } else if (i12 == 1) {
                nVar2.f10784b.f10537c = this;
            }
        }
        if (this.f == 0 && ((v.f) this.f10784b.K).f10566k0 && arrayList.size() > 1) {
            this.f10784b = ((n) q.e(1, arrayList)).f10784b;
        }
        this.f10760l = this.f == 0 ? this.f10784b.Z : this.f10784b.f10534a0;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0168  */
    @Override // w.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(w.e r28) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: w.d.a(w.e):void");
    }

    @Override // w.n
    public final void d() {
        ArrayList arrayList = this.f10759k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((n) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        v.e eVar = ((n) arrayList.get(0)).f10784b;
        v.e eVar2 = ((n) arrayList.get(size - 1)).f10784b;
        int i6 = this.f;
        g gVar = this.f10789i;
        g gVar2 = this.f10788h;
        if (i6 == 0) {
            v.c cVar = eVar.f10561y;
            v.c cVar2 = eVar2.A;
            g gVarI = n.i(cVar, 0);
            int iC = cVar.c();
            v.e eVarM = m();
            if (eVarM != null) {
                iC = eVarM.f10561y.c();
            }
            if (gVarI != null) {
                n.b(gVar2, gVarI, iC);
            }
            g gVarI2 = n.i(cVar2, 0);
            int iC2 = cVar2.c();
            v.e eVarN = n();
            if (eVarN != null) {
                iC2 = eVarN.A.c();
            }
            if (gVarI2 != null) {
                n.b(gVar, gVarI2, -iC2);
            }
        } else {
            v.c cVar3 = eVar.f10562z;
            v.c cVar4 = eVar2.B;
            g gVarI3 = n.i(cVar3, 1);
            int iC3 = cVar3.c();
            v.e eVarM2 = m();
            if (eVarM2 != null) {
                iC3 = eVarM2.f10562z.c();
            }
            if (gVarI3 != null) {
                n.b(gVar2, gVarI3, iC3);
            }
            g gVarI4 = n.i(cVar4, 1);
            int iC4 = cVar4.c();
            v.e eVarN2 = n();
            if (eVarN2 != null) {
                iC4 = eVarN2.B.c();
            }
            if (gVarI4 != null) {
                n.b(gVar, gVarI4, -iC4);
            }
        }
        gVar2.f10767a = this;
        gVar.f10767a = this;
    }

    @Override // w.n
    public final void e() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f10759k;
            if (i6 >= arrayList.size()) {
                return;
            }
            ((n) arrayList.get(i6)).e();
            i6++;
        }
    }

    @Override // w.n
    public final void f() {
        this.f10785c = null;
        Iterator it = this.f10759k.iterator();
        while (it.hasNext()) {
            ((n) it.next()).f();
        }
    }

    @Override // w.n
    public final long j() {
        ArrayList arrayList = this.f10759k;
        int size = arrayList.size();
        long j10 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            j10 = r5.f10789i.f + ((n) arrayList.get(i6)).j() + j10 + r5.f10788h.f;
        }
        return j10;
    }

    @Override // w.n
    public final boolean k() {
        ArrayList arrayList = this.f10759k;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (!((n) arrayList.get(i6)).k()) {
                return false;
            }
        }
        return true;
    }

    public final v.e m() {
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f10759k;
            if (i6 >= arrayList.size()) {
                return null;
            }
            v.e eVar = ((n) arrayList.get(i6)).f10784b;
            if (eVar.X != 8) {
                return eVar;
            }
            i6++;
        }
    }

    public final v.e n() {
        ArrayList arrayList = this.f10759k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            v.e eVar = ((n) arrayList.get(size)).f10784b;
            if (eVar.X != 8) {
                return eVar;
            }
        }
        return null;
    }

    public final String toString() {
        String strConcat = "ChainRun ".concat(this.f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.f10759k.iterator();
        while (it.hasNext()) {
            n nVar = (n) it.next();
            strConcat = q.h(q.h(strConcat, "<") + nVar, "> ");
        }
        return strConcat;
    }
}
