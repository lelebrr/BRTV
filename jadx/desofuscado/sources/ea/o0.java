package ea;

import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 implements TransferListener {

    /* renamed from: a, reason: collision with root package name */
    public long f6719a;

    /* renamed from: b, reason: collision with root package name */
    public long f6720b;

    /* renamed from: c, reason: collision with root package name */
    public long f6721c;

    @Override // androidx.media3.datasource.TransferListener
    public final void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z7, int i6) {
        this.f6719a += i6;
    }

    @Override // androidx.media3.datasource.TransferListener
    public final void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z7) {
    }

    @Override // androidx.media3.datasource.TransferListener
    public final void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z7) {
    }

    @Override // androidx.media3.datasource.TransferListener
    public final void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z7) {
    }
}
