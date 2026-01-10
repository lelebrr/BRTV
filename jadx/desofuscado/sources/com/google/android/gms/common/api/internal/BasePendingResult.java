package com.google.android.gms.common.api.internal;

import a.e;
import android.os.Looper;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import m9.b;
import n5.d;
import r4.u;
import y4.l;

/* compiled from: MyApplication */
@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends l> extends d {

    /* renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f3928q = 0;

    /* renamed from: k, reason: collision with root package name */
    public u f3933k;

    /* renamed from: m, reason: collision with root package name */
    public l f3935m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f3936n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f3937o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3938p;

    /* renamed from: g, reason: collision with root package name */
    public final Object f3929g = new Object();

    /* renamed from: i, reason: collision with root package name */
    public final CountDownLatch f3931i = new CountDownLatch(1);

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f3932j = new ArrayList();

    /* renamed from: l, reason: collision with root package name */
    public final AtomicReference f3934l = new AtomicReference();

    /* renamed from: h, reason: collision with root package name */
    public final z4.d f3930h = new z4.d(Looper.getMainLooper(), 4);

    static {
        new b(3);
    }

    public BasePendingResult() {
        new WeakReference(null);
    }

    public final void b0() {
        synchronized (this.f3929g) {
            try {
                if (!this.f3937o && !this.f3936n) {
                    this.f3937o = true;
                    j0(c0(Status.f3924g));
                }
            } finally {
            }
        }
    }

    public abstract l c0(Status status);

    public final void d0(Status status) {
        synchronized (this.f3929g) {
            try {
                if (!f0()) {
                    g0(c0(status));
                    this.f3938p = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e0() {
        boolean z7;
        synchronized (this.f3929g) {
            z7 = this.f3937o;
        }
        return z7;
    }

    public final boolean f0() {
        return this.f3931i.getCount() == 0;
    }

    public final void g0(l lVar) {
        synchronized (this.f3929g) {
            try {
                if (this.f3938p || this.f3937o) {
                    return;
                }
                f0();
                b5.l.g("Results have already been set", !f0());
                b5.l.g("Result has already been consumed", !this.f3936n);
                j0(lVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h0(u uVar) {
        synchronized (this.f3929g) {
            try {
                b5.l.g("Result has already been consumed.", !this.f3936n);
                if (e0()) {
                    return;
                }
                if (f0()) {
                    z4.d dVar = this.f3930h;
                    l lVarI0 = i0();
                    dVar.getClass();
                    dVar.sendMessage(dVar.obtainMessage(1, new Pair(uVar, lVarI0)));
                } else {
                    this.f3933k = uVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final l i0() {
        l lVar;
        synchronized (this.f3929g) {
            b5.l.g("Result has already been consumed.", !this.f3936n);
            b5.l.g("Result is not ready.", f0());
            lVar = this.f3935m;
            this.f3935m = null;
            this.f3933k = null;
            this.f3936n = true;
        }
        if (this.f3934l.getAndSet(null) != null) {
            throw new ClassCastException();
        }
        b5.l.e(lVar);
        return lVar;
    }

    public final void j0(l lVar) {
        this.f3935m = lVar;
        lVar.getClass();
        this.f3931i.countDown();
        if (this.f3937o) {
            this.f3933k = null;
        } else {
            u uVar = this.f3933k;
            if (uVar != null) {
                z4.d dVar = this.f3930h;
                dVar.removeMessages(2);
                dVar.sendMessage(dVar.obtainMessage(1, new Pair(uVar, i0())));
            }
        }
        ArrayList arrayList = this.f3932j;
        if (arrayList.size() > 0) {
            throw e.k(0, arrayList);
        }
        arrayList.clear();
    }
}
