package m1;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8138a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f8139b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8140c;
    public final /* synthetic */ ResultReceiver d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j7.c f8141e;

    public n(j7.c cVar, p pVar, String str, ResultReceiver resultReceiver) {
        this.f8141e = cVar;
        this.f8139b = pVar;
        this.f8140c = str;
        this.d = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8138a) {
            case 0:
                IBinder binder = this.f8139b.f8146a.getBinder();
                j7.c cVar = this.f8141e;
                if (((b) ((MediaBrowserServiceCompat) cVar.f7444b).d.get(binder)) != null) {
                    ((MediaBrowserServiceCompat) cVar.f7444b).getClass();
                    ResultReceiver resultReceiver = this.d;
                    if ((2 & 2) == 0) {
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("media_item", null);
                        resultReceiver.send(0, bundle);
                        break;
                    } else {
                        resultReceiver.send(-1, null);
                        break;
                    }
                } else {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f8140c);
                    break;
                }
            default:
                IBinder binder2 = this.f8139b.f8146a.getBinder();
                j7.c cVar2 = this.f8141e;
                if (((b) ((MediaBrowserServiceCompat) cVar2.f7444b).d.get(binder2)) != null) {
                    ((MediaBrowserServiceCompat) cVar2.f7444b).getClass();
                    this.d.send(-1, null);
                    break;
                } else {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f8140c);
                    break;
                }
        }
    }

    public n(j7.c cVar, p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f8141e = cVar;
        this.f8139b = pVar;
        this.f8140c = str;
        this.d = resultReceiver;
    }
}
