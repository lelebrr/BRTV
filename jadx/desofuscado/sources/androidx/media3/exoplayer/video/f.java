package androidx.media3.exoplayer.video;

import androidx.media3.common.Format;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.VideoSink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2448a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2449b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2450c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f(Object obj, Object obj2, Object obj3, int i6) {
        this.f2448a = i6;
        this.f2449b = obj;
        this.f2450c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2448a) {
            case 0:
                ((PlaybackVideoGraphWrapper.InputVideoSink) this.f2449b).lambda$onVideoSizeChanged$2((VideoSink.Listener) this.f2450c, (VideoSize) this.d);
                break;
            case 1:
                ((PlaybackVideoGraphWrapper.InputVideoSink) this.f2449b).lambda$onError$3((VideoSink.Listener) this.f2450c, (VideoFrameProcessingException) this.d);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f2449b).lambda$inputFormatChanged$2((Format) this.f2450c, (DecoderReuseEvaluation) this.d);
                break;
        }
    }
}
