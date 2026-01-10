package m1;

import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class i extends g {
    public final /* synthetic */ MediaBrowserServiceCompat f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.f = mediaBrowserServiceCompat;
    }

    @Override // m1.g, m1.e, m1.c
    public final void a() {
        h hVar = new h(this, this.f);
        this.f8122b = hVar;
        hVar.onCreate();
    }
}
