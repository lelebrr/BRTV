package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2216a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2217b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f2218c;
    public final /* synthetic */ long d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f2219e;

    public /* synthetic */ i(Object obj, String str, long j10, long j11, int i6) {
        this.f2216a = i6;
        this.f2219e = obj;
        this.f2217b = str;
        this.f2218c = j10;
        this.d = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2216a) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) this.f2219e).lambda$decoderInitialized$1(this.f2217b, this.f2218c, this.d);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) this.f2219e).lambda$decoderInitialized$1(this.f2217b, this.f2218c, this.d);
                break;
        }
    }
}
