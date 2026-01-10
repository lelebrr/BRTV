package p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f8841a;

    /* renamed from: b, reason: collision with root package name */
    public int f8842b;

    /* renamed from: c, reason: collision with root package name */
    public int f8843c;
    public Object[] d;

    public void a(j8.b bVar) {
        Object obj;
        Object obj2;
        Object[] objArr = this.d;
        int i6 = this.f8841a;
        int iHashCode = bVar.hashCode() * (-1640531527);
        int i10 = (iHashCode ^ (iHashCode >>> 16)) & i6;
        Object obj3 = objArr[i10];
        if (obj3 != null) {
            if (obj3.equals(bVar)) {
                return;
            }
            do {
                i10 = (i10 + 1) & i6;
                obj2 = objArr[i10];
                if (obj2 == null) {
                }
            } while (!obj2.equals(bVar));
            return;
        }
        objArr[i10] = bVar;
        int i11 = this.f8842b + 1;
        this.f8842b = i11;
        if (i11 < this.f8843c) {
            return;
        }
        Object[] objArr2 = this.d;
        int length = objArr2.length;
        int i12 = length << 1;
        int i13 = i12 - 1;
        Object[] objArr3 = new Object[i12];
        while (true) {
            int i14 = i11 - 1;
            if (i11 == 0) {
                this.f8841a = i13;
                this.f8843c = (int) (i12 * 0.75f);
                this.d = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i15 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i13;
            if (objArr3[i15] != null) {
                do {
                    i15 = (i15 + 1) & i13;
                } while (objArr3[i15] != null);
            }
            objArr3[i15] = objArr2[length];
            i11 = i14;
        }
    }

    public void b() {
        Object[] objArr = this.d;
        int length = objArr.length;
        int i6 = this.f8841a;
        int i10 = length - i6;
        int i11 = length << 1;
        if (i11 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i11];
        x8.i.D(0, i6, length, objArr, objArr2);
        x8.i.D(i10, 0, this.f8841a, this.d, objArr2);
        this.d = objArr2;
        this.f8841a = 0;
        this.f8842b = length;
        this.f8843c = i11 - 1;
    }

    public void c(Object[] objArr, int i6, int i10) {
        int i11;
        Object obj;
        this.f8842b--;
        while (true) {
            int i12 = i6 + 1;
            while (true) {
                i11 = i12 & i10;
                obj = objArr[i11];
                if (obj == null) {
                    objArr[i6] = null;
                    return;
                }
                int iHashCode = obj.hashCode() * (-1640531527);
                int i13 = (iHashCode ^ (iHashCode >>> 16)) & i10;
                if (i6 <= i11) {
                    if (i6 >= i13 || i13 > i11) {
                        break;
                    } else {
                        i12 = i11 + 1;
                    }
                } else if (i6 < i13 || i13 <= i11) {
                    i12 = i11 + 1;
                }
            }
            objArr[i6] = obj;
            i6 = i11;
        }
    }

    public void d(int i6) {
        if (i6 <= 0) {
            return;
        }
        if (i6 > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i10 = this.f8842b;
        int i11 = i6 < i10 ? i10 - i6 : 0;
        for (int i12 = i11; i12 < i10; i12++) {
            this.d[i12] = null;
        }
        int i13 = this.f8842b;
        int i14 = i13 - i11;
        int i15 = i6 - i14;
        this.f8842b = i13 - i14;
        if (i15 > 0) {
            int length = this.d.length;
            this.f8842b = length;
            int i16 = length - i15;
            for (int i17 = i16; i17 < length; i17++) {
                this.d[i17] = null;
            }
            this.f8842b = i16;
        }
    }

    public void e(int i6) {
        if (i6 <= 0) {
            return;
        }
        if (i6 > f()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = this.d.length;
        int i10 = this.f8841a;
        if (i6 < length - i10) {
            length = i10 + i6;
        }
        while (i10 < length) {
            this.d[i10] = null;
            i10++;
        }
        int i11 = this.f8841a;
        int i12 = length - i11;
        int i13 = i6 - i12;
        this.f8841a = this.f8843c & (i11 + i12);
        if (i13 > 0) {
            for (int i14 = 0; i14 < i13; i14++) {
                this.d[i14] = null;
            }
            this.f8841a = i13;
        }
    }

    public int f() {
        return (this.f8842b - this.f8841a) & this.f8843c;
    }
}
