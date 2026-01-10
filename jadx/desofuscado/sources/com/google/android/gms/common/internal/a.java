package com.google.android.gms.common.internal;

import a4.h;
import android.accounts.Account;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.appcompat.app.r0;
import b5.b;
import b5.d;
import b5.k;
import b5.l;
import b5.n;
import b5.o;
import b5.p;
import b5.q;
import b5.r;
import b5.v;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import v4.s;
import y4.c;
import y4.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements c {

    /* renamed from: y, reason: collision with root package name */
    public static final Feature[] f3988y = new Feature[0];

    /* renamed from: a, reason: collision with root package name */
    public volatile String f3989a;

    /* renamed from: b, reason: collision with root package name */
    public r0 f3990b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f3991c;
    public final Looper d;

    /* renamed from: e, reason: collision with root package name */
    public final v f3992e;
    public final n f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f3993g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f3994h;

    /* renamed from: i, reason: collision with root package name */
    public k f3995i;

    /* renamed from: j, reason: collision with root package name */
    public b f3996j;

    /* renamed from: k, reason: collision with root package name */
    public IInterface f3997k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f3998l;

    /* renamed from: m, reason: collision with root package name */
    public p f3999m;

    /* renamed from: n, reason: collision with root package name */
    public int f4000n;

    /* renamed from: o, reason: collision with root package name */
    public final d f4001o;

    /* renamed from: p, reason: collision with root package name */
    public final d f4002p;

    /* renamed from: q, reason: collision with root package name */
    public final int f4003q;

    /* renamed from: r, reason: collision with root package name */
    public final String f4004r;

    /* renamed from: s, reason: collision with root package name */
    public volatile String f4005s;

    /* renamed from: t, reason: collision with root package name */
    public ConnectionResult f4006t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f4007u;

    /* renamed from: v, reason: collision with root package name */
    public volatile zzk f4008v;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicInteger f4009w;

    /* renamed from: x, reason: collision with root package name */
    public final Set f4010x;

    public a(Context context, Looper looper, int i6, h hVar, y4.h hVar2, i iVar) {
        synchronized (v.f3277g) {
            try {
                if (v.f3278h == null) {
                    v.f3278h = new v(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        v vVar = v.f3278h;
        Object obj = x4.b.f10997c;
        l.e(hVar2);
        l.e(iVar);
        d dVar = new d(hVar2);
        d dVar2 = new d(iVar);
        String str = (String) hVar.f124e;
        this.f3989a = null;
        this.f3993g = new Object();
        this.f3994h = new Object();
        this.f3998l = new ArrayList();
        this.f4000n = 1;
        this.f4006t = null;
        this.f4007u = false;
        this.f4008v = null;
        this.f4009w = new AtomicInteger(0);
        l.f(context, "Context must not be null");
        this.f3991c = context;
        l.f(looper, "Looper must not be null");
        this.d = looper;
        l.f(vVar, "Supervisor must not be null");
        this.f3992e = vVar;
        this.f = new n(this, looper);
        this.f4003q = i6;
        this.f4001o = dVar;
        this.f4002p = dVar2;
        this.f4004r = str;
        Set set = (Set) hVar.d;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.f4010x = set;
    }

    public static /* bridge */ /* synthetic */ void w(a aVar) {
        int i6;
        int i10;
        synchronized (aVar.f3993g) {
            i6 = aVar.f4000n;
        }
        if (i6 == 3) {
            aVar.f4007u = true;
            i10 = 5;
        } else {
            i10 = 4;
        }
        n nVar = aVar.f;
        nVar.sendMessage(nVar.obtainMessage(i10, aVar.f4009w.get(), 16));
    }

    public static /* bridge */ /* synthetic */ boolean x(a aVar, int i6, int i10, IInterface iInterface) {
        synchronized (aVar.f3993g) {
            try {
                if (aVar.f4000n != i6) {
                    return false;
                }
                aVar.y(i10, iInterface);
                return true;
            } finally {
            }
        }
    }

    @Override // y4.c
    public final Set a() {
        return k() ? this.f4010x : Collections.emptySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y4.c
    public final void b(b5.c cVar, Set set) {
        Bundle bundleO = o();
        String str = Build.VERSION.SDK_INT < 31 ? this.f4005s : this.f4005s;
        int i6 = this.f4003q;
        int i10 = x4.c.f10998a;
        Scope[] scopeArr = GetServiceRequest.f3961o;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.f3962p;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i6, i10, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.d = this.f3991c.getPackageName();
        getServiceRequest.f3967g = bundleO;
        if (set != null) {
            getServiceRequest.f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (k()) {
            getServiceRequest.f3968h = new Account("<<default account>>", "com.google");
            if (cVar != 0) {
                getServiceRequest.f3966e = ((com.google.android.gms.internal.cast.a) cVar).d;
            }
        }
        getServiceRequest.f3969i = f3988y;
        getServiceRequest.f3970j = m();
        if (v()) {
            getServiceRequest.f3973m = true;
        }
        try {
            synchronized (this.f3994h) {
                try {
                    k kVar = this.f3995i;
                    if (kVar != null) {
                        kVar.g(new o(this, this.f4009w.get()), getServiceRequest);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } finally {
                }
            }
        } catch (DeadObjectException e5) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e5);
            int i11 = this.f4009w.get();
            n nVar = this.f;
            nVar.sendMessage(nVar.obtainMessage(6, i11, 3));
        } catch (RemoteException e10) {
            e = e10;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            u(8, null, null, this.f4009w.get());
        } catch (SecurityException e11) {
            throw e11;
        } catch (RuntimeException e12) {
            e = e12;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            u(8, null, null, this.f4009w.get());
        }
    }

    @Override // y4.c
    public final void c(String str) {
        this.f3989a = str;
        disconnect();
    }

    @Override // y4.c
    public void disconnect() {
        this.f4009w.incrementAndGet();
        synchronized (this.f3998l) {
            try {
                int size = this.f3998l.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((b5.i) this.f3998l.get(i6)).c();
                }
                this.f3998l.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f3994h) {
            this.f3995i = null;
        }
        y(1, null);
    }

    @Override // y4.c
    public final boolean e() {
        boolean z7;
        synchronized (this.f3993g) {
            int i6 = this.f4000n;
            z7 = true;
            if (i6 != 2 && i6 != 3) {
                z7 = false;
            }
        }
        return z7;
    }

    @Override // y4.c
    public final Feature[] f() {
        zzk zzkVar = this.f4008v;
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.f4023b;
    }

    @Override // y4.c
    public final void g() {
        if (!isConnected() || this.f3990b == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
    }

    @Override // y4.c
    public final void h(s2.c cVar) {
        ((z4.n) cVar.f9745b).f11627o.f11608m.post(new s4.h(9, cVar));
    }

    @Override // y4.c
    public final String i() {
        return this.f3989a;
    }

    @Override // y4.c
    public final boolean isConnected() {
        boolean z7;
        synchronized (this.f3993g) {
            z7 = this.f4000n == 4;
        }
        return z7;
    }

    @Override // y4.c
    public final void j(b bVar) {
        this.f3996j = bVar;
        y(2, null);
    }

    @Override // y4.c
    public boolean k() {
        return false;
    }

    public abstract IInterface l(IBinder iBinder);

    public Feature[] m() {
        return f3988y;
    }

    public Bundle n() {
        return null;
    }

    public Bundle o() {
        return new Bundle();
    }

    public final IInterface p() {
        IInterface iInterface;
        synchronized (this.f3993g) {
            try {
                if (this.f4000n == 5) {
                    throw new DeadObjectException();
                }
                if (!isConnected()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                iInterface = this.f3997k;
                l.f(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String q();

    public abstract String r();

    public boolean s() {
        return d() >= 211700000;
    }

    public void t(ConnectionResult connectionResult) {
        connectionResult.getClass();
        System.currentTimeMillis();
    }

    public void u(int i6, IBinder iBinder, Bundle bundle, int i10) {
        q qVar = new q(this, i6, iBinder, bundle);
        n nVar = this.f;
        nVar.sendMessage(nVar.obtainMessage(1, i10, -1, qVar));
    }

    public boolean v() {
        return this instanceof s;
    }

    public final void y(int i6, IInterface iInterface) {
        r0 r0Var;
        if ((i6 == 4) != (iInterface != null)) {
            throw new IllegalArgumentException();
        }
        synchronized (this.f3993g) {
            try {
                this.f4000n = i6;
                this.f3997k = iInterface;
                Bundle bundle = null;
                if (i6 == 1) {
                    p pVar = this.f3999m;
                    if (pVar != null) {
                        v vVar = this.f3992e;
                        String str = (String) this.f3990b.f353c;
                        l.e(str);
                        this.f3990b.getClass();
                        if (this.f4004r == null) {
                            this.f3991c.getClass();
                        }
                        vVar.c(str, pVar, this.f3990b.f352b);
                        this.f3999m = null;
                    }
                } else if (i6 == 2 || i6 == 3) {
                    p pVar2 = this.f3999m;
                    if (pVar2 != null && (r0Var = this.f3990b) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + ((String) r0Var.f353c) + " on com.google.android.gms");
                        v vVar2 = this.f3992e;
                        String str2 = (String) this.f3990b.f353c;
                        l.e(str2);
                        this.f3990b.getClass();
                        if (this.f4004r == null) {
                            this.f3991c.getClass();
                        }
                        vVar2.c(str2, pVar2, this.f3990b.f352b);
                        this.f4009w.incrementAndGet();
                    }
                    p pVar3 = new p(this, this.f4009w.get());
                    this.f3999m = pVar3;
                    String strR = r();
                    boolean zS = s();
                    this.f3990b = new r0(1, strR, zS);
                    if (zS && d() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf((String) this.f3990b.f353c)));
                    }
                    v vVar3 = this.f3992e;
                    String str3 = (String) this.f3990b.f353c;
                    l.e(str3);
                    this.f3990b.getClass();
                    String name = this.f4004r;
                    if (name == null) {
                        name = this.f3991c.getClass().getName();
                    }
                    ConnectionResult connectionResultB = vVar3.b(new b5.s(str3, this.f3990b.f352b), pVar3, name);
                    if (!(connectionResultB.f3906b == 0)) {
                        Log.w("GmsClient", "unable to connect to service: " + ((String) this.f3990b.f353c) + " on com.google.android.gms");
                        int i10 = connectionResultB.f3906b;
                        if (i10 == -1) {
                            i10 = 16;
                        }
                        if (connectionResultB.f3907c != null) {
                            bundle = new Bundle();
                            bundle.putParcelable("pendingIntent", connectionResultB.f3907c);
                        }
                        int i11 = this.f4009w.get();
                        r rVar = new r(this, i10, bundle);
                        n nVar = this.f;
                        nVar.sendMessage(nVar.obtainMessage(7, i11, -1, rVar));
                    }
                } else if (i6 == 4) {
                    l.e(iInterface);
                    System.currentTimeMillis();
                }
            } finally {
            }
        }
    }
}
