package androidx.media3.exoplayer;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.MediaPeriodHolder;
import androidx.media3.exoplayer.StreamVolumeManager;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class v implements ListenerSet.Event, MediaPeriodHolder.Factory, BackgroundThreadStateHandler.StateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2438a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2439b;

    public /* synthetic */ v(int i6, Object obj) {
        this.f2438a = i6;
        this.f2439b = obj;
    }

    @Override // androidx.media3.exoplayer.MediaPeriodHolder.Factory
    public MediaPeriodHolder create(MediaPeriodInfo mediaPeriodInfo, long j10) {
        return ((ExoPlayerImplInternal) this.f2439b).createMediaPeriodHolder(mediaPeriodInfo, j10);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f2438a) {
            case 0:
                ((Player.Listener) obj).onMediaMetadataChanged((MediaMetadata) this.f2439b);
                break;
            case 1:
                ((Player.Listener) obj).onAudioAttributesChanged((AudioAttributes) this.f2439b);
                break;
            case 2:
                ((Player.Listener) obj).onTrackSelectionParametersChanged((TrackSelectionParameters) this.f2439b);
                break;
            case 3:
                ((Player.Listener) obj).onCues((CueGroup) this.f2439b);
                break;
            case 4:
                ((ExoPlayerImpl.ComponentListener) this.f2439b).lambda$onMetadata$4((Player.Listener) obj);
                break;
            case 5:
                ((Player.Listener) obj).onMetadata((Metadata) this.f2439b);
                break;
            case 6:
                ((Player.Listener) obj).onCues((List<Cue>) this.f2439b);
                break;
            case 7:
                ((Player.Listener) obj).onVideoSizeChanged((VideoSize) this.f2439b);
                break;
            default:
                ((Player.Listener) obj).onDeviceInfoChanged((DeviceInfo) this.f2439b);
                break;
        }
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void onStateChanged(Object obj, Object obj2) {
        ((StreamVolumeManager) this.f2439b).onStreamVolumeStateChanged((StreamVolumeManager.StreamVolumeState) obj, (StreamVolumeManager.StreamVolumeState) obj2);
    }
}
