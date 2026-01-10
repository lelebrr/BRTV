package m1;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8134a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f8135b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8136c;
    public final /* synthetic */ Bundle d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j7.c f8137e;
    public final /* synthetic */ Object f;

    public m(j7.c cVar, p pVar, String str, IBinder iBinder, Bundle bundle) {
        this.f8137e = cVar;
        this.f8135b = pVar;
        this.f8136c = str;
        this.f = iBinder;
        this.d = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8134a) {
            case 0:
                IBinder binder = this.f8135b.f8146a.getBinder();
                j7.c cVar = this.f8137e;
                b bVar = (b) ((MediaBrowserServiceCompat) cVar.f7444b).d.get(binder);
                String str = this.f8136c;
                if (bVar == null) {
                    Log.w("MBServiceCompat", "addSubscription for callback that isn't registered id=" + str);
                    return;
                }
                MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) cVar.f7444b;
                mediaBrowserServiceCompat.getClass();
                HashMap map = bVar.f8119e;
                List arrayList = (List) map.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    IBinder iBinder = (IBinder) this.f;
                    Bundle bundle = this.d;
                    if (!zHasNext) {
                        arrayList.add(new m0.b(iBinder, bundle));
                        map.put(str, arrayList);
                        if (bundle == null) {
                            mediaBrowserServiceCompat.b();
                        } else {
                            mediaBrowserServiceCompat.b();
                        }
                        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + bVar.f8116a + " id=" + str);
                    }
                    m0.b bVar2 = (m0.b) it.next();
                    if (iBinder == bVar2.f8111a && com.bumptech.glide.c.b(bundle, (Bundle) bVar2.f8112b)) {
                        return;
                    }
                }
                break;
            default:
                IBinder binder2 = this.f8135b.f8146a.getBinder();
                j7.c cVar2 = this.f8137e;
                if (((b) ((MediaBrowserServiceCompat) cVar2.f7444b).d.get(binder2)) != null) {
                    ((MediaBrowserServiceCompat) cVar2.f7444b).getClass();
                    ((ResultReceiver) this.f).send(-1, null);
                    return;
                }
                Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f8136c + ", extras=" + this.d);
                return;
        }
    }

    public m(j7.c cVar, p pVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f8137e = cVar;
        this.f8135b = pVar;
        this.f8136c = str;
        this.d = bundle;
        this.f = resultReceiver;
    }
}
