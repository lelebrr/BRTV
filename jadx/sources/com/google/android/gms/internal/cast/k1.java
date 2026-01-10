package com.google.android.gms.internal.cast;

import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k1 implements j1 {

    /* renamed from: e, reason: collision with root package name */
    public static final k2 f4273e = new k2(21);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4274a;

    /* renamed from: b, reason: collision with root package name */
    public final l1 f4275b;

    /* renamed from: c, reason: collision with root package name */
    public Object f4276c;
    public volatile Object d;

    public k1() {
        this.f4274a = 1;
        this.f4275b = new l1();
        this.f4276c = z5.class.getName();
    }

    @Override // com.google.android.gms.internal.cast.j1
    public Object a() {
        j1 j1Var = (j1) this.d;
        k2 k2Var = f4273e;
        if (j1Var != k2Var) {
            synchronized (this.f4275b) {
                try {
                    if (((j1) this.d) != k2Var) {
                        Object objA = ((j1) this.d).a();
                        this.f4276c = objA;
                        this.d = k2Var;
                        return objA;
                    }
                } finally {
                }
            }
        }
        return this.f4276c;
    }

    public Logger b() {
        Logger logger = (Logger) this.d;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f4275b) {
            try {
                Logger logger2 = (Logger) this.d;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger((String) this.f4276c);
                this.d = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        switch (this.f4274a) {
            case 0:
                Object objR = (j1) this.d;
                if (objR == f4273e) {
                    objR = a.e.r("<supplier that returned ", String.valueOf(this.f4276c), ">");
                }
                return a.e.r("Suppliers.memoize(", String.valueOf(objR), ")");
            default:
                return super.toString();
        }
    }

    public k1(k2 k2Var) {
        this.f4274a = 0;
        this.f4275b = new l1();
        this.d = k2Var;
    }
}
