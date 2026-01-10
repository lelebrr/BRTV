package androidx.media3.exoplayer.hls;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2288a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2289b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2290c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2291e;
    public final /* synthetic */ Object f;

    public /* synthetic */ f(Object obj, Object obj2, int i6, int i10, Object obj3, int i11) {
        this.f2288a = i11;
        this.f2291e = obj;
        this.f2289b = obj2;
        this.f2290c = i6;
        this.d = i10;
        this.f = obj3;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public final void accept(Object obj) {
        switch (this.f2288a) {
            case 0:
                ((HlsInterstitialsAdsLoader.Listener) obj).onMetadata((MediaItem) this.f2291e, this.f2289b, this.f2290c, this.d, (Metadata) this.f);
                break;
            default:
                int i6 = this.f2290c;
                int i10 = this.d;
                HlsInterstitialsAdsLoader.lambda$handlePrepareError$3((AdsMediaSource) this.f2291e, this.f2289b, i6, i10, (IOException) this.f, (HlsInterstitialsAdsLoader.Listener) obj);
                break;
        }
    }
}
