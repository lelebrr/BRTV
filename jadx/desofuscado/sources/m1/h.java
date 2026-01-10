package m1;

import android.content.Context;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends f {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f8126c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar, Context context) {
        super(iVar, context);
        this.f8126c = iVar;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        i iVar = this.f8126c;
        MediaBrowserServiceCompat mediaBrowserServiceCompat = iVar.f;
        b bVar = mediaBrowserServiceCompat.f2034b;
        mediaBrowserServiceCompat.b();
        iVar.f.getClass();
    }
}
