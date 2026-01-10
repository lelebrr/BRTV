package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends q1.m0 {
    public static final v4.b f = new v4.b("MRDiscoveryCallback", null);

    /* renamed from: e, reason: collision with root package name */
    public final v f4395e;

    /* renamed from: c, reason: collision with root package name */
    public final Map f4394c = Collections.synchronizedMap(new HashMap());
    public final LinkedHashSet d = new LinkedHashSet();

    /* renamed from: b, reason: collision with root package name */
    public final Set f4393b = Collections.synchronizedSet(new LinkedHashSet());

    /* renamed from: a, reason: collision with root package name */
    public final q f4392a = new q(this);

    public r(Context context) {
        this.f4395e = new v(context);
    }

    @Override // q1.m0
    public final void d(q1.u0 u0Var, q1.s0 s0Var) {
        f.b("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        q(s0Var, true);
    }

    @Override // q1.m0
    public final void e(q1.u0 u0Var, q1.s0 s0Var) {
        f.b("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        q(s0Var, true);
    }

    @Override // q1.m0
    public final void h(q1.u0 u0Var, q1.s0 s0Var) {
        f.b("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        q(s0Var, false);
    }

    public final void o() {
        v4.b bVar = f;
        bVar.b(ea.q.f(this.d.size(), "Starting RouteDiscovery with ", " IDs"), new Object[0]);
        bVar.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f4394c.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            p();
        } else {
            new x0(Looper.getMainLooper(), 0).post(new o(this, 1));
        }
    }

    public final void p() {
        v vVar = this.f4395e;
        if (vVar.f4441b == null) {
            vVar.f4441b = q1.u0.d(vVar.f4440a);
        }
        q1.u0 u0Var = vVar.f4441b;
        if (u0Var != null) {
            u0Var.h(this);
        }
        LinkedHashSet linkedHashSet = this.d;
        synchronized (linkedHashSet) {
            try {
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    String strA = p4.j.a(str);
                    if (strA == null) {
                        throw new IllegalArgumentException("category must not be null");
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    if (!arrayList.contains(strA)) {
                        arrayList.add(strA);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList("controlCategories", arrayList);
                    q1.l0 l0Var = new q1.l0(bundle, arrayList);
                    Map map = this.f4394c;
                    if (((p) map.get(str)) == null) {
                        map.put(str, new p(l0Var));
                    }
                    f.b("Adding mediaRouter callback for control category " + p4.j.a(str), new Object[0]);
                    if (vVar.f4441b == null) {
                        vVar.f4441b = q1.u0.d(vVar.f4440a);
                    }
                    vVar.f4441b.a(l0Var, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.f4394c.keySet())), new Object[0]);
    }

    public final void q(q1.s0 s0Var, boolean z7) {
        boolean zAdd;
        Set setH;
        v4.b bVar = f;
        bVar.b("MediaRouterDiscoveryCallback.updateRouteToAppIds (add=%b) route %s", Boolean.valueOf(z7), s0Var);
        Map map = this.f4394c;
        synchronized (map) {
            try {
                bVar.b("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
                zAdd = false;
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    p pVar = (p) entry.getValue();
                    if (s0Var.h(pVar.f4373b)) {
                        if (z7) {
                            bVar.b("Adding/updating route for appId " + str, new Object[0]);
                            zAdd = pVar.f4372a.add(s0Var);
                            if (!zAdd) {
                                Log.w(bVar.f10671a, bVar.d("Route " + String.valueOf(s0Var) + " already exists for appId " + str, new Object[0]));
                            }
                        } else {
                            bVar.b("Removing route for appId " + str, new Object[0]);
                            zAdd = pVar.f4372a.remove(s0Var);
                            if (!zAdd) {
                                Log.w(bVar.f10671a, bVar.d("Route " + String.valueOf(s0Var) + " already removed from appId " + str, new Object[0]));
                            }
                        }
                    }
                }
            } finally {
            }
        }
        if (zAdd) {
            f.b("Invoking callback.onRouteUpdated.", new Object[0]);
            synchronized (this.f4393b) {
                try {
                    HashMap map2 = new HashMap();
                    Map map3 = this.f4394c;
                    synchronized (map3) {
                        for (String str2 : map3.keySet()) {
                            p pVar2 = (p) map3.get(z0.e(str2));
                            if (pVar2 == null) {
                                int i6 = s1.f4409c;
                                setH = a2.f4101j;
                            } else {
                                LinkedHashSet linkedHashSet = pVar2.f4372a;
                                int i10 = s1.f4409c;
                                Object[] array = linkedHashSet.toArray();
                                setH = s1.h(array, array.length);
                            }
                            if (!setH.isEmpty()) {
                                map2.put(str2, setH);
                            }
                        }
                    }
                    z1.a(map2.entrySet());
                    Iterator it = this.f4393b.iterator();
                    if (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
    }
}
