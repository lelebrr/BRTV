package r3;

import java.io.FilterInputStream;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public int f9505a;

    public k(d dVar) {
        super(dVar);
        this.f9505a = Integer.MIN_VALUE;
    }

    public final long a(long j10) {
        int i6 = this.f9505a;
        if (i6 == 0) {
            return -1L;
        }
        return (i6 == Integer.MIN_VALUE || j10 <= ((long) i6)) ? j10 : i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i6 = this.f9505a;
        return i6 == Integer.MIN_VALUE ? super.available() : Math.min(i6, super.available());
    }

    public final void b(long j10) {
        int i6 = this.f9505a;
        if (i6 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f9505a = (int) (i6 - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i6) {
        super.mark(i6);
        this.f9505a = i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int i6 = super.read();
        b(1L);
        return i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f9505a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jA = a(j10);
        if (jA == -1) {
            return 0L;
        }
        long jSkip = super.skip(jA);
        b(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i6, int i10) throws IOException {
        int iA = (int) a(i10);
        if (iA == -1) {
            return -1;
        }
        int i11 = super.read(bArr, i6, iA);
        b(i11);
        return i11;
    }
}
