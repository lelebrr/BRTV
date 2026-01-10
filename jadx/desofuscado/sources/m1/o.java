package m1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f8142a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8143b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f8144c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j7.c f8145e;

    public o(int i6, int i10, Bundle bundle, j7.c cVar, String str, p pVar) {
        this.f8145e = cVar;
        this.f8142a = pVar;
        this.f8143b = i6;
        this.f8144c = str;
        this.d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() throws RemoteException {
        b bVar;
        p pVar = this.f8142a;
        IBinder binder = pVar.f8146a.getBinder();
        j7.c cVar = this.f8145e;
        ((MediaBrowserServiceCompat) cVar.f7444b).d.remove(binder);
        MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) cVar.f7444b;
        Iterator it = mediaBrowserServiceCompat.f2035c.iterator();
        while (true) {
            bVar = null;
            if (!it.hasNext()) {
                break;
            }
            b bVar2 = (b) it.next();
            if (bVar2.f8118c == this.f8143b) {
                if (TextUtils.isEmpty(this.f8144c) || this.d <= 0) {
                    bVar = new b((MediaBrowserServiceCompat) cVar.f7444b, bVar2.f8116a, bVar2.f8117b, bVar2.f8118c, pVar);
                }
                it.remove();
            }
        }
        if (bVar == null) {
            bVar = new b((MediaBrowserServiceCompat) cVar.f7444b, this.f8144c, this.d, this.f8143b, pVar);
        }
        mediaBrowserServiceCompat.d.put(binder, bVar);
        try {
            binder.linkToDeath(bVar, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
