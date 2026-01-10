package androidx.media3.exoplayer;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.SuitableOutputChecker;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d0 implements ListenerSet.Event, ListenerSet.IterationFinishedEvent, ExoPlayerImplInternal.PlaybackInfoUpdateListener, BackgroundThreadStateHandler.StateChangeListener, SuitableOutputChecker.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2236a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExoPlayerImpl f2237b;

    public /* synthetic */ d0(ExoPlayerImpl exoPlayerImpl, int i6) {
        this.f2236a = i6;
        this.f2237b = exoPlayerImpl;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f2236a) {
            case 0:
                this.f2237b.lambda$setPlaylistMetadata$8((Player.Listener) obj);
                break;
            default:
                this.f2237b.lambda$updateAvailableCommands$28((Player.Listener) obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
    public void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.f2237b.lambda$new$2(playbackInfoUpdate);
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker.Callback
    public void onSelectedOutputSuitabilityChanged(boolean z7) {
        this.f2237b.onSelectedOutputSuitabilityChanged(z7);
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void onStateChanged(Object obj, Object obj2) {
        this.f2237b.onAudioSessionIdChanged(((Integer) obj).intValue(), ((Integer) obj2).intValue());
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        this.f2237b.lambda$new$0((Player.Listener) obj, flagSet);
    }
}
