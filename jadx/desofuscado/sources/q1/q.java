package q1;

import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Messenger f9109a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9110b;

    public q(String str, Intent intent, Messenger messenger, int i6) {
        this.f9109a = messenger;
        this.f9110b = i6;
    }

    public static void c(Messenger messenger, int i6, int i10, Bundle bundle, Bundle bundle2) throws RemoteException {
        Message messageObtain = Message.obtain();
        messageObtain.what = i6;
        messageObtain.arg1 = i10;
        messageObtain.arg2 = 0;
        messageObtain.obj = bundle;
        messageObtain.setData(bundle2);
        try {
            messenger.send(messageObtain);
        } catch (DeadObjectException unused) {
        } catch (RemoteException e5) {
            Log.e("MR2ProviderService", "Could not send message to the client.", e5);
        }
    }

    @Override // q1.o0
    public final void a(String str, Bundle bundle) throws RemoteException {
        int i6 = v.f;
        Messenger messenger = this.f9109a;
        int i10 = this.f9110b;
        if (str == null) {
            c(messenger, 4, i10, bundle, null);
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("error", str);
        c(messenger, 4, i10, bundle, bundle2);
    }

    @Override // q1.o0
    public final void b(Bundle bundle) throws RemoteException {
        int i6 = v.f;
        c(this.f9109a, 3, this.f9110b, bundle, null);
    }
}
