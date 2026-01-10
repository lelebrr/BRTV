package okhttp3.internal.cache2;

import j9.i;
import java.io.IOException;
import java.nio.channels.FileChannel;
import okio.Buffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        i.f(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j10, Buffer buffer, long j11) throws IOException {
        i.f(buffer, "sink");
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j10, j11, buffer);
            j10 += jTransferTo;
            j11 -= jTransferTo;
        }
    }

    public final void write(long j10, Buffer buffer, long j11) throws IOException {
        i.f(buffer, "source");
        if (j11 < 0 || j11 > buffer.size()) {
            throw new IndexOutOfBoundsException();
        }
        long j12 = j10;
        long j13 = j11;
        while (j13 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(buffer, j12, j13);
            j12 += jTransferFrom;
            j13 -= jTransferFrom;
        }
    }
}
