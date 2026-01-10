package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2211a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f2212b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f2213c;

    public /* synthetic */ g(AudioRendererEventListener.EventDispatcher eventDispatcher, Exception exc, int i6) {
        this.f2211a = i6;
        this.f2212b = eventDispatcher;
        this.f2213c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2211a) {
            case 0:
                this.f2212b.lambda$audioCodecError$9(this.f2213c);
                break;
            default:
                this.f2212b.lambda$audioSinkError$8(this.f2213c);
                break;
        }
    }
}
