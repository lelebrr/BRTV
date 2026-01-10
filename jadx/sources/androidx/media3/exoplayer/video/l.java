package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2460a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f2461b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f2462c;

    public /* synthetic */ l(VideoRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i6) {
        this.f2460a = i6;
        this.f2461b = eventDispatcher;
        this.f2462c = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2460a) {
            case 0:
                this.f2461b.lambda$enabled$0(this.f2462c);
                break;
            default:
                this.f2461b.lambda$disabled$8(this.f2462c);
                break;
        }
    }
}
