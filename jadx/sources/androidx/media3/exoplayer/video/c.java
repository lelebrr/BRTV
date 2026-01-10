package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.DefaultVideoSink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2442a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2443b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f2442a = i6;
        this.f2443b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2442a) {
            case 0:
                ((DefaultVideoSink.FrameRendererImpl) this.f2443b).lambda$renderFrame$1();
                break;
            case 1:
                ((DefaultVideoSink.FrameRendererImpl) this.f2443b).lambda$dropFrame$2();
                break;
            default:
                ((PlaybackVideoGraphWrapper) this.f2443b).lambda$flush$1();
                break;
        }
    }
}
