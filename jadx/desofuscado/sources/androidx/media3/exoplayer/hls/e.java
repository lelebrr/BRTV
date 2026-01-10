package androidx.media3.exoplayer.hls;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2284a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2285b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2286c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2287e;

    public /* synthetic */ e(Object obj, Object obj2, int i6, int i10, int i11) {
        this.f2284a = i11;
        this.f2287e = obj;
        this.f2285b = obj2;
        this.f2286c = i6;
        this.d = i10;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public final void accept(Object obj) {
        HlsInterstitialsAdsLoader.Listener listener = (HlsInterstitialsAdsLoader.Listener) obj;
        switch (this.f2284a) {
            case 0:
                listener.onAdCompleted((MediaItem) this.f2287e, this.f2285b, this.f2286c, this.d);
                break;
            default:
                HlsInterstitialsAdsLoader.lambda$handlePrepareComplete$2((AdsMediaSource) this.f2287e, this.f2285b, this.f2286c, this.d, listener);
                break;
        }
    }
}
