package m1;

import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8131a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f8132b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j7.c f8133c;

    public /* synthetic */ l(j7.c cVar, p pVar, int i6) {
        this.f8131a = i6;
        this.f8133c = cVar;
        this.f8132b = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f8131a) {
            case 0:
                b bVar = (b) ((MediaBrowserServiceCompat) this.f8133c.f7444b).d.remove(this.f8132b.f8146a.getBinder());
                if (bVar != null) {
                    bVar.d.f8146a.getBinder().unlinkToDeath(bVar, 0);
                    break;
                }
                break;
            default:
                IBinder binder = this.f8132b.f8146a.getBinder();
                b bVar2 = (b) ((MediaBrowserServiceCompat) this.f8133c.f7444b).d.remove(binder);
                if (bVar2 != null) {
                    binder.unlinkToDeath(bVar2, 0);
                    break;
                }
                break;
        }
    }
}
