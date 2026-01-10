package q1;

import android.media.MediaRouter2;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f9065a;

    /* renamed from: b, reason: collision with root package name */
    public final l f9066b;

    public m(String str, l lVar) {
        this.f9065a = str;
        this.f9066b = lVar;
    }

    @Override // q1.c0
    public final void g(int i6) throws RemoteException {
        l lVar;
        MediaRouter2.RoutingController routingController;
        Messenger messenger;
        String str = this.f9065a;
        if (str == null || (lVar = this.f9066b) == null || (routingController = lVar.f9045g) == null || routingController.isReleased() || (messenger = lVar.f9046h) == null) {
            return;
        }
        int andIncrement = lVar.f9050l.getAndIncrement();
        Message messageObtain = Message.obtain();
        messageObtain.what = 7;
        messageObtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i6);
        bundle.putString("routeId", str);
        messageObtain.setData(bundle);
        messageObtain.replyTo = lVar.f9047i;
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e5) {
            Log.e("MR2Provider", "Could not send control request to service.", e5);
        }
    }

    @Override // q1.c0
    public final void j(int i6) throws RemoteException {
        l lVar;
        MediaRouter2.RoutingController routingController;
        Messenger messenger;
        String str = this.f9065a;
        if (str == null || (lVar = this.f9066b) == null || (routingController = lVar.f9045g) == null || routingController.isReleased() || (messenger = lVar.f9046h) == null) {
            return;
        }
        int andIncrement = lVar.f9050l.getAndIncrement();
        Message messageObtain = Message.obtain();
        messageObtain.what = 8;
        messageObtain.arg1 = andIncrement;
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i6);
        bundle.putString("routeId", str);
        messageObtain.setData(bundle);
        messageObtain.replyTo = lVar.f9047i;
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e5) {
            Log.e("MR2Provider", "Could not send control request to service.", e5);
        }
    }
}
