package q1;

import android.support.v4.media.session.MediaSessionCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final MediaSessionCompat f8953a;

    /* renamed from: b, reason: collision with root package name */
    public d f8954b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f8955c;

    public e(h hVar, MediaSessionCompat mediaSessionCompat) {
        this.f8955c = hVar;
        this.f8953a = mediaSessionCompat;
    }

    public final void a() {
        MediaSessionCompat mediaSessionCompat = this.f8953a;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.setPlaybackToLocal(this.f8955c.f8997n.d);
            this.f8954b = null;
        }
    }
}
