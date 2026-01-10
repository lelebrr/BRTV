package okio;

import j9.i;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class NioFileSystemFileHandle extends FileHandle {
    private final FileChannel fileChannel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NioFileSystemFileHandle(boolean z7, FileChannel fileChannel) {
        super(z7);
        i.f(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    @Override // okio.FileHandle
    public synchronized void protectedClose() {
        this.fileChannel.close();
    }

    @Override // okio.FileHandle
    public synchronized void protectedFlush() {
        this.fileChannel.force(true);
    }

    @Override // okio.FileHandle
    public synchronized int protectedRead(long j10, byte[] bArr, int i6, int i10) {
        i.f(bArr, "array");
        this.fileChannel.position(j10);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, i6, i10);
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            int i12 = this.fileChannel.read(byteBufferWrap);
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
                this.fileChannel.truncate(j10);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okio.FileHandle
    public synchronized long protectedSize() {
        return this.fileChannel.size();
    }

    @Override // okio.FileHandle
    public synchronized void protectedWrite(long j10, byte[] bArr, int i6, int i10) {
        i.f(bArr, "array");
        this.fileChannel.position(j10);
        this.fileChannel.write(ByteBuffer.wrap(bArr, i6, i10));
    }
}
