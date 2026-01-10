package androidx.media3.exoplayer;

import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.trackselection.TrackSelector;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class s implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2362a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TrackSelector f2363b;

    public /* synthetic */ s(TrackSelector trackSelector, int i6) {
        this.f2362a = i6;
        this.f2363b = trackSelector;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2362a) {
            case 0:
                return ExoPlayer.Builder.lambda$new$10(this.f2363b);
            default:
                return ExoPlayer.Builder.lambda$setTrackSelector$18(this.f2363b);
        }
    }
}
