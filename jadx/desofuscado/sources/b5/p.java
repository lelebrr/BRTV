package b5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f3263a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.common.internal.a f3264b;

    public p(com.google.android.gms.common.internal.a aVar, int i6) {
        this.f3264b = aVar;
        this.f3263a = i6;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.common.internal.a aVar = this.f3264b;
        if (iBinder == null) {
            com.google.android.gms.common.internal.a.w(aVar);
            return;
        }
        synchronized (aVar.f3994h) {
            try {
                com.google.android.gms.common.internal.a aVar2 = this.f3264b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                aVar2.f3995i = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof k)) ? new k(iBinder) : (k) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.common.internal.a aVar3 = this.f3264b;
        int i6 = this.f3263a;
        aVar3.getClass();
        r rVar = new r(aVar3, 0, null);
        n nVar = aVar3.f;
        nVar.sendMessage(nVar.obtainMessage(7, i6, -1, rVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.a aVar;
        synchronized (this.f3264b.f3994h) {
            aVar = this.f3264b;
            aVar.f3995i = null;
        }
        int i6 = this.f3263a;
        n nVar = aVar.f;
        nVar.sendMessage(nVar.obtainMessage(6, i6, 1));
    }
}
