package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.MediaSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class p implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2339a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSource.Factory f2340b;

    public /* synthetic */ p(MediaSource.Factory factory, int i6) {
        this.f2339a = i6;
        this.f2340b = factory;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2339a) {
            case 0:
                return ExoPlayer.Builder.lambda$new$7(this.f2340b);
            case 1:
                return ExoPlayer.Builder.lambda$new$9(this.f2340b);
            case 2:
                return ExoPlayer.Builder.lambda$new$5(this.f2340b);
            default:
                return ExoPlayer.Builder.lambda$setMediaSourceFactory$17(this.f2340b);
        }
    }
}
