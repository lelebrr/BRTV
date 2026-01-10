package v;

import java.util.Arrays;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class j extends e {

    /* renamed from: g0, reason: collision with root package name */
    public e[] f10613g0 = new e[4];

    /* renamed from: h0, reason: collision with root package name */
    public int f10614h0 = 0;

    public final void C(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        int i6 = this.f10614h0 + 1;
        e[] eVarArr = this.f10613g0;
        if (i6 > eVarArr.length) {
            this.f10613g0 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        e[] eVarArr2 = this.f10613g0;
        int i10 = this.f10614h0;
        eVarArr2[i10] = eVar;
        this.f10614h0 = i10 + 1;
    }

    @Override // v.e
    public void f(e eVar, HashMap map) {
        super.f(eVar, map);
        j jVar = (j) eVar;
        this.f10614h0 = 0;
        int i6 = jVar.f10614h0;
        for (int i10 = 0; i10 < i6; i10++) {
            C((e) map.get(jVar.f10613g0[i10]));
        }
    }

    public void D() {
    }
}
