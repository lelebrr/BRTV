package androidx.media3.exoplayer.audio;

import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2208a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher f2209b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioSink.AudioTrackConfig f2210c;

    public /* synthetic */ f(AudioRendererEventListener.EventDispatcher eventDispatcher, AudioSink.AudioTrackConfig audioTrackConfig, int i6) {
        this.f2208a = i6;
        this.f2209b = eventDispatcher;
        this.f2210c = audioTrackConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2208a) {
            case 0:
                this.f2209b.lambda$audioTrackInitialized$10(this.f2210c);
                break;
            default:
                this.f2209b.lambda$audioTrackReleased$11(this.f2210c);
                break;
        }
    }
}
