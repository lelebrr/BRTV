package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2413a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2414b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2415c;

    public /* synthetic */ j(Object obj, int i6, Object obj2) {
        this.f2413a = i6;
        this.f2414b = obj;
        this.f2415c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2413a) {
            case 0:
                ((PreloadMediaSource.PreloadMediaPeriodCallback) this.f2414b).lambda$onPrepared$0((MediaPeriod) this.f2415c);
                break;
            case 1:
                ((PreloadMediaSource.PreloadMediaPeriodCallback) this.f2414b).lambda$onContinueLoadingRequested$1((MediaPeriod) this.f2415c);
                break;
            default:
                ((PreloadMediaSource) this.f2414b).lambda$onChildSourceInfoRefreshed$2((Timeline) this.f2415c);
                break;
        }
    }
}
