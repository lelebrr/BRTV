package q1;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h1 implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final Messenger f9012a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.app.f f9013b;

    /* renamed from: c, reason: collision with root package name */
    public final Messenger f9014c;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f9016g;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ m1 f9018i;
    public int d = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f9015e = 1;

    /* renamed from: h, reason: collision with root package name */
    public final SparseArray f9017h = new SparseArray();

    public h1(m1 m1Var, Messenger messenger) {
        this.f9018i = m1Var;
        this.f9012a = messenger;
        androidx.appcompat.app.f fVar = new androidx.appcompat.app.f(this);
        this.f9013b = fVar;
        this.f9014c = new Messenger(fVar);
    }

    public final void a(int i6) {
        int i10 = this.d;
        this.d = i10 + 1;
        b(5, i10, i6, null, null);
    }

    public final boolean b(int i6, int i10, int i11, Object obj, Bundle bundle) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i6;
        messageObtain.arg1 = i10;
        messageObtain.arg2 = i11;
        messageObtain.obj = obj;
        messageObtain.setData(bundle);
        messageObtain.replyTo = this.f9014c;
        try {
            this.f9012a.send(messageObtain);
            return true;
        } catch (DeadObjectException unused) {
            return false;
        } catch (RemoteException e5) {
            if (i6 == 2) {
                return false;
            }
            Log.e("MediaRouteProviderProxy", "Could not send message to service.", e5);
            return false;
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f9018i.f9069j.post(new g1(this, 1));
    }

    public final void c(int i6, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i10);
        int i11 = this.d;
        this.d = i11 + 1;
        b(7, i11, i6, null, bundle);
    }

    public final void d(int i6, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt("volume", i10);
        int i11 = this.d;
        this.d = i11 + 1;
        b(8, i11, i6, null, bundle);
    }
}
