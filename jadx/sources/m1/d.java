package m1;

import android.content.Context;
import android.os.Bundle;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class d extends MediaBrowserService {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f8120a;

    public d(e eVar, Context context) {
        this.f8120a = eVar;
        attachBaseContext(context);
    }

    @Override // android.service.media.MediaBrowserService
    public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i6, Bundle bundle) {
        int i10;
        MediaSessionCompat.ensureClassLoader(bundle);
        Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        e eVar = this.f8120a;
        MediaBrowserServiceCompat mediaBrowserServiceCompat = eVar.d;
        if (bundle2 == null || bundle2.getInt("extra_client_version", 0) == 0) {
            i10 = -1;
        } else {
            bundle2.remove("extra_client_version");
            eVar.f8123c = new Messenger(mediaBrowserServiceCompat.f2036e);
            Bundle bundle3 = new Bundle();
            bundle3.putInt("extra_service_version", 2);
            bundle3.putBinder("extra_messenger", eVar.f8123c.getBinder());
            eVar.f8121a.add(bundle3);
            int i11 = bundle2.getInt("extra_calling_pid", -1);
            bundle2.remove("extra_calling_pid");
            i10 = i11;
        }
        b bVar = new b(eVar.d, str, i10, i6, null);
        mediaBrowserServiceCompat.getClass();
        if (mediaBrowserServiceCompat.a() == null) {
            return null;
        }
        if (eVar.f8123c == null) {
            throw null;
        }
        mediaBrowserServiceCompat.f2035c.add(bVar);
        throw null;
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result) {
        e eVar = this.f8120a;
        eVar.getClass();
        MediaBrowserServiceCompat mediaBrowserServiceCompat = eVar.d;
        b bVar = mediaBrowserServiceCompat.f2034b;
        mediaBrowserServiceCompat.b();
    }
}
