package androidx.media3.exoplayer.source.ads;

import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2371a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AdsMediaSource f2372b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AdsMediaSource.ComponentListener f2373c;

    public /* synthetic */ c(AdsMediaSource adsMediaSource, AdsMediaSource.ComponentListener componentListener, int i6) {
        this.f2371a = i6;
        this.f2372b = adsMediaSource;
        this.f2373c = componentListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2371a) {
            case 0:
                this.f2372b.lambda$prepareSourceInternal$0(this.f2373c);
                break;
            default:
                this.f2372b.lambda$releaseSourceInternal$1(this.f2373c);
                break;
        }
    }
}
