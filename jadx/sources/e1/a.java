package e1;

import android.media.MediaDataSource;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends MediaDataSource {

    /* renamed from: a, reason: collision with root package name */
    public long f6406a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f6407b;

    public a(f fVar) {
        this.f6407b = fVar;
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j10, byte[] bArr, int i6, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        if (j10 < 0) {
            return -1;
        }
        try {
            long j11 = this.f6406a;
            if (j11 != j10) {
                if (j11 >= 0 && j10 >= j11 + this.f6407b.f6408a.available()) {
                    return -1;
                }
                this.f6407b.b(j10);
                this.f6406a = j10;
            }
            if (i10 > this.f6407b.f6408a.available()) {
                i10 = this.f6407b.f6408a.available();
            }
            int i11 = this.f6407b.read(bArr, i6, i10);
            if (i11 >= 0) {
                this.f6406a += i11;
                return i11;
            }
        } catch (IOException unused) {
        }
        this.f6406a = -1L;
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
