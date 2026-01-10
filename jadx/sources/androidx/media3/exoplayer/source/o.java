package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import b7.e0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2398a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2399b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2400c;

    public /* synthetic */ o(Object obj, int i6, Object obj2) {
        this.f2398a = i6;
        this.f2399b = obj;
        this.f2400c = obj2;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2398a) {
            case 0:
                return ProgressiveMediaSource.Factory.lambda$setDownloadExecutor$1((e0) this.f2399b, (Consumer) this.f2400c);
            case 1:
                return SingleSampleMediaSource.Factory.lambda$setDownloadExecutor$0((e0) this.f2399b, (Consumer) this.f2400c);
            default:
                return ((DefaultMediaSourceFactory.DelegateFactoryLoader) this.f2399b).lambda$loadSupplier$4((DataSource.Factory) this.f2400c);
        }
    }
}
