package ua;

import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.q;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: o, reason: collision with root package name */
    public static volatile e f10470o;

    /* renamed from: p, reason: collision with root package name */
    public static final f f10471p;

    /* renamed from: q, reason: collision with root package name */
    public static final HashMap f10472q;

    /* renamed from: h, reason: collision with root package name */
    public final m f10478h;

    /* renamed from: i, reason: collision with root package name */
    public final ExecutorService f10479i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f10480j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f10481k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f10482l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f10483m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f10484n;
    public final m9.b d = new m9.b(2);

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10473a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f10474b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f10475c = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public final g f10476e = new g(this, Looper.getMainLooper());
    public final b f = new b(this);

    /* renamed from: g, reason: collision with root package name */
    public final a f10477g = new a(this);

    static {
        f fVar = new f();
        fVar.f10486a = f.f10485b;
        f10471p = fVar;
        f10472q = new HashMap();
    }

    public e() {
        f fVar = f10471p;
        fVar.getClass();
        this.f10478h = new m();
        this.f10480j = true;
        this.f10481k = true;
        this.f10482l = true;
        this.f10483m = true;
        this.f10484n = true;
        this.f10479i = fVar.f10486a;
    }

    public static void a(ArrayList arrayList, Class[] clsArr) {
        for (Class cls : clsArr) {
            if (!arrayList.contains(cls)) {
                arrayList.add(cls);
                a(arrayList, cls.getInterfaces());
            }
        }
    }

    public static e b() {
        if (f10470o == null) {
            synchronized (e.class) {
                try {
                    if (f10470o == null) {
                        f10470o = new e();
                    }
                } finally {
                }
            }
        }
        return f10470o;
    }

    public final void c(i iVar) {
        Object obj = iVar.f10492a;
        n nVar = iVar.f10493b;
        iVar.f10492a = null;
        iVar.f10493b = null;
        iVar.f10494c = null;
        ArrayList arrayList = i.d;
        synchronized (arrayList) {
            if (arrayList.size() < 10000) {
                arrayList.add(iVar);
            }
        }
        if (nVar.f10506c) {
            d(nVar, obj);
        }
    }

    public final void d(n nVar, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            nVar.f10505b.f10498a.invoke(nVar.f10504a, obj);
        } catch (IllegalAccessException e5) {
            throw new IllegalStateException("Unexpected exception", e5);
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            boolean z7 = obj instanceof k;
            boolean z10 = this.f10480j;
            if (!z7) {
                if (z10) {
                    Log.e("EventBus", "Could not dispatch event: " + obj.getClass() + " to subscribing class " + nVar.f10504a.getClass(), cause);
                }
                if (this.f10482l) {
                    e(new k(cause, obj, nVar.f10504a));
                    return;
                }
                return;
            }
            if (z10) {
                Log.e("EventBus", "SubscriberExceptionEvent subscriber " + nVar.f10504a.getClass() + " threw an exception", cause);
                k kVar = (k) obj;
                Log.e("EventBus", "Initial event " + kVar.f10496b + " caused exception in " + kVar.f10497c, kVar.f10495a);
            }
        }
    }

    public final void e(Object obj) {
        d dVar = (d) this.d.get();
        ArrayList arrayList = dVar.f10467a;
        arrayList.add(obj);
        if (dVar.f10468b) {
            return;
        }
        dVar.f10469c = Looper.getMainLooper() == Looper.myLooper();
        dVar.f10468b = true;
        while (!arrayList.isEmpty()) {
            try {
                f(arrayList.remove(0), dVar);
            } finally {
                dVar.f10468b = false;
                dVar.f10469c = false;
            }
        }
    }

    public final void f(Object obj, d dVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean zG;
        List list;
        Class<?> cls = obj.getClass();
        if (this.f10484n) {
            HashMap map = f10472q;
            synchronized (map) {
                try {
                    List list2 = (List) map.get(cls);
                    list = list2;
                    if (list2 == null) {
                        ArrayList arrayList = new ArrayList();
                        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                            arrayList.add(superclass);
                            a(arrayList, superclass.getInterfaces());
                        }
                        f10472q.put(cls, arrayList);
                        list = arrayList;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int size = list.size();
            zG = false;
            for (int i6 = 0; i6 < size; i6++) {
                zG |= g(obj, dVar, (Class) list.get(i6));
            }
        } else {
            zG = g(obj, dVar, cls);
        }
        if (zG) {
            return;
        }
        if (this.f10481k) {
            Log.d("EventBus", "No subscribers registered for event " + cls);
        }
        if (!this.f10483m || cls == h.class || cls == k.class) {
            return;
        }
        e(new h(obj));
    }

    public final boolean g(Object obj, d dVar, Class cls) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.f10473a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            n nVar = (n) it.next();
            dVar.d = obj;
            h(nVar, obj, dVar.f10469c);
        }
        return true;
    }

    public final void h(n nVar, Object obj, boolean z7) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i6 = c.f10466a[nVar.f10505b.f10499b.ordinal()];
        if (i6 == 1) {
            d(nVar, obj);
            return;
        }
        if (i6 == 2) {
            if (z7) {
                d(nVar, obj);
                return;
            } else {
                this.f10476e.a(nVar, obj);
                return;
            }
        }
        if (i6 != 3) {
            if (i6 != 4) {
                throw new IllegalStateException("Unknown thread mode: " + nVar.f10505b.f10499b);
            }
            a aVar = this.f10477g;
            aVar.getClass();
            ((l6.h) aVar.f10461b).g(i.a(nVar, obj));
            ((e) aVar.f10462c).f10479i.execute(aVar);
            return;
        }
        if (!z7) {
            d(nVar, obj);
            return;
        }
        b bVar = this.f;
        bVar.getClass();
        i iVarA = i.a(nVar, obj);
        synchronized (bVar) {
            try {
                bVar.f10463a.g(iVarA);
                if (!bVar.f10465c) {
                    bVar.f10465c = true;
                    bVar.f10464b.f10479i.execute(bVar);
                }
            } finally {
            }
        }
    }

    public final void i(Spark spark, l lVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object value;
        Class cls = lVar.f10500c;
        n nVar = new n(spark, lVar);
        HashMap map = this.f10473a;
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) map.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            map.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(nVar)) {
            throw new q("Subscriber " + spark.getClass() + " already registered to event " + cls, 9);
        }
        int size = copyOnWriteArrayList.size();
        for (int i6 = 0; i6 <= size; i6++) {
            if (i6 != size) {
                if (lVar.d <= ((n) copyOnWriteArrayList.get(i6)).f10505b.d) {
                }
            }
            copyOnWriteArrayList.add(i6, nVar);
            break;
        }
        HashMap map2 = this.f10474b;
        List arrayList = (List) map2.get(spark);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map2.put(spark, arrayList);
        }
        arrayList.add(cls);
        if (lVar.f10501e) {
            ConcurrentHashMap concurrentHashMap = this.f10475c;
            if (!this.f10484n) {
                Object obj = concurrentHashMap.get(cls);
                if (obj != null) {
                    h(nVar, obj, Looper.getMainLooper() == Looper.myLooper());
                    return;
                }
                return;
            }
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                if (cls.isAssignableFrom((Class) entry.getKey()) && (value = entry.getValue()) != null) {
                    h(nVar, value, Looper.getMainLooper() == Looper.myLooper());
                }
            }
        }
    }

    public final String toString() {
        return "EventBus[indexCount=0, eventInheritance=" + this.f10484n + "]";
    }
}
