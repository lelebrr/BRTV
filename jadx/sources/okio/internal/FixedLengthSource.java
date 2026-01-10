package okio.internal;

import j9.i;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class FixedLengthSource extends ForwardingSource {
    private long bytesReceived;
    private final long size;
    private final boolean truncate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(Source source, long j10, boolean z7) {
        super(source);
        i.f(source, "delegate");
        this.size = j10;
        this.truncate = z7;
    }

    private final void truncateToSize(Buffer buffer, long j10) throws IOException {
        Buffer buffer2 = new Buffer();
        buffer2.writeAll(buffer);
        buffer.write(buffer2, j10);
        buffer2.clear();
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        i.f(buffer, "sink");
        long j11 = this.bytesReceived;
        long j12 = this.size;
        if (j11 > j12) {
            j10 = 0;
        } else if (this.truncate) {
            long j13 = j12 - j11;
            if (j13 == 0) {
                return -1L;
            }
            j10 = Math.min(j10, j13);
        }
        long j14 = super.read(buffer, j10);
        if (j14 != -1) {
            this.bytesReceived += j14;
        }
        long j15 = this.bytesReceived;
        long j16 = this.size;
        if ((j15 >= j16 || j14 != -1) && j15 <= j16) {
            return j14;
        }
        if (j14 > 0 && j15 > j16) {
            truncateToSize(buffer, buffer.size() - (this.bytesReceived - this.size));
        }
        throw new IOException("expected " + this.size + " bytes but got " + this.bytesReceived);
    }
}
