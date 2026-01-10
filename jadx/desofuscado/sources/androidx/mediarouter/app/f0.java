package androidx.mediarouter.app;

import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 extends MediaControllerCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q0 f2599a;

    public f0(q0 q0Var) {
        this.f2599a = q0Var;
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public final void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        MediaDescriptionCompat description = mediaMetadataCompat == null ? null : mediaMetadataCompat.getDescription();
        q0 q0Var = this.f2599a;
        q0Var.K = description;
        q0Var.j();
        q0Var.n();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat.Callback
    public final void onSessionDestroyed() {
        q0 q0Var = this.f2599a;
        MediaControllerCompat mediaControllerCompat = q0Var.I;
        if (mediaControllerCompat != null) {
            mediaControllerCompat.unregisterCallback(q0Var.J);
            q0Var.I = null;
        }
    }
}
