package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoSink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2451a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlaybackVideoGraphWrapper.InputVideoSink f2452b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoSink.Listener f2453c;

    public /* synthetic */ g(PlaybackVideoGraphWrapper.InputVideoSink inputVideoSink, VideoSink.Listener listener, int i6) {
        this.f2451a = i6;
        this.f2452b = inputVideoSink;
        this.f2453c = listener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2451a) {
            case 0:
                this.f2452b.lambda$onFirstFrameRendered$0(this.f2453c);
                break;
            default:
                this.f2452b.lambda$onFrameDropped$1(this.f2453c);
                break;
        }
    }
}
