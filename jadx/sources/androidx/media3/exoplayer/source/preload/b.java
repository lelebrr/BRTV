package androidx.media3.exoplayer.source.preload;

import android.content.Context;
import androidx.media3.common.FlagSet;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.IterationFinishedEvent, TrackSelector.InvalidationListener, TrackSelector.Factory {
    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.Factory
    public TrackSelector createTrackSelector(Context context) {
        return new DefaultTrackSelector(context);
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        BasePreloadManager.lambda$new$0((PreloadManagerListener) obj, flagSet);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public /* synthetic */ void onRendererCapabilitiesChanged(Renderer renderer) {
        androidx.media3.exoplayer.trackselection.g.a(this, renderer);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        DefaultPreloadManager.lambda$new$0();
    }
}
