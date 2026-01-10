package androidx.media3.exoplayer.source.preload;

import androidx.media3.exoplayer.source.MediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2402a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BasePreloadManager f2403b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSource f2404c;

    public /* synthetic */ a(BasePreloadManager basePreloadManager, MediaSource mediaSource, int i6) {
        this.f2402a = i6;
        this.f2403b = basePreloadManager;
        this.f2404c = mediaSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2402a) {
            case 0:
                this.f2403b.lambda$onPreloadCompleted$2(this.f2404c);
                break;
            default:
                this.f2403b.lambda$onPreloadSkipped$5(this.f2404c);
                break;
        }
    }
}
