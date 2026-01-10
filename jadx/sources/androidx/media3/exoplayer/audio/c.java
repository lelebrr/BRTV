package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2199a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f2200b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DecoderCounters f2201c;

    public /* synthetic */ c(AudioRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i6) {
        this.f2199a = i6;
        this.f2200b = eventDispatcher;
        this.f2201c = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2199a) {
            case 0:
                this.f2200b.lambda$enabled$0(this.f2201c);
                break;
            default:
                this.f2200b.lambda$disabled$6(this.f2201c);
                break;
        }
    }
}
