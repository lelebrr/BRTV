package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class IcyDataSource implements DataSource {
    private int bytesUntilMetadata;
    private final Listener listener;
    private final int metadataIntervalBytes;
    private final byte[] metadataLengthByteHolder;
    private final DataSource upstream;

    /* compiled from: MyApplication */
    public interface Listener {
        void onIcyMetadata(ParsableByteArray parsableByteArray);
    }

    public IcyDataSource(DataSource dataSource, int i6, Listener listener) {
        Assertions.checkArgument(i6 > 0);
        this.upstream = dataSource;
        this.metadataIntervalBytes = i6;
        this.listener = listener;
        this.metadataLengthByteHolder = new byte[1];
        this.bytesUntilMetadata = i6;
    }

    private boolean readMetadata() throws IOException {
        if (this.upstream.read(this.metadataLengthByteHolder, 0, 1) == -1) {
            return false;
        }
        int i6 = (this.metadataLengthByteHolder[0] & 255) << 4;
        if (i6 == 0) {
            return true;
        }
        byte[] bArr = new byte[i6];
        int i10 = i6;
        int i11 = 0;
        while (i10 > 0) {
            int i12 = this.upstream.read(bArr, i11, i10);
            if (i12 == -1) {
                return false;
            }
            i11 += i12;
            i10 -= i12;
        }
        while (i6 > 0 && bArr[i6 - 1] == 0) {
            i6--;
        }
        if (i6 > 0) {
            this.listener.onIcyMetadata(new ParsableByteArray(bArr, i6));
        }
        return true;
    }

    @Override // androidx.media3.datasource.DataSource
    public void addTransferListener(TransferListener transferListener) {
        Assertions.checkNotNull(transferListener);
        this.upstream.addTransferListener(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i6, int i10) throws IOException {
        if (this.bytesUntilMetadata == 0) {
            if (!readMetadata()) {
                return -1;
            }
            this.bytesUntilMetadata = this.metadataIntervalBytes;
        }
        int i11 = this.upstream.read(bArr, i6, Math.min(this.bytesUntilMetadata, i10));
        if (i11 != -1) {
            this.bytesUntilMetadata -= i11;
        }
        return i11;
    }
}
