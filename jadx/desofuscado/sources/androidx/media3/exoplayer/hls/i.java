package androidx.media3.exoplayer.hls;

import androidx.media3.exoplayer.hls.HlsSampleStreamWrapper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2294a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2295b;

    public /* synthetic */ i(int i6, Object obj) {
        this.f2294a = i6;
        this.f2295b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2294a) {
            case 0:
                ((HlsSampleStreamWrapper) this.f2295b).maybeFinishPrepare();
                break;
            case 1:
                ((HlsSampleStreamWrapper) this.f2295b).onTracksEnded();
                break;
            default:
                ((HlsSampleStreamWrapper.Callback) this.f2295b).onPrepared();
                break;
        }
    }
}
