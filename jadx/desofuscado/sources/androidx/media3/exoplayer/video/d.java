package androidx.media3.exoplayer.video;

import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.video.DefaultVideoSink;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2444a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2445b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2446c;

    public /* synthetic */ d(Object obj, int i6, Object obj2) {
        this.f2444a = i6;
        this.f2446c = obj;
        this.f2445b = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2444a) {
            case 0:
                ((DefaultVideoSink.FrameRendererImpl) this.f2446c).lambda$onVideoSizeChanged$0((VideoSize) this.f2445b);
                break;
            case 1:
                ((VideoRendererEventListener.EventDispatcher) this.f2446c).lambda$videoSizeChanged$5((VideoSize) this.f2445b);
                break;
            case 2:
                ((VideoRendererEventListener.EventDispatcher) this.f2446c).lambda$videoCodecError$9((Exception) this.f2445b);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f2446c).lambda$decoderReleased$7((String) this.f2445b);
                break;
        }
    }
}
