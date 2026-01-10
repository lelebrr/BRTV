package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2324a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RenderersFactory f2325b;

    public /* synthetic */ o(RenderersFactory renderersFactory, int i6) {
        this.f2324a = i6;
        this.f2325b = renderersFactory;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2324a) {
            case 0:
                return ExoPlayer.Builder.lambda$setRenderersFactory$16(this.f2325b);
            case 1:
                return ExoPlayer.Builder.lambda$new$6(this.f2325b);
            case 2:
                return ExoPlayer.Builder.lambda$new$2(this.f2325b);
            default:
                return ExoPlayer.Builder.lambda$new$8(this.f2325b);
        }
    }
}
