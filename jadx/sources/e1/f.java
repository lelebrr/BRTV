package e1;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends b {
    public f(byte[] bArr) {
        super(bArr);
        this.f6408a.mark(Integer.MAX_VALUE);
    }

    public final void b(long j10) throws IOException {
        int i6 = this.f6409b;
        if (i6 > j10) {
            this.f6409b = 0;
            this.f6408a.reset();
        } else {
            j10 -= i6;
        }
        a((int) j10);
    }

    public f(InputStream inputStream) {
        super(inputStream);
        if (inputStream.markSupported()) {
            this.f6408a.mark(Integer.MAX_VALUE);
            return;
        }
        throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
    }
}
