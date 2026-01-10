package d2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6034a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f6035b = 1073741824;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6036c;

    public i(InputStream inputStream) {
        this.f6036c = inputStream;
    }

    private final synchronized void a(int i6) {
        this.f6035b = ((ByteBuffer) this.f6036c).position();
    }

    private final synchronized void b() {
        int i6 = this.f6035b;
        if (i6 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        ((ByteBuffer) this.f6036c).position(i6);
    }

    @Override // java.io.InputStream
    public final int available() {
        switch (this.f6034a) {
            case 0:
                return this.f6035b;
            default:
                return ((ByteBuffer) this.f6036c).remaining();
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        switch (this.f6034a) {
            case 0:
                ((InputStream) this.f6036c).close();
                break;
            default:
                super.close();
                break;
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i6) {
        switch (this.f6034a) {
            case 1:
                a(i6);
                break;
            default:
                super.mark(i6);
                break;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        switch (this.f6034a) {
            case 1:
                return true;
            default:
                return super.markSupported();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        switch (this.f6034a) {
            case 0:
                int i6 = ((InputStream) this.f6036c).read(bArr);
                if (i6 == -1) {
                    this.f6035b = 0;
                }
                return i6;
            default:
                return super.read(bArr);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        switch (this.f6034a) {
            case 1:
                b();
                break;
            default:
                super.reset();
                break;
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        switch (this.f6034a) {
            case 0:
                return ((InputStream) this.f6036c).skip(j10);
            default:
                ByteBuffer byteBuffer = (ByteBuffer) this.f6036c;
                if (!byteBuffer.hasRemaining()) {
                    return -1L;
                }
                long jMin = Math.min(j10, byteBuffer.remaining());
                byteBuffer.position((int) (byteBuffer.position() + jMin));
                return jMin;
        }
    }

    public i(ByteBuffer byteBuffer) {
        this.f6036c = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        switch (this.f6034a) {
            case 0:
                int i6 = ((InputStream) this.f6036c).read();
                if (i6 == -1) {
                    this.f6035b = 0;
                }
                return i6;
            default:
                ByteBuffer byteBuffer = (ByteBuffer) this.f6036c;
                if (byteBuffer.hasRemaining()) {
                    return byteBuffer.get() & 255;
                }
                return -1;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i6, int i10) throws IOException {
        switch (this.f6034a) {
            case 0:
                int i11 = ((InputStream) this.f6036c).read(bArr, i6, i10);
                if (i11 == -1) {
                    this.f6035b = 0;
                }
                return i11;
            default:
                ByteBuffer byteBuffer = (ByteBuffer) this.f6036c;
                if (!byteBuffer.hasRemaining()) {
                    return -1;
                }
                int iMin = Math.min(i10, byteBuffer.remaining());
                byteBuffer.get(bArr, i6, iMin);
                return iMin;
        }
    }
}
