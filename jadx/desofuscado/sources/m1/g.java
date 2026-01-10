package m1;

import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class g extends e {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaBrowserServiceCompat f8125e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
        super(mediaBrowserServiceCompat);
        this.f8125e = mediaBrowserServiceCompat;
    }

    @Override // m1.e, m1.c
    public void a() {
        f fVar = new f(this, this.f8125e);
        this.f8122b = fVar;
        fVar.onCreate();
    }
}
