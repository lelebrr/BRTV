package androidx.media3.exoplayer.offline;

import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.trackselection.TrackSelector;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements TrackSelector.InvalidationListener {
    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public final /* synthetic */ void onRendererCapabilitiesChanged(Renderer renderer) {
        androidx.media3.exoplayer.trackselection.g.a(this, renderer);
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector.InvalidationListener
    public final void onTrackSelectionsInvalidated() {
        DownloadHelper.lambda$new$0();
    }
}
