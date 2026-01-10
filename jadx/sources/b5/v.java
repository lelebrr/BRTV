package b5;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.cast.x0;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f3277g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public static v f3278h;

    /* renamed from: i, reason: collision with root package name */
    public static HandlerThread f3279i;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3280a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Context f3281b;

    /* renamed from: c, reason: collision with root package name */
    public volatile x0 f3282c;
    public final j5.a d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3283e;
    public final long f;

    public v(Context context, Looper looper) {
        u uVar = new u(this);
        this.f3281b = context.getApplicationContext();
        x0 x0Var = new x0(looper, uVar, 5);
        Looper.getMainLooper();
        this.f3282c = x0Var;
        if (j5.a.f7436b == null) {
            synchronized (j5.a.f7435a) {
                try {
                    if (j5.a.f7436b == null) {
                        j5.a aVar = new j5.a();
                        new ConcurrentHashMap();
                        j5.a.f7436b = aVar;
                    }
                } finally {
                }
            }
        }
        j5.a aVar2 = j5.a.f7436b;
        l.e(aVar2);
        this.d = aVar2;
        this.f3283e = 5000L;
        this.f = 300000L;
    }

    public static HandlerThread a() {
        synchronized (f3277g) {
            try {
                HandlerThread handlerThread = f3279i;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f3279i = handlerThread2;
                handlerThread2.start();
                return f3279i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ConnectionResult b(s sVar, p pVar, String str) {
        synchronized (this.f3280a) {
            try {
                t tVar = (t) this.f3280a.get(sVar);
                ConnectionResult connectionResultA = null;
                if (tVar == null) {
                    tVar = new t(this, sVar);
                    tVar.f3271a.put(pVar, pVar);
                    connectionResultA = t.a(tVar, str, null);
                    this.f3280a.put(sVar, tVar);
                } else {
                    this.f3282c.removeMessages(0, sVar);
                    if (tVar.f3271a.containsKey(pVar)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(sVar.toString()));
                    }
                    tVar.f3271a.put(pVar, pVar);
                    int i6 = tVar.f3272b;
                    if (i6 == 1) {
                        pVar.onServiceConnected(tVar.f, tVar.d);
                    } else if (i6 == 2) {
                        connectionResultA = t.a(tVar, str, null);
                    }
                }
                if (tVar.f3273c) {
                    return ConnectionResult.f3904e;
                }
                if (connectionResultA == null) {
                    connectionResultA = new ConnectionResult(-1);
                }
                return connectionResultA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(String str, ServiceConnection serviceConnection, boolean z7) {
        s sVar = new s(str, z7);
        l.f(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f3280a) {
            try {
                t tVar = (t) this.f3280a.get(sVar);
                if (tVar == null) {
                    throw new IllegalStateException("Nonexistent connection status for service config: ".concat(sVar.toString()));
                }
                if (!tVar.f3271a.containsKey(serviceConnection)) {
                    throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(sVar.toString()));
                }
                tVar.f3271a.remove(serviceConnection);
                if (tVar.f3271a.isEmpty()) {
                    this.f3282c.sendMessageDelayed(this.f3282c.obtainMessage(0, sVar), this.f3283e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
