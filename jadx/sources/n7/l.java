package n7;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends AbstractMap implements Serializable {

    /* renamed from: h, reason: collision with root package name */
    public static final a0.e f8493h = new a0.e(5);

    /* renamed from: a, reason: collision with root package name */
    public final Comparator f8494a;

    /* renamed from: b, reason: collision with root package name */
    public k f8495b;

    /* renamed from: c, reason: collision with root package name */
    public int f8496c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public final k f8497e;
    public j f;

    /* renamed from: g, reason: collision with root package name */
    public j f8498g;

    public l() {
        a0.e eVar = f8493h;
        this.f8496c = 0;
        this.d = 0;
        this.f8497e = new k();
        this.f8494a = eVar;
    }

    public final k a(Object obj, boolean z7) {
        int iCompareTo;
        k kVar;
        k kVar2 = this.f8495b;
        a0.e eVar = f8493h;
        Comparator comparator = this.f8494a;
        if (kVar2 != null) {
            Comparable comparable = comparator == eVar ? (Comparable) obj : null;
            while (true) {
                Object obj2 = kVar2.f;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return kVar2;
                }
                k kVar3 = iCompareTo < 0 ? kVar2.f8488b : kVar2.f8489c;
                if (kVar3 == null) {
                    break;
                }
                kVar2 = kVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z7) {
            return null;
        }
        k kVar4 = this.f8497e;
        if (kVar2 != null) {
            kVar = new k(kVar2, obj, kVar4, kVar4.f8490e);
            if (iCompareTo < 0) {
                kVar2.f8488b = kVar;
            } else {
                kVar2.f8489c = kVar;
            }
            b(kVar2, true);
        } else {
            if (comparator == eVar && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            kVar = new k(kVar2, obj, kVar4, kVar4.f8490e);
            this.f8495b = kVar;
        }
        this.f8496c++;
        this.d++;
        return kVar;
    }

    public final void b(k kVar, boolean z7) {
        while (kVar != null) {
            k kVar2 = kVar.f8488b;
            k kVar3 = kVar.f8489c;
            int i6 = kVar2 != null ? kVar2.f8492h : 0;
            int i10 = kVar3 != null ? kVar3.f8492h : 0;
            int i11 = i6 - i10;
            if (i11 == -2) {
                k kVar4 = kVar3.f8488b;
                k kVar5 = kVar3.f8489c;
                int i12 = (kVar4 != null ? kVar4.f8492h : 0) - (kVar5 != null ? kVar5.f8492h : 0);
                if (i12 == -1 || (i12 == 0 && !z7)) {
                    e(kVar);
                } else {
                    f(kVar3);
                    e(kVar);
                }
                if (z7) {
                    return;
                }
            } else if (i11 == 2) {
                k kVar6 = kVar2.f8488b;
                k kVar7 = kVar2.f8489c;
                int i13 = (kVar6 != null ? kVar6.f8492h : 0) - (kVar7 != null ? kVar7.f8492h : 0);
                if (i13 == 1 || (i13 == 0 && !z7)) {
                    f(kVar);
                } else {
                    e(kVar2);
                    f(kVar);
                }
                if (z7) {
                    return;
                }
            } else if (i11 == 0) {
                kVar.f8492h = i6 + 1;
                if (z7) {
                    return;
                }
            } else {
                kVar.f8492h = Math.max(i6, i10) + 1;
                if (!z7) {
                    return;
                }
            }
            kVar = kVar.f8487a;
        }
    }

    public final void c(k kVar, boolean z7) {
        k kVar2;
        k kVar3;
        int i6;
        if (z7) {
            k kVar4 = kVar.f8490e;
            kVar4.d = kVar.d;
            kVar.d.f8490e = kVar4;
        }
        k kVar5 = kVar.f8488b;
        k kVar6 = kVar.f8489c;
        k kVar7 = kVar.f8487a;
        int i10 = 0;
        if (kVar5 == null || kVar6 == null) {
            if (kVar5 != null) {
                d(kVar, kVar5);
                kVar.f8488b = null;
            } else if (kVar6 != null) {
                d(kVar, kVar6);
                kVar.f8489c = null;
            } else {
                d(kVar, null);
            }
            b(kVar7, false);
            this.f8496c--;
            this.d++;
            return;
        }
        if (kVar5.f8492h > kVar6.f8492h) {
            k kVar8 = kVar5.f8489c;
            while (true) {
                k kVar9 = kVar8;
                kVar3 = kVar5;
                kVar5 = kVar9;
                if (kVar5 == null) {
                    break;
                } else {
                    kVar8 = kVar5.f8489c;
                }
            }
        } else {
            k kVar10 = kVar6.f8488b;
            while (true) {
                kVar2 = kVar6;
                kVar6 = kVar10;
                if (kVar6 == null) {
                    break;
                } else {
                    kVar10 = kVar6.f8488b;
                }
            }
            kVar3 = kVar2;
        }
        c(kVar3, false);
        k kVar11 = kVar.f8488b;
        if (kVar11 != null) {
            i6 = kVar11.f8492h;
            kVar3.f8488b = kVar11;
            kVar11.f8487a = kVar3;
            kVar.f8488b = null;
        } else {
            i6 = 0;
        }
        k kVar12 = kVar.f8489c;
        if (kVar12 != null) {
            i10 = kVar12.f8492h;
            kVar3.f8489c = kVar12;
            kVar12.f8487a = kVar3;
            kVar.f8489c = null;
        }
        kVar3.f8492h = Math.max(i6, i10) + 1;
        d(kVar, kVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f8495b = null;
        this.f8496c = 0;
        this.d++;
        k kVar = this.f8497e;
        kVar.f8490e = kVar;
        kVar.d = kVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        k kVarA = null;
        if (obj != null) {
            try {
                kVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return kVarA != null;
    }

    public final void d(k kVar, k kVar2) {
        k kVar3 = kVar.f8487a;
        kVar.f8487a = null;
        if (kVar2 != null) {
            kVar2.f8487a = kVar3;
        }
        if (kVar3 == null) {
            this.f8495b = kVar2;
        } else if (kVar3.f8488b == kVar) {
            kVar3.f8488b = kVar2;
        } else {
            kVar3.f8489c = kVar2;
        }
    }

    public final void e(k kVar) {
        k kVar2 = kVar.f8488b;
        k kVar3 = kVar.f8489c;
        k kVar4 = kVar3.f8488b;
        k kVar5 = kVar3.f8489c;
        kVar.f8489c = kVar4;
        if (kVar4 != null) {
            kVar4.f8487a = kVar;
        }
        d(kVar, kVar3);
        kVar3.f8488b = kVar;
        kVar.f8487a = kVar3;
        int iMax = Math.max(kVar2 != null ? kVar2.f8492h : 0, kVar4 != null ? kVar4.f8492h : 0) + 1;
        kVar.f8492h = iMax;
        kVar3.f8492h = Math.max(iMax, kVar5 != null ? kVar5.f8492h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        j jVar = this.f;
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(this, 0);
        this.f = jVar2;
        return jVar2;
    }

    public final void f(k kVar) {
        k kVar2 = kVar.f8488b;
        k kVar3 = kVar.f8489c;
        k kVar4 = kVar2.f8488b;
        k kVar5 = kVar2.f8489c;
        kVar.f8488b = kVar5;
        if (kVar5 != null) {
            kVar5.f8487a = kVar;
        }
        d(kVar, kVar2);
        kVar2.f8489c = kVar;
        kVar.f8487a = kVar2;
        int iMax = Math.max(kVar3 != null ? kVar3.f8492h : 0, kVar5 != null ? kVar5.f8492h : 0) + 1;
        kVar.f8492h = iMax;
        kVar2.f8492h = Math.max(iMax, kVar4 != null ? kVar4.f8492h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        k kVarA;
        if (obj != null) {
            try {
                kVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            kVarA = null;
        }
        if (kVarA != null) {
            return kVarA.f8491g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        j jVar = this.f8498g;
        if (jVar != null) {
            return jVar;
        }
        j jVar2 = new j(this, 1);
        this.f8498g = jVar2;
        return jVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        k kVarA = a(obj, true);
        Object obj3 = kVarA.f8491g;
        kVarA.f8491g = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        k kVarA;
        if (obj != null) {
            try {
                kVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            kVarA = null;
        }
        if (kVarA != null) {
            c(kVarA, true);
        }
        if (kVarA != null) {
            return kVarA.f8491g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8496c;
    }
}
