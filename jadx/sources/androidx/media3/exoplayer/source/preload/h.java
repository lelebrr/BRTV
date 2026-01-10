package androidx.media3.exoplayer.source.preload;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2411a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PreloadMediaSource f2412b;

    public /* synthetic */ h(PreloadMediaSource preloadMediaSource, int i6) {
        this.f2411a = i6;
        this.f2412b = preloadMediaSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2411a) {
            case 0:
                this.f2412b.lambda$releasePreloadMediaSource$3();
                break;
            case 1:
                this.f2412b.lambda$clear$1();
                break;
            default:
                this.f2412b.checkForPreloadError();
                break;
        }
    }
}
