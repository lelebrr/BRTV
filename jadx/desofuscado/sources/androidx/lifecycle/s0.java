package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 implements y0 {

    /* renamed from: a, reason: collision with root package name */
    public final Application f1997a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f1998b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f1999c;
    public final p d;

    /* renamed from: e, reason: collision with root package name */
    public final androidx.appcompat.widget.v f2000e;

    public s0(Application application, v1.e eVar, Bundle bundle) {
        x0 x0Var;
        this.f2000e = eVar.a();
        this.d = eVar.f();
        this.f1999c = bundle;
        this.f1997a = application;
        if (application != null) {
            if (x0.f == null) {
                x0.f = new x0(application);
            }
            x0Var = x0.f;
            j9.i.c(x0Var);
        } else {
            x0Var = new x0(null);
        }
        this.f1998b = x0Var;
    }

    @Override // androidx.lifecycle.y0
    public final v0 a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return c(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.y0
    public final v0 b(Class cls, j1.b bVar) {
        w0 w0Var = w0.f2011c;
        LinkedHashMap linkedHashMap = (LinkedHashMap) bVar.f6105a;
        String str = (String) linkedHashMap.get(w0Var);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(o0.f1984a) == null || linkedHashMap.get(o0.f1985b) == null) {
            if (this.d != null) {
                return c(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(w0.f2010b);
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? t0.a(cls, t0.f2003b) : t0.a(cls, t0.f2002a);
        return constructorA == null ? this.f1998b.b(cls, bVar) : (!zIsAssignableFrom || application == null) ? t0.b(cls, constructorA, o0.c(bVar)) : t0.b(cls, constructorA, application, o0.c(bVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final v0 c(Class cls, String str) throws NoSuchMethodException, IOException, SecurityException {
        Object obj;
        Application application;
        p pVar = this.d;
        if (pVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || this.f1997a == null) ? t0.a(cls, t0.f2003b) : t0.a(cls, t0.f2002a);
        if (constructorA == null) {
            if (this.f1997a != null) {
                return this.f1998b.a(cls);
            }
            if (w0.d == null) {
                w0.d = new w0(6);
            }
            w0 w0Var = w0.d;
            j9.i.c(w0Var);
            return w0Var.a(cls);
        }
        androidx.appcompat.widget.v vVar = this.f2000e;
        j9.i.c(vVar);
        Bundle bundle = this.f1999c;
        Bundle bundleC = vVar.c(str);
        Class[] clsArr = m0.f;
        m0 m0VarB = o0.b(bundleC, bundle);
        n0 n0Var = new n0(str, m0VarB);
        n0Var.d(vVar, pVar);
        o oVarB = pVar.b();
        if (oVarB == o.f1981b || oVarB.compareTo(o.d) >= 0) {
            vVar.g();
        } else {
            pVar.a(new g(vVar, pVar));
        }
        v0 v0VarB = (!zIsAssignableFrom || (application = this.f1997a) == null) ? t0.b(cls, constructorA, m0VarB) : t0.b(cls, constructorA, application, m0VarB);
        synchronized (v0VarB.f2007a) {
            try {
                obj = v0VarB.f2007a.get("androidx.lifecycle.savedstate.vm.tag");
                if (obj == 0) {
                    v0VarB.f2007a.put("androidx.lifecycle.savedstate.vm.tag", n0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != 0) {
            n0Var = obj;
        }
        if (v0VarB.f2009c) {
            v0.a(n0Var);
        }
        return v0VarB;
    }
}
