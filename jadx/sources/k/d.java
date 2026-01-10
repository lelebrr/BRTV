package k;

import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7550a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7551b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7552c;
    public final /* synthetic */ Object d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7553e;

    public /* synthetic */ d(Object obj, Object obj2, Object obj3, Object obj4, int i6) {
        this.f7550a = i6;
        this.f7553e = obj;
        this.f7551b = obj2;
        this.f7552c = obj3;
        this.d = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7550a) {
            case 0:
                e eVar = (e) this.f7551b;
                if (eVar != null) {
                    j7.c cVar = (j7.c) this.f7553e;
                    ((f) cVar.f7444b).f7597z = true;
                    eVar.f7572b.c(false);
                    ((f) cVar.f7444b).f7597z = false;
                }
                n nVar = (n) this.f7552c;
                if (nVar.isEnabled() && nVar.hasSubMenu()) {
                    ((l) this.d).q(nVar, null, 4);
                    break;
                }
                break;
            default:
                IBinder binder = ((m1.p) this.f7551b).f8146a.getBinder();
                j7.c cVar2 = (j7.c) this.f7553e;
                m1.b bVar = (m1.b) ((MediaBrowserServiceCompat) cVar2.f7444b).d.get(binder);
                String str = (String) this.f7552c;
                if (bVar != null) {
                    ((MediaBrowserServiceCompat) cVar2.f7444b).getClass();
                    HashMap map = bVar.f8119e;
                    IBinder iBinder = (IBinder) this.d;
                    boolean z7 = false;
                    if (iBinder != null) {
                        List list = (List) map.get(str);
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                if (iBinder == ((m0.b) it.next()).f8111a) {
                                    it.remove();
                                    z7 = true;
                                }
                            }
                            if (list.size() == 0) {
                                map.remove(str);
                            }
                        }
                    } else if (map.remove(str) != null) {
                        z7 = true;
                    }
                    if (!z7) {
                        Log.w("MBServiceCompat", "removeSubscription called for " + str + " which is not subscribed");
                        break;
                    }
                } else {
                    Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + str);
                    break;
                }
                break;
        }
    }
}
