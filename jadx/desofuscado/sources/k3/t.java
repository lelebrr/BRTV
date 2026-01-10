package k3;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import androidx.appcompat.widget.v;
import androidx.lifecycle.n;
import androidx.lifecycle.w;
import d7.a3;
import d7.c4;
import d7.i3;
import d7.j3;
import d7.k3;
import d7.l3;
import j9.i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements r3.g {

    /* renamed from: e, reason: collision with root package name */
    public static volatile t f7732e;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7733a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7734b;

    /* renamed from: c, reason: collision with root package name */
    public Object f7735c;
    public Object d;

    public t(int i6) {
        this.f7733a = i6;
        switch (i6) {
            case 3:
                this.f7735c = Collections.newSetFromMap(new WeakHashMap());
                this.d = new HashSet();
                break;
            case 5:
                this.f7735c = new Object();
                break;
        }
    }

    public static t b(Context context) {
        if (f7732e == null) {
            synchronized (t.class) {
                try {
                    if (f7732e == null) {
                        f7732e = new t(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f7732e;
    }

    public boolean a(n3.c cVar) {
        boolean z7 = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = ((Set) this.f7735c).remove(cVar);
        if (!((HashSet) this.d).remove(cVar) && !zRemove) {
            z7 = false;
        }
        if (z7) {
            cVar.clear();
        }
        return z7;
    }

    public ConcurrentMap c() {
        if (!this.f7734b) {
            return new ConcurrentHashMap(16, 0.75f, 4);
        }
        a3 a3Var = c4.f6107j;
        j3 j3Var = (j3) this.f7735c;
        i3 i3Var = k3.f6199a;
        if (((k3) b7.b.r(j3Var, i3Var)) == i3Var && ((k3) b7.b.r((j3) this.d, i3Var)) == i3Var) {
            return new c4(this, l3.f6207b);
        }
        k3 k3Var = (k3) b7.b.r((j3) this.f7735c, i3Var);
        j3 j3Var2 = k3.f6200b;
        if (k3Var == i3Var && ((k3) b7.b.r((j3) this.d, i3Var)) == j3Var2) {
            return new c4(this, l3.f6208c);
        }
        if (((k3) b7.b.r((j3) this.f7735c, i3Var)) == j3Var2 && ((k3) b7.b.r((j3) this.d, i3Var)) == i3Var) {
            return new c4(this, l3.d);
        }
        if (((k3) b7.b.r((j3) this.f7735c, i3Var)) == j3Var2 && ((k3) b7.b.r((j3) this.d, i3Var)) == j3Var2) {
            return new c4(this, l3.f6209e);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.w, java.lang.Object] */
    public void d() {
        ?? r02 = this.f7735c;
        androidx.lifecycle.p pVarF = r02.f();
        if (pVarF.b() != androidx.lifecycle.o.f1981b) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        pVarF.a(new v1.a(0, r02));
        final v vVar = (v) this.d;
        vVar.getClass();
        if (vVar.f852c) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        pVarF.a(new androidx.lifecycle.u() { // from class: v1.b
            @Override // androidx.lifecycle.u
            public final void onStateChanged(w wVar, n nVar) {
                v vVar2 = vVar;
                i.f(vVar2, "this$0");
                if (nVar == n.ON_START) {
                    vVar2.f853e = true;
                } else if (nVar == n.ON_STOP) {
                    vVar2.f853e = false;
                }
            }
        });
        vVar.f852c = true;
        this.f7734b = true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.lifecycle.w, java.lang.Object] */
    public void e(Bundle bundle) {
        if (!this.f7734b) {
            d();
        }
        androidx.lifecycle.p pVarF = this.f7735c.f();
        if (pVarF.b().compareTo(androidx.lifecycle.o.d) >= 0) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + pVarF.b()).toString());
        }
        v vVar = (v) this.d;
        if (!vVar.f852c) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (vVar.d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        vVar.f850a = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        vVar.d = true;
    }

    public void f(Bundle bundle) {
        j9.i.f(bundle, "outBundle");
        v vVar = (v) this.d;
        vVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = (Bundle) vVar.f850a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        m.f fVar = (m.f) vVar.f;
        fVar.getClass();
        m.d dVar = new m.d(fVar);
        fVar.f8110c.put(dVar, Boolean.FALSE);
        while (dVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dVar.next();
            bundle2.putBundle((String) entry.getKey(), ((v1.d) entry.getValue()).saveState());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public void g() {
        j3 j3Var = k3.f6200b;
        j3 j3Var2 = (j3) this.f7735c;
        b7.b.m(j3Var2, "Key strength was already set to %s", j3Var2 == null);
        this.f7735c = j3Var;
        this.f7734b = true;
    }

    @Override // r3.g
    public Object get() {
        if (this.f7734b) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        Trace.beginSection("Glide registry");
        this.f7734b = true;
        try {
            return o9.e.l((com.bumptech.glide.b) this.f7735c, (ArrayList) this.d);
        } finally {
            this.f7734b = false;
            Trace.endSection();
        }
    }

    public void h(w5.f fVar) {
        synchronized (this.f7735c) {
            try {
                if (((ArrayDeque) this.d) == null) {
                    this.d = new ArrayDeque();
                }
                ((ArrayDeque) this.d).add(fVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void i(w5.g gVar) {
        w5.f fVar;
        synchronized (this.f7735c) {
            if (((ArrayDeque) this.d) != null && !this.f7734b) {
                this.f7734b = true;
                while (true) {
                    synchronized (this.f7735c) {
                        try {
                            fVar = (w5.f) ((ArrayDeque) this.d).poll();
                            if (fVar == null) {
                                this.f7734b = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    fVar.a(gVar);
                }
            }
        }
    }

    public String toString() {
        switch (this.f7733a) {
            case 2:
                a1.b bVarW = b7.b.w(this);
                j3 j3Var = (j3) this.f7735c;
                if (j3Var != null) {
                    bVarW.d(b7.b.v(j3Var.toString()), "keyStrength");
                }
                j3 j3Var2 = (j3) this.d;
                if (j3Var2 != null) {
                    bVarW.d(b7.b.v(j3Var2.toString()), "valueStrength");
                }
                return bVarW.toString();
            case 3:
                return super.toString() + "{numRequests=" + ((Set) this.f7735c).size() + ", isPaused=" + this.f7734b + "}";
            default:
                return super.toString();
        }
    }

    public t(v1.e eVar) {
        this.f7733a = 4;
        this.f7735c = eVar;
        this.d = new v();
    }

    public t(Context context) {
        Object sVar;
        this.f7733a = 0;
        this.d = new HashSet();
        b.a aVar = new b.a(new a4.k(context, 2));
        n nVar = new n(this);
        if (Build.VERSION.SDK_INT >= 24) {
            sVar = new e2.c(aVar, nVar);
        } else {
            sVar = new s(context, aVar, nVar);
        }
        this.f7735c = sVar;
    }

    public t(com.bumptech.glide.b bVar, ArrayList arrayList, n5.d dVar) {
        this.f7733a = 1;
        this.f7735c = bVar;
        this.d = arrayList;
    }
}
