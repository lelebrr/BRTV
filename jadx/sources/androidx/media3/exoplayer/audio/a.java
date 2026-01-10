package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.MediaDrm;
import android.media.PlaybackParams;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* bridge */ /* synthetic */ AudioDeviceInfo g(Object obj) {
        return (AudioDeviceInfo) obj;
    }

    public static /* synthetic */ AudioTrack.Builder h() {
        return new AudioTrack.Builder();
    }

    public static /* bridge */ /* synthetic */ MediaDrm.KeyStatus n(Object obj) {
        return (MediaDrm.KeyStatus) obj;
    }

    public static /* synthetic */ PlaybackParams o() {
        return new PlaybackParams();
    }
}
