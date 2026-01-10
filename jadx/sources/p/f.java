package p;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements Collection, Set, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public int[] f8838a = q.a.f8929a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f8839b = q.a.f8930b;

    /* renamed from: c, reason: collision with root package name */
    public int f8840c;

    public f(int i6) {
        if (i6 > 0) {
            j.a(this, i6);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i6;
        int iB;
        int i10 = this.f8840c;
        if (obj == null) {
            iB = j.b(this, null, 0);
            i6 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i6 = iHashCode;
            iB = j.b(this, obj, iHashCode);
        }
        if (iB >= 0) {
            return false;
        }
        int i11 = ~iB;
        int[] iArr = this.f8838a;
        if (i10 >= iArr.length) {
            int i12 = 8;
            if (i10 >= 8) {
                i12 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i12 = 4;
            }
            Object[] objArr = this.f8839b;
            j.a(this, i12);
            if (i10 != this.f8840c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f8838a;
            if (iArr2.length != 0) {
                x8.i.C(0, 0, iArr.length, iArr, iArr2);
                x8.i.F(0, objArr.length, 6, objArr, this.f8839b);
            }
        }
        if (i11 < i10) {
            int[] iArr3 = this.f8838a;
            int i13 = i11 + 1;
            x8.i.C(i13, i11, i10, iArr3, iArr3);
            Object[] objArr2 = this.f8839b;
            x8.i.D(i13, i11, i10, objArr2, objArr2);
        }
        int i14 = this.f8840c;
        if (i10 == i14) {
            int[] iArr4 = this.f8838a;
            if (i11 < iArr4.length) {
                iArr4[i11] = i6;
                this.f8839b[i11] = obj;
                this.f8840c = i14 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        j9.i.f(collection, "elements");
        int size = collection.size() + this.f8840c;
        int i6 = this.f8840c;
        int[] iArr = this.f8838a;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f8839b;
            j.a(this, size);
            int i10 = this.f8840c;
            if (i10 > 0) {
                x8.i.C(0, 0, i10, iArr, this.f8838a);
                x8.i.F(0, this.f8840c, 6, objArr, this.f8839b);
            }
        }
        if (this.f8840c != i6) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final Object c(int i6) {
        int i10 = this.f8840c;
        Object[] objArr = this.f8839b;
        Object obj = objArr[i6];
        if (i10 <= 1) {
            clear();
        } else {
            int i11 = i10 - 1;
            int[] iArr = this.f8838a;
            if (iArr.length <= 8 || i10 >= iArr.length / 3) {
                if (i6 < i11) {
                    int i12 = i6 + 1;
                    x8.i.C(i6, i12, i10, iArr, iArr);
                    Object[] objArr2 = this.f8839b;
                    x8.i.D(i6, i12, i10, objArr2, objArr2);
                }
                this.f8839b[i11] = null;
            } else {
                j.a(this, i10 > 8 ? i10 + (i10 >> 1) : 8);
                if (i6 > 0) {
                    x8.i.C(0, 0, i6, iArr, this.f8838a);
                    x8.i.F(0, i6, 6, objArr, this.f8839b);
                }
                if (i6 < i11) {
                    int i13 = i6 + 1;
                    x8.i.C(i6, i13, i10, iArr, this.f8838a);
                    x8.i.D(i6, i13, i10, objArr, this.f8839b);
                }
            }
            if (i10 != this.f8840c) {
                throw new ConcurrentModificationException();
            }
            this.f8840c = i11;
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f8840c != 0) {
            this.f8838a = q.a.f8929a;
            this.f8839b = q.a.f8930b;
            this.f8840c = 0;
        }
        if (this.f8840c != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? j.b(this, null, 0) : j.b(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        j9.i.f(collection, "elements");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && this.f8840c == ((Set) obj).size()) {
            try {
                int i6 = this.f8840c;
                for (int i10 = 0; i10 < i6; i10++) {
                    if (((Set) obj).contains(this.f8839b[i10])) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f8838a;
        int i6 = this.f8840c;
        int i10 = 0;
        for (int i11 = 0; i11 < i6; i11++) {
            i10 += iArr[i11];
        }
        return i10;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f8840c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new a(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iB = obj == null ? j.b(this, null, 0) : j.b(this, obj, obj.hashCode());
        if (iB < 0) {
            return false;
        }
        c(iB);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        j9.i.f(collection, "elements");
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        j9.i.f(collection, "elements");
        boolean z7 = false;
        for (int i6 = this.f8840c - 1; -1 < i6; i6--) {
            if (!collection.contains(this.f8839b[i6])) {
                c(i6);
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f8840c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return x8.i.H(this.f8839b, 0, this.f8840c);
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f8840c * 14);
        sb.append('{');
        int i6 = this.f8840c;
        for (int i10 = 0; i10 < i6; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            Object obj = this.f8839b[i10];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        j9.i.e(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        j9.i.f(objArr, "array");
        int i6 = this.f8840c;
        if (objArr.length < i6) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i6);
        } else if (objArr.length > i6) {
            objArr[i6] = null;
        }
        x8.i.D(0, 0, this.f8840c, this.f8839b, objArr);
        return objArr;
    }
}
