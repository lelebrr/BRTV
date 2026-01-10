package g7;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends AbstractList implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f7109a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7110b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7111c;

    public c(int i6, int i10, int[] iArr) {
        this.f7109a = iArr;
        this.f7110b = i6;
        this.f7111c = i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Integer) {
            if (r4.b.A(this.f7109a, ((Integer) obj).intValue(), this.f7110b, this.f7111c) != -1) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return super.equals(obj);
        }
        c cVar = (c) obj;
        int size = size();
        if (cVar.size() != size) {
            return false;
        }
        for (int i6 = 0; i6 < size; i6++) {
            if (this.f7109a[this.f7110b + i6] != cVar.f7109a[cVar.f7110b + i6]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i6) {
        b7.b.h(i6, size());
        return Integer.valueOf(this.f7109a[this.f7110b + i6]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i6 = 1;
        for (int i10 = this.f7110b; i10 < this.f7111c; i10++) {
            i6 = (i6 * 31) + this.f7109a[i10];
        }
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int[] iArr = this.f7109a;
        int i6 = this.f7110b;
        int iA = r4.b.A(iArr, iIntValue, i6, this.f7111c);
        if (iA >= 0) {
            return iA - i6;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int i6;
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i10 = this.f7111c;
            while (true) {
                i10--;
                i6 = this.f7110b;
                if (i10 < i6) {
                    i10 = -1;
                    break;
                }
                if (this.f7109a[i10] == iIntValue) {
                    break;
                }
            }
            if (i10 >= 0) {
                return i10 - i6;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i6, Object obj) {
        Integer num = (Integer) obj;
        b7.b.h(i6, size());
        int i10 = this.f7110b + i6;
        int[] iArr = this.f7109a;
        int i11 = iArr[i10];
        num.getClass();
        iArr[i10] = num.intValue();
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7111c - this.f7110b;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i6, int i10) {
        b7.b.l(i6, i10, size());
        if (i6 == i10) {
            return Collections.emptyList();
        }
        int i11 = this.f7110b;
        return new c(i6 + i11, i11 + i10, this.f7109a);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append('[');
        int[] iArr = this.f7109a;
        int i6 = this.f7110b;
        sb.append(iArr[i6]);
        while (true) {
            i6++;
            if (i6 >= this.f7111c) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i6]);
        }
    }
}
