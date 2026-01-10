package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2378b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2379c;

    public /* synthetic */ e(Object obj, int i6, Object obj2) {
        this.f2377a = i6;
        this.f2378b = obj;
        this.f2379c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2377a) {
            case 0:
                ((AdsMediaSource.AdPrepareListener) this.f2378b).lambda$onPrepareComplete$0((MediaSource.MediaPeriodId) this.f2379c);
                break;
            case 1:
                ((AdsMediaSource.ComponentListener) this.f2378b).lambda$onAdPlaybackState$0((AdPlaybackState) this.f2379c);
                break;
            default:
                ((AdsMediaSource) this.f2378b).lambda$onChildSourceInfoRefreshed$2((Timeline) this.f2379c);
                break;
        }
    }
}
