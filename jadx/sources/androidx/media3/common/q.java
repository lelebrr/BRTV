package androidx.media3.common;

import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.Size;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class q implements b7.e0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2069a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SimpleBasePlayer.State f2070b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2071c;

    public /* synthetic */ q(SimpleBasePlayer.State state, Object obj, int i6) {
        this.f2069a = i6;
        this.f2070b = state;
        this.f2071c = obj;
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f2069a) {
            case 0:
                return SimpleBasePlayer.lambda$setVideoTextureView$20(this.f2070b, (Size) this.f2071c);
            case 1:
                return SimpleBasePlayer.lambda$setPlaylistMetadata$15(this.f2070b, (MediaMetadata) this.f2071c);
            case 2:
                return SimpleBasePlayer.lambda$setVideoSurfaceHolder$18(this.f2070b, (SurfaceHolder) this.f2071c);
            case 3:
                return SimpleBasePlayer.lambda$setVideoSurfaceView$19(this.f2070b, (SurfaceView) this.f2071c);
            case 4:
                return SimpleBasePlayer.lambda$setAudioAttributes$30(this.f2070b, (AudioAttributes) this.f2071c);
            case 5:
                return ((SimpleBasePlayer) this.f2071c).lambda$stop$12(this.f2070b);
            case 6:
                return SimpleBasePlayer.lambda$setPlaybackParameters$11(this.f2070b, (PlaybackParameters) this.f2071c);
            default:
                return SimpleBasePlayer.lambda$setTrackSelectionParameters$14(this.f2070b, (TrackSelectionParameters) this.f2071c);
        }
    }

    public /* synthetic */ q(SimpleBasePlayer simpleBasePlayer, SimpleBasePlayer.State state) {
        this.f2069a = 5;
        this.f2071c = simpleBasePlayer;
        this.f2070b = state;
    }
}
