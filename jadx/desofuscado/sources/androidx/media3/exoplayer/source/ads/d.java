package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import d7.z1;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2374a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2375b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2376c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d(Object obj, Object obj2, Object obj3, int i6) {
        this.f2374a = i6;
        this.f2375b = obj;
        this.f2376c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2374a) {
            case 0:
                ((AdsMediaSource.AdPrepareListener) this.f2375b).lambda$onPrepareError$1((MediaSource.MediaPeriodId) this.f2376c, (IOException) this.d);
                break;
            default:
                ((ServerSideAdInsertionMediaSource) this.f2375b).lambda$setAdPlaybackStates$0((z1) this.f2376c, (Timeline) this.d);
                break;
        }
    }
}
