package p;

import com.lzy.okgo.cache.CacheEntity;
import m2.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public final int f8852a;

    /* renamed from: b, reason: collision with root package name */
    public final n f8853b;

    /* renamed from: c, reason: collision with root package name */
    public final q.b f8854c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f8855e;
    public int f;

    public k(int i6) {
        this.f8852a = i6;
        if (i6 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f8853b = new n();
        this.f8854c = new q.b(0);
    }

    public void a(Object obj, Object obj2, Object obj3) {
        j9.i.f(obj, CacheEntity.KEY);
        j9.i.f(obj2, "oldValue");
    }

    public final Object b(Object obj) {
        j9.i.f(obj, CacheEntity.KEY);
        synchronized (this.f8854c) {
            n nVar = this.f8853b;
            nVar.getClass();
            Object obj2 = nVar.f8242a.get(obj);
            if (obj2 != null) {
                this.f8855e++;
                return obj2;
            }
            this.f++;
            return null;
        }
    }

    public final int c() {
        int i6;
        synchronized (this.f8854c) {
            i6 = this.f8852a;
        }
        return i6;
    }

    public final Object d(Object obj, Object obj2) {
        Object objPut;
        j9.i.f(obj, CacheEntity.KEY);
        j9.i.f(obj2, "value");
        synchronized (this.f8854c) {
            this.d += f(obj, obj2);
            n nVar = this.f8853b;
            nVar.getClass();
            objPut = nVar.f8242a.put(obj, obj2);
            if (objPut != null) {
                this.d -= f(obj, objPut);
            }
        }
        if (objPut != null) {
            a(obj, objPut, obj2);
        }
        i(this.f8852a);
        return objPut;
    }

    public final Object e(Object obj) {
        Object objRemove;
        j9.i.f(obj, CacheEntity.KEY);
        synchronized (this.f8854c) {
            n nVar = this.f8853b;
            nVar.getClass();
            objRemove = nVar.f8242a.remove(obj);
            if (objRemove != null) {
                this.d -= f(obj, objRemove);
            }
        }
        if (objRemove != null) {
            a(obj, objRemove, null);
        }
        return objRemove;
    }

    public final int f(Object obj, Object obj2) {
        int iH = h(obj, obj2);
        if (iH >= 0) {
            return iH;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    public final int g() {
        int i6;
        synchronized (this.f8854c) {
            i6 = this.d;
        }
        return i6;
    }

    public int h(Object obj, Object obj2) {
        j9.i.f(obj, CacheEntity.KEY);
        j9.i.f(obj2, "value");
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0086, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008e, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i(int r7) {
        /*
            r6 = this;
        L0:
            q.b r0 = r6.f8854c
            monitor-enter(r0)
            int r1 = r6.d     // Catch: java.lang.Throwable -> L16
            if (r1 < 0) goto L87
            m2.n r1 = r6.f8853b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f8242a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L19
            int r1 = r6.d     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L87
            goto L19
        L16:
            r7 = move-exception
            goto L8f
        L19:
            int r1 = r6.d     // Catch: java.lang.Throwable -> L16
            if (r1 <= r7) goto L85
            m2.n r1 = r6.f8853b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f8242a     // Catch: java.lang.Throwable -> L16
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r1 == 0) goto L28
            goto L85
        L28:
            m2.n r1 = r6.f8853b     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r1 = r1.f8242a     // Catch: java.lang.Throwable -> L16
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L16
            java.lang.String r2 = "map.entries"
            j9.i.e(r1, r2)     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> L16
            r3 = 0
            if (r2 == 0) goto L4a
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L16
            if (r2 == 0) goto L44
        L42:
            r1 = r3
            goto L59
        L44:
            r2 = 0
            java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L16
            goto L59
        L4a:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L16
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L16
            if (r2 != 0) goto L55
            goto L42
        L55:
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> L16
        L59:
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L16
            if (r1 != 0) goto L5f
            monitor-exit(r0)
            return
        L5f:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L16
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L16
            m2.n r4 = r6.f8853b     // Catch: java.lang.Throwable -> L16
            r4.getClass()     // Catch: java.lang.Throwable -> L16
            java.lang.String r5 = "key"
            j9.i.f(r2, r5)     // Catch: java.lang.Throwable -> L16
            java.util.LinkedHashMap r4 = r4.f8242a     // Catch: java.lang.Throwable -> L16
            r4.remove(r2)     // Catch: java.lang.Throwable -> L16
            int r4 = r6.d     // Catch: java.lang.Throwable -> L16
            int r5 = r6.f(r2, r1)     // Catch: java.lang.Throwable -> L16
            int r4 = r4 - r5
            r6.d = r4     // Catch: java.lang.Throwable -> L16
            monitor-exit(r0)
            r6.a(r2, r1, r3)
            goto L0
        L85:
            monitor-exit(r0)
            return
        L87:
            java.lang.String r7 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L16
            r1.<init>(r7)     // Catch: java.lang.Throwable -> L16
            throw r1     // Catch: java.lang.Throwable -> L16
        L8f:
            monitor-exit(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p.k.i(int):void");
    }

    public final String toString() {
        String str;
        synchronized (this.f8854c) {
            try {
                int i6 = this.f8855e;
                int i10 = this.f + i6;
                str = "LruCache[maxSize=" + this.f8852a + ",hits=" + this.f8855e + ",misses=" + this.f + ",hitRate=" + (i10 != 0 ? (i6 * 100) / i10 : 0) + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
