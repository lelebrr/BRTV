package com.google.android.gms.internal.cast;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e6 extends z0 implements ListenableFuture {

    /* renamed from: g, reason: collision with root package name */
    public static final Object f4146g = new Object();

    /* renamed from: h, reason: collision with root package name */
    public static final k1 f4147h = new k1();

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f4148i;

    /* renamed from: j, reason: collision with root package name */
    public static final z0 f4149j;
    public volatile Object d;

    /* renamed from: e, reason: collision with root package name */
    public volatile y5 f4150e;
    public volatile d6 f;

    static {
        boolean z7;
        z0 b6Var;
        Throwable th;
        Throwable th2;
        z0 c6Var;
        try {
            z7 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z7 = false;
        }
        f4148i = z7;
        String property = System.getProperty("java.runtime.name", "");
        Throwable e5 = null;
        if (property == null || property.contains("Android")) {
            try {
                c6Var = new c6(9);
            } catch (Error | Exception e10) {
                try {
                    b6Var = new a6(9);
                } catch (Error | Exception e11) {
                    e5 = e11;
                    b6Var = new b6(9);
                }
                th = e10;
                th2 = e5;
                c6Var = b6Var;
            }
        } else {
            try {
                c6Var = new a6(9);
            } catch (NoClassDefFoundError unused2) {
                c6Var = new b6(9);
            }
        }
        th2 = null;
        th = null;
        f4149j = c6Var;
        if (th2 != null) {
            k1 k1Var = f4147h;
            Logger loggerB = k1Var.b();
            Level level = Level.SEVERE;
            loggerB.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th);
            k1Var.b().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th2);
        }
    }

    public final void s(d6 d6Var) {
        d6Var.f4133a = null;
        while (true) {
            d6 d6Var2 = this.f;
            if (d6Var2 != d6.f4132c) {
                d6 d6Var3 = null;
                while (d6Var2 != null) {
                    d6 d6Var4 = d6Var2.f4134b;
                    if (d6Var2.f4133a != null) {
                        d6Var3 = d6Var2;
                    } else if (d6Var3 != null) {
                        d6Var3.f4134b = d6Var4;
                        if (d6Var3.f4133a == null) {
                            break;
                        }
                    } else if (!f4149j.r(this, d6Var2, d6Var4)) {
                        break;
                    }
                    d6Var2 = d6Var4;
                }
                return;
            }
            return;
        }
    }
}
