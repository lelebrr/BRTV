package v;

import ea.q;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i extends e {

    /* renamed from: g0, reason: collision with root package name */
    public float f10609g0 = -1.0f;

    /* renamed from: h0, reason: collision with root package name */
    public int f10610h0 = -1;
    public int i0 = -1;

    /* renamed from: j0, reason: collision with root package name */
    public c f10611j0 = this.f10562z;

    /* renamed from: k0, reason: collision with root package name */
    public int f10612k0 = 0;

    public i() {
        this.H.clear();
        this.H.add(this.f10611j0);
        int length = this.G.length;
        for (int i6 = 0; i6 < length; i6++) {
            this.G[i6] = this.f10611j0;
        }
    }

    @Override // v.e
    public final void B(u.e eVar) {
        if (this.K == null) {
            return;
        }
        c cVar = this.f10611j0;
        eVar.getClass();
        int iM = u.e.m(cVar);
        if (this.f10612k0 == 1) {
            this.P = iM;
            this.Q = 0;
            w(this.K.j());
            z(0);
            return;
        }
        this.P = 0;
        this.Q = iM;
        z(this.K.m());
        w(0);
    }

    public final void C(int i6) {
        if (this.f10612k0 == i6) {
            return;
        }
        this.f10612k0 = i6;
        ArrayList arrayList = this.H;
        arrayList.clear();
        if (this.f10612k0 == 1) {
            this.f10611j0 = this.f10561y;
        } else {
            this.f10611j0 = this.f10562z;
        }
        arrayList.add(this.f10611j0);
        c[] cVarArr = this.G;
        int length = cVarArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            cVarArr[i10] = this.f10611j0;
        }
    }

    @Override // v.e
    public final void a(u.e eVar) {
        f fVar = (f) this.K;
        if (fVar == null) {
            return;
        }
        c cVarH = fVar.h(2);
        c cVarH2 = fVar.h(4);
        e eVar2 = this.K;
        d dVar = d.f10530b;
        boolean z7 = eVar2 != null && eVar2.J[0] == dVar;
        if (this.f10612k0 == 0) {
            cVarH = fVar.h(3);
            cVarH2 = fVar.h(5);
            e eVar3 = this.K;
            z7 = eVar3 != null && eVar3.J[1] == dVar;
        }
        if (this.f10610h0 != -1) {
            u.i iVarJ = eVar.j(this.f10611j0);
            eVar.e(iVarJ, eVar.j(cVarH), this.f10610h0, 8);
            if (z7) {
                eVar.f(eVar.j(cVarH2), iVarJ, 0, 5);
                return;
            }
            return;
        }
        if (this.i0 != -1) {
            u.i iVarJ2 = eVar.j(this.f10611j0);
            u.i iVarJ3 = eVar.j(cVarH2);
            eVar.e(iVarJ2, iVarJ3, -this.i0, 8);
            if (z7) {
                eVar.f(iVarJ2, eVar.j(cVarH), 0, 5);
                eVar.f(iVarJ3, iVarJ2, 0, 5);
                return;
            }
            return;
        }
        if (this.f10609g0 != -1.0f) {
            u.i iVarJ4 = eVar.j(this.f10611j0);
            u.i iVarJ5 = eVar.j(cVarH2);
            float f = this.f10609g0;
            u.c cVarK = eVar.k();
            cVarK.d.h(iVarJ4, -1.0f);
            cVarK.d.h(iVarJ5, f);
            eVar.c(cVarK);
        }
    }

    @Override // v.e
    public final boolean b() {
        return true;
    }

    @Override // v.e
    public final void f(e eVar, HashMap map) {
        super.f(eVar, map);
        i iVar = (i) eVar;
        this.f10609g0 = iVar.f10609g0;
        this.f10610h0 = iVar.f10610h0;
        this.i0 = iVar.i0;
        C(iVar.f10612k0);
    }

    @Override // v.e
    public final c h(int i6) {
        switch (u.h.a(i6)) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.f10612k0 == 1) {
                    return this.f10611j0;
                }
                break;
            case 2:
            case 4:
                if (this.f10612k0 == 0) {
                    return this.f10611j0;
                }
                break;
        }
        throw new AssertionError(q.q(i6));
    }
}
