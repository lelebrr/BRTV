package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2454a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher f2455b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f2456c;
    public final /* synthetic */ int d;

    public /* synthetic */ j(VideoRendererEventListener.EventDispatcher eventDispatcher, int i6, long j10) {
        this.f2455b = eventDispatcher;
        this.d = i6;
        this.f2456c = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2454a) {
            case 0:
                this.f2455b.lambda$droppedFrames$3(this.d, this.f2456c);
                break;
            default:
                this.f2455b.lambda$reportVideoFrameProcessingOffset$4(this.f2456c, this.d);
                break;
        }
    }

    public /* synthetic */ j(VideoRendererEventListener.EventDispatcher eventDispatcher, long j10, int i6) {
        this.f2455b = eventDispatcher;
        this.f2456c = j10;
        this.d = i6;
    }
}
