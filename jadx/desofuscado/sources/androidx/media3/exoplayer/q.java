package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2345a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BandwidthMeter f2346b;

    public /* synthetic */ q(BandwidthMeter bandwidthMeter, int i6) {
        this.f2345a = i6;
        this.f2346b = bandwidthMeter;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2345a) {
            case 0:
                return ExoPlayer.Builder.lambda$setBandwidthMeter$20(this.f2346b);
            default:
                return ExoPlayer.Builder.lambda$new$12(this.f2346b);
        }
    }
}
