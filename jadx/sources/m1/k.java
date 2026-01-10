package m1;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f8127a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f8128b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8129c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j7.c f8130e;

    public k(int i6, int i10, Bundle bundle, j7.c cVar, String str, p pVar) {
        this.f8130e = cVar;
        this.f8127a = pVar;
        this.f8128b = str;
        this.f8129c = i6;
        this.d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() throws RemoteException {
        p pVar = this.f8127a;
        Messenger messenger = pVar.f8146a;
        IBinder binder = messenger.getBinder();
        j7.c cVar = this.f8130e;
        ((MediaBrowserServiceCompat) cVar.f7444b).d.remove(binder);
        String str = this.f8128b;
        new b((MediaBrowserServiceCompat) cVar.f7444b, str, this.f8129c, this.d, pVar);
        MediaBrowserServiceCompat mediaBrowserServiceCompat = (MediaBrowserServiceCompat) cVar.f7444b;
        mediaBrowserServiceCompat.getClass();
        mediaBrowserServiceCompat.a();
        StringBuilder sbX = a.e.x("No root for client ", str, " from service ");
        sbX.append(k.class.getName());
        Log.i("MBServiceCompat", sbX.toString());
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = 2;
            messageObtain.setData(null);
            messenger.send(messageObtain);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=".concat(str));
        }
    }
}
