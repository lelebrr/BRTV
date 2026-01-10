package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v6 extends w6 {
    public final int d;

    public v6(byte[] bArr) {
        super(bArr);
        w6.f(bArr.length);
        this.d = 47;
    }

    @Override // com.google.android.gms.internal.cast.w6
    public final byte c(int i6) {
        int i10 = this.d;
        if (((i10 - (i6 + 1)) | i6) >= 0) {
            return this.f4453b[i6];
        }
        if (i6 < 0) {
            throw new ArrayIndexOutOfBoundsException(a.e.n(i6, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(a.e.m(i6, i10, "Index > length: ", ", "));
    }

    @Override // com.google.android.gms.internal.cast.w6
    public final byte d(int i6) {
        return this.f4453b[i6];
    }

    @Override // com.google.android.gms.internal.cast.w6
    public final int e() {
        return this.d;
    }
}
