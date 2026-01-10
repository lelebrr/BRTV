package d7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class k2 extends q1 implements Set {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f6197c = 0;

    /* renamed from: b, reason: collision with root package name */
    public transient u1 f6198b;

    public static int j(int i6) {
        int iMax = Math.max(i6, 2);
        if (iMax >= 751619276) {
            b7.b.e("collection too large", iMax < 1073741824);
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (iHighestOneBit * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static k2 k(Object[] objArr, int i6) {
        if (i6 == 0) {
            return i5.f6179j;
        }
        if (i6 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new m2(obj);
        }
        int iJ = j(i6);
        Object[] objArr2 = new Object[iJ];
        int i10 = iJ - 1;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < i6; i13++) {
            Object obj2 = objArr[i13];
            if (obj2 == null) {
                throw new NullPointerException(a.e.n(i13, "at index "));
            }
            int iHashCode = obj2.hashCode();
            int iA = d0.A(iHashCode);
            while (true) {
                int i14 = iA & i10;
                Object obj3 = objArr2[i14];
                if (obj3 == null) {
                    objArr[i12] = obj2;
                    objArr2[i14] = obj2;
                    i11 += iHashCode;
                    i12++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iA++;
            }
        }
        Arrays.fill(objArr, i12, i6, (Object) null);
        if (i12 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new m2(obj4);
        }
        if (j(i12) < iJ / 2) {
            return k(objArr, i12);
        }
        int length = objArr.length;
        if (i12 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i12);
        }
        return new i5(i11, i10, i12, objArr, objArr2);
    }

    public static k2 l(Collection collection) {
        if ((collection instanceof k2) && !(collection instanceof SortedSet)) {
            k2 k2Var = (k2) collection;
            if (!k2Var.h()) {
                return k2Var;
            }
        }
        Object[] array = collection.toArray();
        return k(array, array.length);
    }

    @Override // d7.q1
    public u1 c() {
        u1 u1Var = this.f6198b;
        if (u1Var != null) {
            return u1Var;
        }
        u1 u1VarM = m();
        this.f6198b = u1VarM;
        return u1VarM;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof k2) && (this instanceof i5)) {
            k2 k2Var = (k2) obj;
            k2Var.getClass();
            if ((k2Var instanceof i5) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return d0.j(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return d0.p(this);
    }

    public u1 m() {
        Object[] array = toArray(q1.f6242a);
        g1 g1Var = u1.f6276b;
        return u1.j(array, array.length);
    }
}
