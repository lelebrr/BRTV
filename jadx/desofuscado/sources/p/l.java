package p;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public int[] f8856a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f8857b;

    /* renamed from: c, reason: collision with root package name */
    public int f8858c;

    public l(int i6) {
        this.f8856a = i6 == 0 ? q.a.f8929a : new int[i6];
        this.f8857b = i6 == 0 ? q.a.f8930b : new Object[i6 << 1];
    }

    public final int a(Object obj) {
        int i6 = this.f8858c * 2;
        Object[] objArr = this.f8857b;
        if (obj == null) {
            for (int i10 = 1; i10 < i6; i10 += 2) {
                if (objArr[i10] == null) {
                    return i10 >> 1;
                }
            }
            return -1;
        }
        for (int i11 = 1; i11 < i6; i11 += 2) {
            if (obj.equals(objArr[i11])) {
                return i11 >> 1;
            }
        }
        return -1;
    }

    public final void b(int i6) {
        int i10 = this.f8858c;
        int[] iArr = this.f8856a;
        if (iArr.length < i6) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i6);
            j9.i.e(iArrCopyOf, "copyOf(this, newSize)");
            this.f8856a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8857b, i6 * 2);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8857b = objArrCopyOf;
        }
        if (this.f8858c != i10) {
            throw new ConcurrentModificationException();
        }
    }

    public final int c(int i6, Object obj) {
        int i10 = this.f8858c;
        if (i10 == 0) {
            return -1;
        }
        int iA = q.a.a(i10, i6, this.f8856a);
        if (iA < 0 || j9.i.a(obj, this.f8857b[iA << 1])) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.f8856a[i11] == i6) {
            if (j9.i.a(obj, this.f8857b[i11 << 1])) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.f8856a[i12] == i6; i12--) {
            if (j9.i.a(obj, this.f8857b[i12 << 1])) {
                return i12;
            }
        }
        return ~i11;
    }

    public void clear() {
        if (this.f8858c > 0) {
            this.f8856a = q.a.f8929a;
            this.f8857b = q.a.f8930b;
            this.f8858c = 0;
        }
        if (this.f8858c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj.hashCode(), obj);
    }

    public final int e() {
        int i6 = this.f8858c;
        if (i6 == 0) {
            return -1;
        }
        int iA = q.a.a(i6, 0, this.f8856a);
        if (iA < 0 || this.f8857b[iA << 1] == null) {
            return iA;
        }
        int i10 = iA + 1;
        while (i10 < i6 && this.f8856a[i10] == 0) {
            if (this.f8857b[i10 << 1] == null) {
                return i10;
            }
            i10++;
        }
        for (int i11 = iA - 1; i11 >= 0 && this.f8856a[i11] == 0; i11--) {
            if (this.f8857b[i11 << 1] == null) {
                return i11;
            }
        }
        return ~i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof l) {
                int i6 = this.f8858c;
                if (i6 != ((l) obj).f8858c) {
                    return false;
                }
                l lVar = (l) obj;
                for (int i10 = 0; i10 < i6; i10++) {
                    Object objF = f(i10);
                    Object objJ = j(i10);
                    Object obj2 = lVar.get(objF);
                    if (objJ == null) {
                        if (obj2 != null || !lVar.containsKey(objF)) {
                            return false;
                        }
                    } else if (!objJ.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f8858c != ((Map) obj).size()) {
                return false;
            }
            int i11 = this.f8858c;
            for (int i12 = 0; i12 < i11; i12++) {
                Object objF2 = f(i12);
                Object objJ2 = j(i12);
                Object obj3 = ((Map) obj).get(objF2);
                if (objJ2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objF2)) {
                        return false;
                    }
                } else if (!objJ2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i6) {
        if (i6 < 0 || i6 >= this.f8858c) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f8857b[i6 << 1];
    }

    public void g(e eVar) {
        int i6 = eVar.f8858c;
        b(this.f8858c + i6);
        if (this.f8858c != 0) {
            for (int i10 = 0; i10 < i6; i10++) {
                put(eVar.f(i10), eVar.j(i10));
            }
        } else if (i6 > 0) {
            x8.i.C(0, 0, i6, eVar.f8856a, this.f8856a);
            x8.i.D(0, 0, i6 << 1, eVar.f8857b, this.f8857b);
            this.f8858c = i6;
        }
    }

    public Object get(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return this.f8857b[(iD << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iD = d(obj);
        return iD >= 0 ? this.f8857b[(iD << 1) + 1] : obj2;
    }

    public Object h(int i6) {
        int i10;
        if (i6 < 0 || i6 >= (i10 = this.f8858c)) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        Object[] objArr = this.f8857b;
        int i11 = i6 << 1;
        Object obj = objArr[i11 + 1];
        if (i10 <= 1) {
            clear();
        } else {
            int i12 = i10 - 1;
            int[] iArr = this.f8856a;
            if (iArr.length <= 8 || i10 >= iArr.length / 3) {
                if (i6 < i12) {
                    int i13 = i6 + 1;
                    x8.i.C(i6, i13, i10, iArr, iArr);
                    Object[] objArr2 = this.f8857b;
                    x8.i.D(i11, i13 << 1, i10 << 1, objArr2, objArr2);
                }
                Object[] objArr3 = this.f8857b;
                int i14 = i12 << 1;
                objArr3[i14] = null;
                objArr3[i14 + 1] = null;
            } else {
                int i15 = i10 > 8 ? i10 + (i10 >> 1) : 8;
                int[] iArrCopyOf = Arrays.copyOf(iArr, i15);
                j9.i.e(iArrCopyOf, "copyOf(this, newSize)");
                this.f8856a = iArrCopyOf;
                Object[] objArrCopyOf = Arrays.copyOf(this.f8857b, i15 << 1);
                j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
                this.f8857b = objArrCopyOf;
                if (i10 != this.f8858c) {
                    throw new ConcurrentModificationException();
                }
                if (i6 > 0) {
                    x8.i.C(0, 0, i6, iArr, this.f8856a);
                    x8.i.D(0, 0, i11, objArr, this.f8857b);
                }
                if (i6 < i12) {
                    int i16 = i6 + 1;
                    x8.i.C(i6, i16, i10, iArr, this.f8856a);
                    x8.i.D(i11, i16 << 1, i10 << 1, objArr, this.f8857b);
                }
            }
            if (i10 != this.f8858c) {
                throw new ConcurrentModificationException();
            }
            this.f8858c = i12;
        }
        return obj;
    }

    public int hashCode() {
        int[] iArr = this.f8856a;
        Object[] objArr = this.f8857b;
        int i6 = this.f8858c;
        int i10 = 1;
        int i11 = 0;
        int iHashCode = 0;
        while (i11 < i6) {
            Object obj = objArr[i10];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i11];
            i11++;
            i10 += 2;
        }
        return iHashCode;
    }

    public Object i(int i6, Object obj) {
        if (i6 < 0 || i6 >= this.f8858c) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        int i10 = (i6 << 1) + 1;
        Object[] objArr = this.f8857b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final boolean isEmpty() {
        return this.f8858c <= 0;
    }

    public final Object j(int i6) {
        if (i6 < 0 || i6 >= this.f8858c) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        return this.f8857b[(i6 << 1) + 1];
    }

    public Object put(Object obj, Object obj2) {
        int i6 = this.f8858c;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iC = obj != null ? c(iHashCode, obj) : e();
        if (iC >= 0) {
            int i10 = (iC << 1) + 1;
            Object[] objArr = this.f8857b;
            Object obj3 = objArr[i10];
            objArr[i10] = obj2;
            return obj3;
        }
        int i11 = ~iC;
        int[] iArr = this.f8856a;
        if (i6 >= iArr.length) {
            int i12 = 8;
            if (i6 >= 8) {
                i12 = (i6 >> 1) + i6;
            } else if (i6 < 4) {
                i12 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i12);
            j9.i.e(iArrCopyOf, "copyOf(this, newSize)");
            this.f8856a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8857b, i12 << 1);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8857b = objArrCopyOf;
            if (i6 != this.f8858c) {
                throw new ConcurrentModificationException();
            }
        }
        if (i11 < i6) {
            int[] iArr2 = this.f8856a;
            int i13 = i11 + 1;
            x8.i.C(i13, i11, i6, iArr2, iArr2);
            Object[] objArr2 = this.f8857b;
            x8.i.D(i13 << 1, i11 << 1, this.f8858c << 1, objArr2, objArr2);
        }
        int i14 = this.f8858c;
        if (i6 == i14) {
            int[] iArr3 = this.f8856a;
            if (i11 < iArr3.length) {
                iArr3[i11] = iHashCode;
                Object[] objArr3 = this.f8857b;
                int i15 = i11 << 1;
                objArr3[i15] = obj;
                objArr3[i15 + 1] = obj2;
                this.f8858c = i14 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return h(iD);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD >= 0) {
            return i(iD, obj2);
        }
        return null;
    }

    public final int size() {
        return this.f8858c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f8858c * 28);
        sb.append('{');
        int i6 = this.f8858c;
        for (int i10 = 0; i10 < i6; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            Object objF = f(i10);
            if (objF != sb) {
                sb.append(objF);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object objJ = j(i10);
            if (objJ != sb) {
                sb.append(objJ);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        j9.i.e(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public final boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0 || !j9.i.a(obj2, j(iD))) {
            return false;
        }
        h(iD);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iD = d(obj);
        if (iD < 0 || !j9.i.a(obj2, j(iD))) {
            return false;
        }
        i(iD, obj3);
        return true;
    }
}
