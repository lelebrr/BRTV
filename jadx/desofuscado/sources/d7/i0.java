package d7;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends AbstractMap implements Serializable {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f6167j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public transient Object f6168a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f6169b;

    /* renamed from: c, reason: collision with root package name */
    public transient Object[] f6170c;
    public transient Object[] d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f6171e;
    public transient int f;

    /* renamed from: g, reason: collision with root package name */
    public transient g0 f6172g;

    /* renamed from: h, reason: collision with root package name */
    public transient g0 f6173h;

    /* renamed from: i, reason: collision with root package name */
    public transient c7.w f6174i;

    public static i0 a() {
        i0 i0Var = new i0();
        i0Var.f6171e = r4.b.i(3, 1);
        return i0Var;
    }

    public static i0 b(int i6) {
        i0 i0Var = new i0();
        b7.b.e("Expected size must be >= 0", i6 >= 0);
        i0Var.f6171e = r4.b.i(i6, 1);
        return i0Var;
    }

    public final Map c() {
        Object obj = this.f6168a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (g()) {
            return;
        }
        this.f6171e += 32;
        Map mapC = c();
        if (mapC != null) {
            this.f6171e = r4.b.i(size(), 3);
            mapC.clear();
            this.f6168a = null;
            this.f = 0;
            return;
        }
        Arrays.fill(j(), 0, this.f, (Object) null);
        Arrays.fill(k(), 0, this.f, (Object) null);
        Object obj = this.f6168a;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(i(), 0, this.f, 0);
        this.f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapC = c();
        return mapC != null ? mapC.containsKey(obj) : e(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapC = c();
        if (mapC != null) {
            return mapC.containsValue(obj);
        }
        for (int i6 = 0; i6 < this.f; i6++) {
            if (b7.b.p(obj, k()[i6])) {
                return true;
            }
        }
        return false;
    }

    public final int d() {
        return (1 << (this.f6171e & 31)) - 1;
    }

    public final int e(Object obj) {
        if (g()) {
            return -1;
        }
        int iB = d0.B(obj);
        int iD = d();
        Object obj2 = this.f6168a;
        Objects.requireNonNull(obj2);
        int iC = d0.C(iB & iD, obj2);
        if (iC == 0) {
            return -1;
        }
        int i6 = ~iD;
        int i10 = iB & i6;
        do {
            int i11 = iC - 1;
            int i12 = i()[i11];
            if ((i12 & i6) == i10 && b7.b.p(obj, j()[i11])) {
                return i11;
            }
            iC = i12 & iD;
        } while (iC != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        g0 g0Var = this.f6173h;
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(this, 0);
        this.f6173h = g0Var2;
        return g0Var2;
    }

    public final void f(int i6, int i10) {
        Object obj = this.f6168a;
        Objects.requireNonNull(obj);
        int[] iArrI = i();
        Object[] objArrJ = j();
        Object[] objArrK = k();
        int size = size();
        int i11 = size - 1;
        if (i6 >= i11) {
            objArrJ[i6] = null;
            objArrK[i6] = null;
            iArrI[i6] = 0;
            return;
        }
        Object obj2 = objArrJ[i11];
        objArrJ[i6] = obj2;
        objArrK[i6] = objArrK[i11];
        objArrJ[i11] = null;
        objArrK[i11] = null;
        iArrI[i6] = iArrI[i11];
        iArrI[i11] = 0;
        int iB = d0.B(obj2) & i10;
        int iC = d0.C(iB, obj);
        if (iC == size) {
            d0.D(iB, i6 + 1, obj);
            return;
        }
        while (true) {
            int i12 = iC - 1;
            int i13 = iArrI[i12];
            int i14 = i13 & i10;
            if (i14 == size) {
                iArrI[i12] = d0.r(i13, i6 + 1, i10);
                return;
            }
            iC = i14;
        }
    }

    public final boolean g() {
        return this.f6168a == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapC = c();
        if (mapC != null) {
            return mapC.get(obj);
        }
        int iE = e(obj);
        if (iE == -1) {
            return null;
        }
        return k()[iE];
    }

    public final Object h(Object obj) {
        boolean zG = g();
        Object obj2 = f6167j;
        if (zG) {
            return obj2;
        }
        int iD = d();
        Object obj3 = this.f6168a;
        Objects.requireNonNull(obj3);
        int iW = d0.w(obj, null, iD, obj3, i(), j(), null);
        if (iW == -1) {
            return obj2;
        }
        Object obj4 = k()[iW];
        f(iW, iD);
        this.f--;
        this.f6171e += 32;
        return obj4;
    }

    public final int[] i() {
        int[] iArr = this.f6169b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final Object[] j() {
        Object[] objArr = this.f6170c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] k() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        g0 g0Var = this.f6172g;
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(this, 1);
        this.f6172g = g0Var2;
        return g0Var2;
    }

    public final int l(int i6, int i10, int i11, int i12) {
        Object objG = d0.g(i10);
        int i13 = i10 - 1;
        if (i12 != 0) {
            d0.D(i11 & i13, i12 + 1, objG);
        }
        Object obj = this.f6168a;
        Objects.requireNonNull(obj);
        int[] iArrI = i();
        for (int i14 = 0; i14 <= i6; i14++) {
            int iC = d0.C(i14, obj);
            while (iC != 0) {
                int i15 = iC - 1;
                int i16 = iArrI[i15];
                int i17 = ((~i6) & i16) | i14;
                int i18 = i17 & i13;
                int iC2 = d0.C(i18, objG);
                d0.D(i18, iC, objG);
                iArrI[i15] = d0.r(i17, iC2, i13);
                iC = i16 & i6;
            }
        }
        this.f6168a = objG;
        this.f6171e = d0.r(this.f6171e, 32 - Integer.numberOfLeadingZeros(i13), 31);
        return i13;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00d5 -> B:27:0x00bd). Please report as a decompilation issue!!! */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object put(java.lang.Object r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: d7.i0.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapC = c();
        if (mapC != null) {
            return mapC.remove(obj);
        }
        Object objH = h(obj);
        if (objH == f6167j) {
            return null;
        }
        return objH;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapC = c();
        return mapC != null ? mapC.size() : this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        c7.w wVar = this.f6174i;
        if (wVar != null) {
            return wVar;
        }
        c7.w wVar2 = new c7.w(this, 1);
        this.f6174i = wVar2;
        return wVar2;
    }
}
