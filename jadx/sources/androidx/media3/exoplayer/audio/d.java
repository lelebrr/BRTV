package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2202a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f2203b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2204c;

    public /* synthetic */ d(Object obj, long j10, int i6) {
        this.f2202a = i6;
        this.f2204c = obj;
        this.f2203b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2202a) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) this.f2204c).lambda$positionAdvancing$3(this.f2203b);
                break;
            default:
                ((PreloadMediaSource) this.f2204c).lambda$preload$0(this.f2203b);
                break;
        }
    }
}
