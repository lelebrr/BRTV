package d7;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 extends AbstractSet implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient Object f6190a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f6191b;

    /* renamed from: c, reason: collision with root package name */
    public transient Object[] f6192c;
    public transient int d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f6193e;
    public transient int[] f;

    /* renamed from: g, reason: collision with root package name */
    public transient int[] f6194g;

    /* renamed from: h, reason: collision with root package name */
    public transient int f6195h;

    /* renamed from: i, reason: collision with root package name */
    public transient int f6196i;

    public static k0 d(int i6) {
        k0 k0Var = new k0();
        b7.b.e("Expected size must be >= 0", i6 >= 0);
        k0Var.d = r4.b.i(i6, 1);
        k0Var.f6195h = -2;
        k0Var.f6196i = -2;
        return k0Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int iMin;
        if (f()) {
            b7.b.n("Arrays already allocated", f());
            int i6 = this.d;
            int iE = d0.E(i6);
            this.f6190a = d0.g(iE);
            this.d = d0.r(this.d, 32 - Integer.numberOfLeadingZeros(iE - 1), 31);
            this.f6191b = new int[i6];
            this.f6192c = new Object[i6];
            this.f = new int[i6];
            this.f6194g = new int[i6];
        }
        Set setE = e();
        if (setE != null) {
            return setE.add(obj);
        }
        int[] iArrH = h();
        Object[] objArrG = g();
        int i10 = this.f6193e;
        int i11 = i10 + 1;
        int iB = d0.B(obj);
        int i12 = (1 << (this.d & 31)) - 1;
        int i13 = iB & i12;
        Object obj2 = this.f6190a;
        Objects.requireNonNull(obj2);
        int iC = d0.C(i13, obj2);
        if (iC != 0) {
            int i14 = ~i12;
            int i15 = iB & i14;
            int i16 = 0;
            while (true) {
                int i17 = iC - 1;
                int i18 = iArrH[i17];
                if ((i18 & i14) == i15 && b7.b.p(obj, objArrG[i17])) {
                    return false;
                }
                int i19 = i18 & i12;
                i16++;
                if (i19 != 0) {
                    iC = i19;
                } else {
                    if (i16 >= 9) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet(1 << (this.d & 31), 1.0f);
                        int i20 = this.f6195h;
                        while (i20 >= 0) {
                            linkedHashSet.add(g()[i20]);
                            int[] iArr = this.f6194g;
                            Objects.requireNonNull(iArr);
                            i20 = iArr[i20] - 1;
                        }
                        this.f6190a = linkedHashSet;
                        this.f6191b = null;
                        this.f6192c = null;
                        this.d += 32;
                        this.f = null;
                        this.f6194g = null;
                        return linkedHashSet.add(obj);
                    }
                    if (i11 > i12) {
                        i12 = i(i12, d0.u(i12), iB, i10);
                    } else {
                        iArrH[i17] = d0.r(i18, i11, i12);
                    }
                }
            }
        } else if (i11 > i12) {
            i12 = i(i12, d0.u(i12), iB, i10);
        } else {
            Object obj3 = this.f6190a;
            Objects.requireNonNull(obj3);
            d0.D(i13, i11, obj3);
        }
        int length = h().length;
        if (i11 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f6191b = Arrays.copyOf(h(), iMin);
            this.f6192c = Arrays.copyOf(g(), iMin);
            int[] iArr2 = this.f;
            Objects.requireNonNull(iArr2);
            this.f = Arrays.copyOf(iArr2, iMin);
            int[] iArr3 = this.f6194g;
            Objects.requireNonNull(iArr3);
            this.f6194g = Arrays.copyOf(iArr3, iMin);
        }
        h()[i10] = d0.r(iB, 0, i12);
        g()[i10] = obj;
        j(this.f6196i, i10);
        j(i10, -2);
        this.f6193e = i11;
        this.d += 32;
        return true;
    }

    public final void c() {
        if (f()) {
            return;
        }
        this.d += 32;
        Set setE = e();
        if (setE != null) {
            this.d = r4.b.i(size(), 3);
            setE.clear();
            this.f6190a = null;
            this.f6193e = 0;
            return;
        }
        Arrays.fill(g(), 0, this.f6193e, (Object) null);
        Object obj = this.f6190a;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(h(), 0, this.f6193e, 0);
        this.f6193e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (f()) {
            return;
        }
        this.f6195h = -2;
        this.f6196i = -2;
        int[] iArr = this.f;
        if (iArr != null && this.f6194g != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.f6194g, 0, size(), 0);
        }
        c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (f()) {
            return false;
        }
        Set setE = e();
        if (setE != null) {
            return setE.contains(obj);
        }
        int iB = d0.B(obj);
        int i6 = (1 << (this.d & 31)) - 1;
        Object obj2 = this.f6190a;
        Objects.requireNonNull(obj2);
        int iC = d0.C(iB & i6, obj2);
        if (iC == 0) {
            return false;
        }
        int i10 = ~i6;
        int i11 = iB & i10;
        do {
            int i12 = iC - 1;
            int i13 = h()[i12];
            if ((i13 & i10) == i11 && b7.b.p(obj, g()[i12])) {
                return true;
            }
            iC = i13 & i6;
        } while (iC != 0);
        return false;
    }

    public final Set e() {
        Object obj = this.f6190a;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final boolean f() {
        return this.f6190a == null;
    }

    public final Object[] g() {
        Object[] objArr = this.f6192c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int[] h() {
        int[] iArr = this.f6191b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final int i(int i6, int i10, int i11, int i12) {
        Object objG = d0.g(i10);
        int i13 = i10 - 1;
        if (i12 != 0) {
            d0.D(i11 & i13, i12 + 1, objG);
        }
        Object obj = this.f6190a;
        Objects.requireNonNull(obj);
        int[] iArrH = h();
        for (int i14 = 0; i14 <= i6; i14++) {
            int iC = d0.C(i14, obj);
            while (iC != 0) {
                int i15 = iC - 1;
                int i16 = iArrH[i15];
                int i17 = ((~i6) & i16) | i14;
                int i18 = i17 & i13;
                int iC2 = d0.C(i18, objG);
                d0.D(i18, iC, objG);
                iArrH[i15] = d0.r(i17, iC2, i13);
                iC = i16 & i6;
            }
        }
        this.f6190a = objG;
        this.d = d0.r(this.d, 32 - Integer.numberOfLeadingZeros(i13), 31);
        return i13;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set setE = e();
        return setE != null ? setE.iterator() : new j0(this);
    }

    public final void j(int i6, int i10) {
        if (i6 == -2) {
            this.f6195h = i10;
        } else {
            int[] iArr = this.f6194g;
            Objects.requireNonNull(iArr);
            iArr[i6] = i10 + 1;
        }
        if (i10 == -2) {
            this.f6196i = i6;
            return;
        }
        int[] iArr2 = this.f;
        Objects.requireNonNull(iArr2);
        iArr2[i10] = i6 + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i6;
        int i10;
        if (f()) {
            return false;
        }
        Set setE = e();
        if (setE != null) {
            return setE.remove(obj);
        }
        int i11 = (1 << (this.d & 31)) - 1;
        Object obj2 = this.f6190a;
        Objects.requireNonNull(obj2);
        int iW = d0.w(obj, null, i11, obj2, h(), g(), null);
        if (iW == -1) {
            return false;
        }
        int size = size() - 1;
        Object obj3 = this.f6190a;
        Objects.requireNonNull(obj3);
        int[] iArrH = h();
        Object[] objArrG = g();
        int size2 = size();
        int i12 = size2 - 1;
        if (iW < i12) {
            Object obj4 = objArrG[i12];
            objArrG[iW] = obj4;
            objArrG[i12] = null;
            iArrH[iW] = iArrH[i12];
            iArrH[i12] = 0;
            int iB = d0.B(obj4) & i11;
            int iC = d0.C(iB, obj3);
            if (iC == size2) {
                d0.D(iB, iW + 1, obj3);
            } else {
                while (true) {
                    i6 = iC - 1;
                    i10 = iArrH[i6];
                    int i13 = i10 & i11;
                    if (i13 == size2) {
                        break;
                    }
                    iC = i13;
                }
                iArrH[i6] = d0.r(i10, iW + 1, i11);
            }
        } else {
            objArrG[iW] = null;
            iArrH[iW] = 0;
        }
        int[] iArr = this.f;
        Objects.requireNonNull(iArr);
        int i14 = iArr[iW] - 1;
        int[] iArr2 = this.f6194g;
        Objects.requireNonNull(iArr2);
        j(i14, iArr2[iW] - 1);
        if (iW < size) {
            int[] iArr3 = this.f;
            Objects.requireNonNull(iArr3);
            j(iArr3[size] - 1, iW);
            int[] iArr4 = this.f6194g;
            Objects.requireNonNull(iArr4);
            j(iW, iArr4[size] - 1);
        }
        int[] iArr5 = this.f;
        Objects.requireNonNull(iArr5);
        iArr5[size] = 0;
        int[] iArr6 = this.f6194g;
        Objects.requireNonNull(iArr6);
        iArr6[size] = 0;
        this.f6193e--;
        this.d += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set setE = e();
        return setE != null ? setE.size() : this.f6193e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        int size = size();
        int i6 = 0;
        if (objArr.length < size) {
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, size);
        }
        Iterator it = iterator();
        while (it.hasNext()) {
            objArr[i6] = it.next();
            i6++;
        }
        if (objArr.length > size) {
            objArr[size] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] objArr = new Object[size()];
        Iterator<E> it = iterator();
        int i6 = 0;
        while (it.hasNext()) {
            objArr[i6] = it.next();
            i6++;
        }
        return objArr;
    }
}
