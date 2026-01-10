package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2305a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LoadControl f2306b;

    public /* synthetic */ m(LoadControl loadControl, int i6) {
        this.f2305a = i6;
        this.f2306b = loadControl;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2305a) {
            case 0:
                return ExoPlayer.Builder.lambda$setLoadControl$19(this.f2306b);
            default:
                return ExoPlayer.Builder.lambda$new$11(this.f2306b);
        }
    }
}
