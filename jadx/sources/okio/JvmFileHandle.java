package okio;

import j9.i;
import java.io.RandomAccessFile;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class JvmFileHandle extends FileHandle {
    private final RandomAccessFile randomAccessFile;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z7, RandomAccessFile randomAccessFile) {
        super(z7);
        i.f(randomAccessFile, "randomAccessFile");
        this.randomAccessFile = randomAccessFile;
    }

    @Override // okio.FileHandle
    public synchronized void protectedClose() {
        this.randomAccessFile.close();
    }

    @Override // okio.FileHandle
    public synchronized void protectedFlush() {
        this.randomAccessFile.getFD().sync();
    }

    @Override // okio.FileHandle
    public synchronized int protectedRead(long j10, byte[] bArr, int i6, int i10) {
        i.f(bArr, "array");
        this.randomAccessFile.seek(j10);
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            int i12 = this.randomAccessFile.read(bArr, i6, i10 - i11);
            if (i12 != -1) {
                i11 += i12;
            } else if (i11 == 0) {
                return -1;
            }
        }
        return i11;
    }

    @Override // okio.FileHandle
    public synchronized void protectedResize(long j10) {
        try {
            long size = size();
            long j11 = j10 - size;
            if (j11 > 0) {
                int i6 = (int) j11;
                protectedWrite(size, new byte[i6], 0, i6);
            } else {
                this.randomAccessFile.setLength(j10);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okio.FileHandle
    public synchronized long protectedSize() {
        return this.randomAccessFile.length();
    }

    @Override // okio.FileHandle
    public synchronized void protectedWrite(long j10, byte[] bArr, int i6, int i10) {
        i.f(bArr, "array");
        this.randomAccessFile.seek(j10);
        this.randomAccessFile.write(bArr, i6, i10);
    }
}
