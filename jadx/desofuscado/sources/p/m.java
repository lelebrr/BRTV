package p;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ int[] f8859a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object[] f8860b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ int f8861c;

    public m() {
        int i6;
        int i10 = 4;
        while (true) {
            i6 = 40;
            if (i10 >= 32) {
                break;
            }
            int i11 = (1 << i10) - 12;
            if (40 <= i11) {
                i6 = i11;
                break;
            }
            i10++;
        }
        int i12 = i6 / 4;
        this.f8859a = new int[i12];
        this.f8860b = new Object[i12];
    }

    public final void a(int i6, Object obj) {
        int i10 = this.f8861c;
        if (i10 != 0 && i6 <= this.f8859a[i10 - 1]) {
            d(i6, obj);
            return;
        }
        if (i10 >= this.f8859a.length) {
            int i11 = (i10 + 1) * 4;
            int i12 = 4;
            while (true) {
                if (i12 >= 32) {
                    break;
                }
                int i13 = (1 << i12) - 12;
                if (i11 <= i13) {
                    i11 = i13;
                    break;
                }
                i12++;
            }
            int i14 = i11 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f8859a, i14);
            j9.i.e(iArrCopyOf, "copyOf(this, newSize)");
            this.f8859a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8860b, i14);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8860b = objArrCopyOf;
        }
        this.f8859a[i10] = i6;
        this.f8860b[i10] = obj;
        this.f8861c = i10 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final m clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        j9.i.d(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        m mVar = (m) objClone;
        mVar.f8859a = (int[]) this.f8859a.clone();
        mVar.f8860b = (Object[]) this.f8860b.clone();
        return mVar;
    }

    public final Object c(int i6) {
        Object obj;
        int iA = q.a.a(this.f8861c, i6, this.f8859a);
        if (iA < 0 || (obj = this.f8860b[iA]) == j.f8851b) {
            return null;
        }
        return obj;
    }

    public final void d(int i6, Object obj) {
        int iA = q.a.a(this.f8861c, i6, this.f8859a);
        if (iA >= 0) {
            this.f8860b[iA] = obj;
            return;
        }
        int i10 = ~iA;
        int i11 = this.f8861c;
        if (i10 < i11) {
            Object[] objArr = this.f8860b;
            if (objArr[i10] == j.f8851b) {
                this.f8859a[i10] = i6;
                objArr[i10] = obj;
                return;
            }
        }
        if (i11 >= this.f8859a.length) {
            int i12 = (i11 + 1) * 4;
            int i13 = 4;
            while (true) {
                if (i13 >= 32) {
                    break;
                }
                int i14 = (1 << i13) - 12;
                if (i12 <= i14) {
                    i12 = i14;
                    break;
                }
                i13++;
            }
            int i15 = i12 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f8859a, i15);
            j9.i.e(iArrCopyOf, "copyOf(this, newSize)");
            this.f8859a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8860b, i15);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8860b = objArrCopyOf;
        }
        int i16 = this.f8861c;
        if (i16 - i10 != 0) {
            int[] iArr = this.f8859a;
            int i17 = i10 + 1;
            x8.i.C(i17, i10, i16, iArr, iArr);
            Object[] objArr2 = this.f8860b;
            x8.i.D(i17, i10, this.f8861c, objArr2, objArr2);
        }
        this.f8859a[i10] = i6;
        this.f8860b[i10] = obj;
        this.f8861c++;
    }

    public final String toString() {
        int i6 = this.f8861c;
        if (i6 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i6 * 28);
        sb.append('{');
        int i10 = this.f8861c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            sb.append(this.f8859a[i11]);
            sb.append('=');
            Object obj = this.f8860b[i11];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        j9.i.e(string, "buffer.toString()");
        return string;
    }
}
