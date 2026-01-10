package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.Log;
import android.widget.ImageView;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import k3.t;
import k3.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements ComponentCallbacks2, k3.i {

    /* renamed from: k, reason: collision with root package name */
    public static final n3.e f3570k;

    /* renamed from: a, reason: collision with root package name */
    public final b f3571a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3572b;

    /* renamed from: c, reason: collision with root package name */
    public final k3.g f3573c;
    public final t d;

    /* renamed from: e, reason: collision with root package name */
    public final k3.m f3574e;
    public final u f;

    /* renamed from: g, reason: collision with root package name */
    public final a.f f3575g;

    /* renamed from: h, reason: collision with root package name */
    public final k3.b f3576h;

    /* renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f3577i;

    /* renamed from: j, reason: collision with root package name */
    public n3.e f3578j;

    static {
        n3.e eVar = (n3.e) new n3.e().c(Bitmap.class);
        eVar.f8406p = true;
        f3570k = eVar;
        ((n3.e) new n3.e().c(i3.d.class)).f8406p = true;
    }

    public o(b bVar, k3.g gVar, k3.m mVar, Context context) {
        t tVar = new t(3);
        u6.e eVar = bVar.f;
        this.f = new u();
        a.f fVar = new a.f(9, this);
        this.f3575g = fVar;
        this.f3571a = bVar;
        this.f3573c = gVar;
        this.f3574e = mVar;
        this.d = tVar;
        this.f3572b = context;
        Context applicationContext = context.getApplicationContext();
        n nVar = new n(this, tVar);
        eVar.getClass();
        boolean z7 = u7.d.b(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z7 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        k3.b cVar = z7 ? new k3.c(applicationContext, nVar) : new k3.k();
        this.f3576h = cVar;
        synchronized (bVar.f3498g) {
            if (bVar.f3498g.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            bVar.f3498g.add(this);
        }
        char[] cArr = r3.n.f9510a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            gVar.h(this);
        } else {
            r3.n.f().post(fVar);
        }
        gVar.h(cVar);
        this.f3577i = new CopyOnWriteArrayList(bVar.f3496c.f3518e);
        r(bVar.f3496c.a());
    }

    @Override // k3.i
    public final synchronized void c() {
        this.f.c();
        p();
    }

    @Override // k3.i
    public final synchronized void i() {
        q();
        this.f.i();
    }

    @Override // k3.i
    public final synchronized void j() {
        this.f.j();
        m();
        t tVar = this.d;
        Iterator it = r3.n.e((Set) tVar.f7735c).iterator();
        while (it.hasNext()) {
            tVar.a((n3.c) it.next());
        }
        ((HashSet) tVar.d).clear();
        this.f3573c.g(this);
        this.f3573c.g(this.f3576h);
        r3.n.f().removeCallbacks(this.f3575g);
        this.f3571a.d(this);
    }

    public final void k(ImageView imageView) {
        l(new m(imageView));
    }

    public final void l(o3.h hVar) {
        if (hVar == null) {
            return;
        }
        boolean zS = s(hVar);
        n3.c request = hVar.getRequest();
        if (zS) {
            return;
        }
        b bVar = this.f3571a;
        synchronized (bVar.f3498g) {
            try {
                Iterator it = bVar.f3498g.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((o) it.next()).s(hVar)) {
                        }
                    } else if (request != null) {
                        hVar.a(null);
                        request.clear();
                    }
                }
            } finally {
            }
        }
    }

    public final synchronized void m() {
        try {
            Iterator it = r3.n.e(this.f.f7736a).iterator();
            while (it.hasNext()) {
                l((o3.h) it.next());
            }
            this.f.f7736a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final l n(Integer num) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo;
        l lVar = new l(this.f3571a, this, Drawable.class, this.f3572b);
        l lVarD = lVar.D(num);
        Context context = lVar.f3537u;
        l lVar2 = (l) lVarD.s(context.getTheme());
        ConcurrentHashMap concurrentHashMap = q3.b.f9197a;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = q3.b.f9197a;
        v2.e eVar = (v2.e) concurrentHashMap2.get(packageName);
        if (eVar == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e5) {
                Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e5);
                packageInfo = null;
            }
            q3.d dVar = new q3.d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            eVar = (v2.e) concurrentHashMap2.putIfAbsent(packageName, dVar);
            if (eVar == null) {
                eVar = dVar;
            }
        }
        return (l) lVar2.q(new q3.a(context.getResources().getConfiguration().uiMode & 48, eVar));
    }

    public final l o(String str) {
        return new l(this.f3571a, this, Drawable.class, this.f3572b).D(str);
    }

    public final synchronized void p() {
        t tVar = this.d;
        tVar.f7734b = true;
        Iterator it = r3.n.e((Set) tVar.f7735c).iterator();
        while (it.hasNext()) {
            n3.c cVar = (n3.c) it.next();
            if (cVar.isRunning()) {
                cVar.pause();
                ((HashSet) tVar.d).add(cVar);
            }
        }
    }

    public final synchronized void q() {
        t tVar = this.d;
        tVar.f7734b = false;
        Iterator it = r3.n.e((Set) tVar.f7735c).iterator();
        while (it.hasNext()) {
            n3.c cVar = (n3.c) it.next();
            if (!cVar.i() && !cVar.isRunning()) {
                cVar.e();
            }
        }
        ((HashSet) tVar.d).clear();
    }

    public final synchronized void r(n3.e eVar) {
        n3.e eVar2 = (n3.e) eVar.clone();
        if (eVar2.f8406p && !eVar2.f8408r) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        eVar2.f8408r = true;
        eVar2.f8406p = true;
        this.f3578j = eVar2;
    }

    public final synchronized boolean s(o3.h hVar) {
        n3.c request = hVar.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.d.a(request)) {
            return false;
        }
        this.f.f7736a.remove(hVar);
        hVar.a(null);
        return true;
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.d + ", treeNode=" + this.f3574e + "}";
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i6) {
    }
}
