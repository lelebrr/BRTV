package androidx.mediarouter.app;

import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends MediaControllerCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f2679a;

    public r(u uVar) {
        this.f2679a = uVar;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        MediaDescriptionCompat description = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
        u uVar = this.f2679a;
        uVar.U = description;
        uVar.t();
        uVar.s(false);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public final void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
        u uVar = this.f2679a;
        uVar.T = playbackStateCompat;
        uVar.s(false);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public final void onSessionDestroyed() {
        u uVar = this.f2679a;
        MediaControllerCompat mediaControllerCompat = uVar.R;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(uVar.S);
            uVar.R = null;
        }
    }
}
