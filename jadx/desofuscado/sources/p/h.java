package p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public int[] f8844a;

    /* renamed from: b, reason: collision with root package name */
    public int f8845b;

    /* renamed from: c, reason: collision with root package name */
    public int f8846c;
    public int d;

    public h() {
        int iHighestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
        this.d = iHighestOneBit - 1;
        this.f8844a = new int[iHighestOneBit];
    }

    public final void a(int i6) {
        int[] iArr = this.f8844a;
        int i10 = this.f8846c;
        iArr[i10] = i6;
        int i11 = this.d & (i10 + 1);
        this.f8846c = i11;
        int i12 = this.f8845b;
        if (i11 == i12) {
            int length = iArr.length;
            int i13 = length - i12;
            int i14 = length << 1;
            if (i14 < 0) {
                throw new RuntimeException("Max array capacity exceeded");
            }
            int[] iArr2 = new int[i14];
            x8.i.C(0, i12, length, iArr, iArr2);
            x8.i.C(i13, 0, this.f8845b, this.f8844a, iArr2);
            this.f8844a = iArr2;
            this.f8845b = 0;
            this.f8846c = length;
            this.d = i14 - 1;
        }
    }

    public final int b(int i6) {
        if (i6 < 0 || i6 >= c()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.f8844a[this.d & (this.f8845b + i6)];
    }

    public final int c() {
        return (this.f8846c - this.f8845b) & this.d;
    }
}
