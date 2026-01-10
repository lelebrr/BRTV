package r3;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final long f9490a;

    /* renamed from: b, reason: collision with root package name */
    public int f9491b;

    public c(InputStream inputStream, long j10) {
        super(inputStream);
        this.f9490a = j10;
    }

    public final void a(int i6) throws IOException {
        if (i6 >= 0) {
            this.f9491b += i6;
            return;
        }
        long j10 = this.f9491b;
        long j11 = this.f9490a;
        if (j11 - j10 <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j11 + ", but read: " + this.f9491b);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f9490a - this.f9491b, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i6;
        i6 = super.read();
        a(i6 >= 0 ? 1 : -1);
        return i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i6, int i10) {
        int i11;
        i11 = super.read(bArr, i6, i10);
        a(i11);
        return i11;
    }
}
