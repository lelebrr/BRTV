package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import b7.e0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2405a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2406b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f2405a = i6;
        this.f2406b = obj;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2405a) {
            case 0:
                return DefaultPreloadManager.Builder.lambda$setLoadControl$5((LoadControl) this.f2406b);
            case 1:
                return DefaultPreloadManager.Builder.lambda$setRenderersFactory$4((RenderersFactory) this.f2406b);
            case 2:
                return DefaultPreloadManager.Builder.lambda$setBandwidthMeter$6((BandwidthMeter) this.f2406b);
            default:
                return DefaultPreloadManager.Builder.lambda$setMediaSourceFactory$3((MediaSource.Factory) this.f2406b);
        }
    }
}
