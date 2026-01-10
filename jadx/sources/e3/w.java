package e3;

import androidx.media3.common.C;
import com.google.android.gms.internal.cast.y6;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public volatile byte[] f6538a;

    /* renamed from: b, reason: collision with root package name */
    public int f6539b;

    /* renamed from: c, reason: collision with root package name */
    public int f6540c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f6541e;
    public final y2.f f;

    public w(InputStream inputStream, y2.f fVar) {
        super(inputStream);
        this.d = -1;
        this.f = fVar;
        this.f6538a = (byte[]) fVar.d(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
    }

    public static void c() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i6 = this.d;
        if (i6 != -1) {
            int i10 = this.f6541e - i6;
            int i11 = this.f6540c;
            if (i10 < i11) {
                if (i6 == 0 && i11 > bArr.length && this.f6539b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i11) {
                        i11 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f.d(i11, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f6538a = bArr2;
                    this.f.h(bArr);
                    bArr = bArr2;
                } else if (i6 > 0) {
                    System.arraycopy(bArr, i6, bArr, 0, bArr.length - i6);
                }
                int i12 = this.f6541e - this.d;
                this.f6541e = i12;
                this.d = 0;
                this.f6539b = 0;
                int i13 = inputStream.read(bArr, i12, bArr.length - i12);
                int i14 = this.f6541e;
                if (i13 > 0) {
                    i14 += i13;
                }
                this.f6539b = i14;
                return i13;
            }
        }
        int i15 = inputStream.read(bArr);
        if (i15 > 0) {
            this.d = -1;
            this.f6541e = 0;
            this.f6539b = i15;
        }
        return i15;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f6538a == null || inputStream == null) {
            c();
            throw null;
        }
        return (this.f6539b - this.f6541e) + inputStream.available();
    }

    public final synchronized void b() {
        if (this.f6538a != null) {
            this.f.h(this.f6538a);
            this.f6538a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f6538a != null) {
            this.f.h(this.f6538a);
            this.f6538a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i6) {
        this.f6540c = Math.max(this.f6540c, i6);
        this.d = this.f6541e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f6538a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            c();
            throw null;
        }
        if (this.f6541e >= this.f6539b && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f6538a && (bArr = this.f6538a) == null) {
            c();
            throw null;
        }
        int i6 = this.f6539b;
        int i10 = this.f6541e;
        if (i6 - i10 <= 0) {
            return -1;
        }
        this.f6541e = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f6538a == null) {
            throw new IOException("Stream is closed");
        }
        int i6 = this.d;
        if (-1 == i6) {
            throw new y6("Mark has been invalidated, pos: " + this.f6541e + " markLimit: " + this.f6540c);
        }
        this.f6541e = i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f6538a;
        if (bArr == null) {
            c();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            c();
            throw null;
        }
        int i6 = this.f6539b;
        int i10 = this.f6541e;
        if (i6 - i10 >= j10) {
            this.f6541e = (int) (i10 + j10);
            return j10;
        }
        long j11 = i6 - i10;
        this.f6541e = i6;
        if (this.d == -1 || j10 > this.f6540c) {
            long jSkip = inputStream.skip(j10 - j11);
            if (jSkip > 0) {
                this.d = -1;
            }
            return j11 + jSkip;
        }
        if (a(inputStream, bArr) == -1) {
            return j11;
        }
        int i11 = this.f6539b;
        int i12 = this.f6541e;
        if (i11 - i12 >= j10 - j11) {
            this.f6541e = (int) ((i12 + j10) - j11);
            return j10;
        }
        long j12 = (j11 + i11) - i12;
        this.f6541e = i11;
        return j12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i6, int i10) {
        int i11;
        int i12;
        byte[] bArr2 = this.f6538a;
        if (bArr2 == null) {
            c();
            throw null;
        }
        if (i10 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i13 = this.f6541e;
            int i14 = this.f6539b;
            if (i13 < i14) {
                int i15 = i14 - i13;
                if (i15 >= i10) {
                    i15 = i10;
                }
                System.arraycopy(bArr2, i13, bArr, i6, i15);
                this.f6541e += i15;
                if (i15 == i10 || inputStream.available() == 0) {
                    return i15;
                }
                i6 += i15;
                i11 = i10 - i15;
            } else {
                i11 = i10;
            }
            while (true) {
                if (this.d == -1 && i11 >= bArr2.length) {
                    i12 = inputStream.read(bArr, i6, i11);
                    if (i12 == -1) {
                        return i11 != i10 ? i10 - i11 : -1;
                    }
                } else {
                    if (a(inputStream, bArr2) == -1) {
                        return i11 != i10 ? i10 - i11 : -1;
                    }
                    if (bArr2 != this.f6538a && (bArr2 = this.f6538a) == null) {
                        c();
                        throw null;
                    }
                    int i16 = this.f6539b;
                    int i17 = this.f6541e;
                    i12 = i16 - i17;
                    if (i12 >= i11) {
                        i12 = i11;
                    }
                    System.arraycopy(bArr2, i17, bArr, i6, i12);
                    this.f6541e += i12;
                }
                i11 -= i12;
                if (i11 == 0) {
                    return i10;
                }
                if (inputStream.available() == 0) {
                    return i10 - i11;
                }
                i6 += i12;
            }
        } else {
            c();
            throw null;
        }
    }
}
