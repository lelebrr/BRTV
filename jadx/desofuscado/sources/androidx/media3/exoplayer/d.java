package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2234a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f2235b;

    public /* synthetic */ d(Context context, int i6) {
        this.f2234a = i6;
        this.f2235b = context;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2234a) {
            case 0:
                return AudioManagerCompat.getAudioManager(this.f2235b);
            case 1:
                return ExoPlayer.Builder.lambda$new$0(this.f2235b);
            case 2:
                return ExoPlayer.Builder.lambda$new$1(this.f2235b);
            case 3:
                return ExoPlayer.Builder.lambda$new$3(this.f2235b);
            case 4:
                return ExoPlayer.Builder.lambda$new$14(this.f2235b);
            case 5:
                return DefaultBandwidthMeter.getSingletonInstance(this.f2235b);
            default:
                return ExoPlayer.Builder.lambda$new$4(this.f2235b);
        }
    }
}
