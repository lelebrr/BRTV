package p;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ boolean f8847a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ long[] f8848b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f8849c;
    public /* synthetic */ int d;

    public i() {
        int i6;
        int i10 = 4;
        while (true) {
            i6 = 80;
            if (i10 >= 32) {
                break;
            }
            int i11 = (1 << i10) - 12;
            if (80 <= i11) {
                i6 = i11;
                break;
            }
            i10++;
        }
        int i12 = i6 / 8;
        this.f8848b = new long[i12];
        this.f8849c = new Object[i12];
    }

    public final void a(long j10, Long l9) {
        int i6 = this.d;
        if (i6 != 0 && j10 <= this.f8848b[i6 - 1]) {
            h(j10, l9);
            return;
        }
        if (this.f8847a) {
            long[] jArr = this.f8848b;
            if (i6 >= jArr.length) {
                Object[] objArr = this.f8849c;
                int i10 = 0;
                for (int i11 = 0; i11 < i6; i11++) {
                    Object obj = objArr[i11];
                    if (obj != j.f8850a) {
                        if (i11 != i10) {
                            jArr[i10] = jArr[i11];
                            objArr[i10] = obj;
                            objArr[i11] = null;
                        }
                        i10++;
                    }
                }
                this.f8847a = false;
                this.d = i10;
            }
        }
        int i12 = this.d;
        if (i12 >= this.f8848b.length) {
            int i13 = (i12 + 1) * 8;
            int i14 = 4;
            while (true) {
                if (i14 >= 32) {
                    break;
                }
                int i15 = (1 << i14) - 12;
                if (i13 <= i15) {
                    i13 = i15;
                    break;
                }
                i14++;
            }
            int i16 = i13 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f8848b, i16);
            j9.i.e(jArrCopyOf, "copyOf(this, newSize)");
            this.f8848b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8849c, i16);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8849c = objArrCopyOf;
        }
        this.f8848b[i12] = j10;
        this.f8849c[i12] = l9;
        this.d = i12 + 1;
    }

    public final void b() {
        int i6 = this.d;
        Object[] objArr = this.f8849c;
        for (int i10 = 0; i10 < i6; i10++) {
            objArr[i10] = null;
        }
        this.d = 0;
        this.f8847a = false;
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final i clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        j9.i.d(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        i iVar = (i) objClone;
        iVar.f8848b = (long[]) this.f8848b.clone();
        iVar.f8849c = (Object[]) this.f8849c.clone();
        return iVar;
    }

    public final Object d(long j10) {
        Object obj;
        int iB = q.a.b(this.f8848b, this.d, j10);
        if (iB < 0 || (obj = this.f8849c[iB]) == j.f8850a) {
            return null;
        }
        return obj;
    }

    public final Object e(long j10) {
        Object obj;
        int iB = q.a.b(this.f8848b, this.d, j10);
        if (iB < 0 || (obj = this.f8849c[iB]) == j.f8850a) {
            return -1L;
        }
        return obj;
    }

    public final int f(long j10) {
        if (this.f8847a) {
            int i6 = this.d;
            long[] jArr = this.f8848b;
            Object[] objArr = this.f8849c;
            int i10 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                Object obj = objArr[i11];
                if (obj != j.f8850a) {
                    if (i11 != i10) {
                        jArr[i10] = jArr[i11];
                        objArr[i10] = obj;
                        objArr[i11] = null;
                    }
                    i10++;
                }
            }
            this.f8847a = false;
            this.d = i10;
        }
        return q.a.b(this.f8848b, this.d, j10);
    }

    public final long g(int i6) {
        int i10;
        if (i6 < 0 || i6 >= (i10 = this.d)) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f8847a) {
            long[] jArr = this.f8848b;
            Object[] objArr = this.f8849c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != j.f8850a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f8847a = false;
            this.d = i11;
        }
        return this.f8848b[i6];
    }

    public final void h(long j10, Object obj) {
        int iB = q.a.b(this.f8848b, this.d, j10);
        if (iB >= 0) {
            this.f8849c[iB] = obj;
            return;
        }
        int i6 = ~iB;
        int i10 = this.d;
        Object obj2 = j.f8850a;
        if (i6 < i10) {
            Object[] objArr = this.f8849c;
            if (objArr[i6] == obj2) {
                this.f8848b[i6] = j10;
                objArr[i6] = obj;
                return;
            }
        }
        if (this.f8847a) {
            long[] jArr = this.f8848b;
            if (i10 >= jArr.length) {
                Object[] objArr2 = this.f8849c;
                int i11 = 0;
                for (int i12 = 0; i12 < i10; i12++) {
                    Object obj3 = objArr2[i12];
                    if (obj3 != obj2) {
                        if (i12 != i11) {
                            jArr[i11] = jArr[i12];
                            objArr2[i11] = obj3;
                            objArr2[i12] = null;
                        }
                        i11++;
                    }
                }
                this.f8847a = false;
                this.d = i11;
                i6 = ~q.a.b(this.f8848b, i11, j10);
            }
        }
        int i13 = this.d;
        if (i13 >= this.f8848b.length) {
            int i14 = (i13 + 1) * 8;
            int i15 = 4;
            while (true) {
                if (i15 >= 32) {
                    break;
                }
                int i16 = (1 << i15) - 12;
                if (i14 <= i16) {
                    i14 = i16;
                    break;
                }
                i15++;
            }
            int i17 = i14 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f8848b, i17);
            j9.i.e(jArrCopyOf, "copyOf(this, newSize)");
            this.f8848b = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f8849c, i17);
            j9.i.e(objArrCopyOf, "copyOf(this, newSize)");
            this.f8849c = objArrCopyOf;
        }
        int i18 = this.d - i6;
        if (i18 != 0) {
            long[] jArr2 = this.f8848b;
            int i19 = i6 + 1;
            j9.i.f(jArr2, "<this>");
            System.arraycopy(jArr2, i6, jArr2, i19, i18);
            Object[] objArr3 = this.f8849c;
            x8.i.D(i19, i6, this.d, objArr3, objArr3);
        }
        this.f8848b[i6] = j10;
        this.f8849c[i6] = obj;
        this.d++;
    }

    public final void i(long j10) {
        int iB = q.a.b(this.f8848b, this.d, j10);
        if (iB >= 0) {
            Object[] objArr = this.f8849c;
            Object obj = objArr[iB];
            Object obj2 = j.f8850a;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f8847a = true;
            }
        }
    }

    public final int j() {
        if (this.f8847a) {
            int i6 = this.d;
            long[] jArr = this.f8848b;
            Object[] objArr = this.f8849c;
            int i10 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                Object obj = objArr[i11];
                if (obj != j.f8850a) {
                    if (i11 != i10) {
                        jArr[i10] = jArr[i11];
                        objArr[i10] = obj;
                        objArr[i11] = null;
                    }
                    i10++;
                }
            }
            this.f8847a = false;
            this.d = i10;
        }
        return this.d;
    }

    public final Object k(int i6) {
        int i10;
        if (i6 < 0 || i6 >= (i10 = this.d)) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.f8847a) {
            long[] jArr = this.f8848b;
            Object[] objArr = this.f8849c;
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                if (obj != j.f8850a) {
                    if (i12 != i11) {
                        jArr[i11] = jArr[i12];
                        objArr[i11] = obj;
                        objArr[i12] = null;
                    }
                    i11++;
                }
            }
            this.f8847a = false;
            this.d = i11;
        }
        return this.f8849c[i6];
    }

    public final String toString() {
        if (j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        int i6 = this.d;
        for (int i10 = 0; i10 < i6; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(g(i10));
            sb.append('=');
            Object objK = k(i10);
            if (objK != sb) {
                sb.append(objK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        j9.i.e(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }
}
