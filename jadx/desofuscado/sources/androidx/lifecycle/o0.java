package androidx.lifecycle;

import android.os.Bundle;
import com.lzy.okgo.cache.CacheEntity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicReference;
import t9.d1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class o0 {

    /* renamed from: a, reason: collision with root package name */
    public static final w0 f1984a = new w0(3);

    /* renamed from: b, reason: collision with root package name */
    public static final w0 f1985b = new w0(4);

    /* renamed from: c, reason: collision with root package name */
    public static final w0 f1986c = new w0(2);

    public static final void a(v0 v0Var, androidx.appcompat.widget.v vVar, p pVar) {
        Object obj;
        j9.i.f(vVar, "registry");
        j9.i.f(pVar, "lifecycle");
        HashMap map = v0Var.f2007a;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = v0Var.f2007a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        n0 n0Var = (n0) obj;
        if (n0Var == null || n0Var.f1979c) {
            return;
        }
        n0Var.d(vVar, pVar);
        o oVarB = pVar.b();
        if (oVarB == o.f1981b || oVarB.compareTo(o.d) >= 0) {
            vVar.g();
        } else {
            pVar.a(new g(vVar, pVar));
        }
    }

    public static m0 b(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            if (bundle2 == null) {
                return new m0();
            }
            HashMap map = new HashMap();
            for (String str : bundle2.keySet()) {
                j9.i.e(str, CacheEntity.KEY);
                map.put(str, bundle2.get(str));
            }
            return new m0(map);
        }
        ClassLoader classLoader = m0.class.getClassLoader();
        j9.i.c(classLoader);
        bundle.setClassLoader(classLoader);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = parcelableArrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            Object obj = parcelableArrayList.get(i6);
            j9.i.d(obj, "null cannot be cast to non-null type kotlin.String");
            linkedHashMap.put((String) obj, parcelableArrayList2.get(i6));
        }
        return new m0(linkedHashMap);
    }

    public static final m0 c(j1.b bVar) {
        w0 w0Var = f1984a;
        LinkedHashMap linkedHashMap = (LinkedHashMap) bVar.f6105a;
        v1.e eVar = (v1.e) linkedHashMap.get(w0Var);
        if (eVar == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        }
        a1 a1Var = (a1) linkedHashMap.get(f1985b);
        if (a1Var == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        Bundle bundle = (Bundle) linkedHashMap.get(f1986c);
        String str = (String) linkedHashMap.get(w0.f2011c);
        if (str == null) {
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
        }
        v1.d dVarD = eVar.a().d();
        q0 q0Var = dVarD instanceof q0 ? (q0) dVarD : null;
        if (q0Var == null) {
            throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
        }
        LinkedHashMap linkedHashMap2 = e(a1Var).d;
        m0 m0Var = (m0) linkedHashMap2.get(str);
        if (m0Var != null) {
            return m0Var;
        }
        Class[] clsArr = m0.f;
        q0Var.a();
        Bundle bundle2 = q0Var.f1994c;
        Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
        Bundle bundle4 = q0Var.f1994c;
        if (bundle4 != null) {
            bundle4.remove(str);
        }
        Bundle bundle5 = q0Var.f1994c;
        if (bundle5 != null && bundle5.isEmpty()) {
            q0Var.f1994c = null;
        }
        m0 m0VarB = b(bundle3, bundle);
        linkedHashMap2.put(str, m0VarB);
        return m0VarB;
    }

    public static final r d(w wVar) {
        r rVar;
        j9.i.f(wVar, "<this>");
        p pVarF = wVar.f();
        j9.i.f(pVarF, "<this>");
        loop0: while (true) {
            AtomicReference atomicReference = pVarF.f1987a;
            rVar = (r) atomicReference.get();
            if (rVar == null) {
                d1 d1Var = new d1(null);
                z9.d dVar = t9.b0.f10180a;
                rVar = new r(pVarF, com.bumptech.glide.d.A(d1Var, x9.n.f11128a.f));
                while (!atomicReference.compareAndSet(null, rVar)) {
                    if (atomicReference.get() != null) {
                        break;
                    }
                }
                z9.d dVar2 = t9.b0.f10180a;
                t9.u.k(rVar, x9.n.f11128a.f, new q(rVar, null), 2);
                break loop0;
            }
            break;
        }
        return rVar;
    }

    public static final r0 e(a1 a1Var) {
        return (r0) new a1.b(a1Var.e(), new w0(5), a1Var instanceof j ? ((j) a1Var).d() : j1.a.f7427b).p(r0.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
