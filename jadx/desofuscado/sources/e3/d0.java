package e3;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f6496a;

    public d0(ByteBuffer byteBuffer) {
        this.f6496a = byteBuffer;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f6496a.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int i6, int i10) {
        if (j10 >= this.f6496a.limit()) {
            return -1;
        }
        this.f6496a.position((int) j10);
        int iMin = Math.min(i10, this.f6496a.remaining());
        this.f6496a.get(bArr, i6, iMin);
        return iMin;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
