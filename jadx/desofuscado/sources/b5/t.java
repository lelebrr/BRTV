package b5;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.common.ConnectionResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3271a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f3272b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3273c;
    public IBinder d;

    /* renamed from: e, reason: collision with root package name */
    public final s f3274e;
    public ComponentName f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ v f3275g;

    public t(v vVar, s sVar) {
        this.f3275g = vVar;
        this.f3274e = sVar;
    }

    public static ConnectionResult a(t tVar, String str, Executor executor) throws RemoteException {
        ConnectionResult connectionResult;
        try {
            Intent intentA = tVar.f3274e.a(tVar.f3275g.f3281b);
            tVar.f3272b = 3;
            StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
            if (Build.VERSION.SDK_INT >= 31) {
                StrictMode.setVmPolicy(k5.b.a(new StrictMode.VmPolicy.Builder(vmPolicy)).build());
            }
            try {
                v vVar = tVar.f3275g;
                boolean zB = vVar.d.b(vVar.f3281b, str, intentA, tVar, executor);
                tVar.f3273c = zB;
                if (zB) {
                    tVar.f3275g.f3282c.sendMessageDelayed(tVar.f3275g.f3282c.obtainMessage(1, tVar.f3274e), tVar.f3275g.f);
                    connectionResult = ConnectionResult.f3904e;
                } else {
                    tVar.f3272b = 2;
                    try {
                        v vVar2 = tVar.f3275g;
                        vVar2.d.a(vVar2.f3281b, tVar);
                    } catch (IllegalArgumentException unused) {
                    }
                    connectionResult = new ConnectionResult(16);
                }
                return connectionResult;
            } finally {
                StrictMode.setVmPolicy(vmPolicy);
            }
        } catch (m e5) {
            return e5.f3260a;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f3275g.f3280a) {
            try {
                this.f3275g.f3282c.removeMessages(1, this.f3274e);
                this.d = iBinder;
                this.f = componentName;
                Iterator it = this.f3271a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f3272b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f3275g.f3280a) {
            try {
                this.f3275g.f3282c.removeMessages(1, this.f3274e);
                this.d = null;
                this.f = componentName;
                Iterator it = this.f3271a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f3272b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
