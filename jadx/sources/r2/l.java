package r2;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements ComponentCallbacks2 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f9482a;

    /* renamed from: b, reason: collision with root package name */
    public Context f9483b;

    /* renamed from: c, reason: collision with root package name */
    public l2.g f9484c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9485e = true;

    public l(c2.l lVar) {
        this.f9482a = new WeakReference(lVar);
    }

    public final synchronized void a() {
        w8.l lVar;
        l2.g eVar;
        try {
            c2.l lVar2 = (c2.l) this.f9482a.get();
            if (lVar2 != null) {
                if (this.f9484c == null) {
                    if (lVar2.d.f9477b) {
                        Context context = lVar2.f3367a;
                        ConnectivityManager connectivityManager = (ConnectivityManager) u7.d.o(context, ConnectivityManager.class);
                        if (connectivityManager == null || u7.d.b(context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
                            eVar = new x4.e(20);
                        } else {
                            try {
                                eVar = new a1.b(connectivityManager, this);
                            } catch (Exception unused) {
                                eVar = new x4.e(20);
                            }
                        }
                    } else {
                        eVar = new x4.e(20);
                    }
                    this.f9484c = eVar;
                    this.f9485e = eVar.b();
                }
                lVar = w8.l.f10832a;
            } else {
                lVar = null;
            }
            if (lVar == null) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            if (this.d) {
                return;
            }
            this.d = true;
            Context context = this.f9483b;
            if (context != null) {
                context.unregisterComponentCallbacks(this);
            }
            l2.g gVar = this.f9484c;
            if (gVar != null) {
                gVar.shutdown();
            }
            this.f9482a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final synchronized void onConfigurationChanged(Configuration configuration) {
        try {
            if ((((c2.l) this.f9482a.get()) != null ? w8.l.f10832a : null) == null) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ComponentCallbacks
    public final synchronized void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public final synchronized void onTrimMemory(int i6) {
        w8.l lVar;
        try {
            c2.l lVar2 = (c2.l) this.f9482a.get();
            if (lVar2 != null) {
                k2.b bVar = (k2.b) lVar2.f3369c.getValue();
                if (bVar != null) {
                    bVar.f7699a.a(i6);
                    bVar.f7700b.d(i6);
                }
                lVar = w8.l.f10832a;
            } else {
                lVar = null;
            }
            if (lVar == null) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
