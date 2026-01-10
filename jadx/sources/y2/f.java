package y2;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final l6.h f11354a = new l6.h(12);

    /* renamed from: b, reason: collision with root package name */
    public final e f11355b = new e(0);

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f11356c = new HashMap();
    public final HashMap d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final int f11357e;
    public int f;

    public f(int i6) {
        this.f11357e = i6;
    }

    public final synchronized void a() {
        c(0);
    }

    public final void b(int i6, Class cls) {
        NavigableMap navigableMapG = g(cls);
        Integer num = (Integer) navigableMapG.get(Integer.valueOf(i6));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapG.remove(Integer.valueOf(i6));
                return;
            } else {
                navigableMapG.put(Integer.valueOf(i6), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i6 + ", this: " + this);
    }

    public final void c(int i6) {
        while (this.f > i6) {
            Object objR = this.f11354a.r();
            r3.f.b(objR);
            b bVarE = e(objR.getClass());
            this.f -= bVarE.b() * bVarE.a(objR);
            b(bVarE.a(objR), objR.getClass());
            if (Log.isLoggable(bVarE.c(), 2)) {
                Log.v(bVarE.c(), "evicted: " + bVarE.a(objR));
            }
        }
    }

    public final synchronized Object d(int i6, Class cls) {
        d dVar;
        int i10;
        try {
            Integer num = (Integer) g(cls).ceilingKey(Integer.valueOf(i6));
            if (num == null || ((i10 = this.f) != 0 && this.f11357e / i10 < 2 && num.intValue() > i6 * 8)) {
                e eVar = this.f11355b;
                h hVarE = (h) ((ArrayDeque) eVar.f6105a).poll();
                if (hVarE == null) {
                    hVarE = eVar.e();
                }
                dVar = (d) hVarE;
                dVar.f11351b = i6;
                dVar.f11352c = cls;
            } else {
                e eVar2 = this.f11355b;
                int iIntValue = num.intValue();
                h hVarE2 = (h) ((ArrayDeque) eVar2.f6105a).poll();
                if (hVarE2 == null) {
                    hVarE2 = eVar2.e();
                }
                dVar = (d) hVarE2;
                dVar.f11351b = iIntValue;
                dVar.f11352c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f(dVar, cls);
    }

    public final b e(Class cls) {
        HashMap map = this.d;
        b bVar = (b) map.get(cls);
        if (bVar == null) {
            if (cls.equals(int[].class)) {
                bVar = new b(1);
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
                }
                bVar = new b(0);
            }
            map.put(cls, bVar);
        }
        return bVar;
    }

    public final Object f(d dVar, Class cls) {
        Object obj;
        b bVarE = e(cls);
        Object objH = this.f11354a.h(dVar);
        if (objH != null) {
            this.f -= bVarE.b() * bVarE.a(objH);
            b(bVarE.a(objH), cls);
        }
        if (objH != null) {
            return objH;
        }
        if (Log.isLoggable(bVarE.c(), 2)) {
            Log.v(bVarE.c(), "Allocated " + dVar.f11351b + " bytes");
        }
        int i6 = dVar.f11351b;
        switch (bVarE.f11346a) {
            case 0:
                obj = new byte[i6];
                break;
            default:
                obj = new int[i6];
                break;
        }
        return obj;
    }

    public final NavigableMap g(Class cls) {
        HashMap map = this.f11356c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    public final synchronized void h(Object obj) {
        Class<?> cls = obj.getClass();
        b bVarE = e(cls);
        int iA = bVarE.a(obj);
        int iB = bVarE.b() * iA;
        if (iB <= this.f11357e / 2) {
            e eVar = this.f11355b;
            h hVarE = (h) ((ArrayDeque) eVar.f6105a).poll();
            if (hVarE == null) {
                hVarE = eVar.e();
            }
            d dVar = (d) hVarE;
            dVar.f11351b = iA;
            dVar.f11352c = cls;
            this.f11354a.p(dVar, obj);
            NavigableMap navigableMapG = g(cls);
            Integer num = (Integer) navigableMapG.get(Integer.valueOf(dVar.f11351b));
            Integer numValueOf = Integer.valueOf(dVar.f11351b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapG.put(numValueOf, Integer.valueOf(iIntValue));
            this.f += iB;
            c(this.f11357e);
        }
    }

    public final synchronized void i(int i6) {
        try {
            if (i6 >= 40) {
                a();
            } else if (i6 >= 20 || i6 == 15) {
                c(this.f11357e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
