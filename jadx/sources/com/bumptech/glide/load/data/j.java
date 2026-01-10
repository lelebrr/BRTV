package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f3556c = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
    public static final int d = 31;

    /* renamed from: a, reason: collision with root package name */
    public final byte f3557a;

    /* renamed from: b, reason: collision with root package name */
    public int f3558b;

    public j(InputStream inputStream, int i6) {
        super(inputStream);
        if (i6 < -1 || i6 > 8) {
            throw new IllegalArgumentException(a.e.n(i6, "Cannot add invalid orientation: "));
        }
        this.f3557a = (byte) i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i6) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int i6;
        int i10 = this.f3558b;
        int i11 = (i10 < 2 || i10 > (i6 = d)) ? super.read() : i10 == i6 ? this.f3557a : f3556c[i10 - 2] & 255;
        if (i11 != -1) {
            this.f3558b++;
        }
        return i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = super.skip(j10);
        if (jSkip > 0) {
            this.f3558b = (int) (this.f3558b + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i6, int i10) throws IOException {
        int i11;
        int i12 = this.f3558b;
        int i13 = d;
        if (i12 > i13) {
            i11 = super.read(bArr, i6, i10);
        } else if (i12 == i13) {
            bArr[i6] = this.f3557a;
            i11 = 1;
        } else if (i12 < 2) {
            i11 = super.read(bArr, i6, 2 - i12);
        } else {
            int iMin = Math.min(i13 - i12, i10);
            System.arraycopy(f3556c, this.f3558b - 2, bArr, i6, iMin);
            i11 = iMin;
        }
        if (i11 > 0) {
            this.f3558b += i11;
        }
        return i11;
    }
}
