package x2;

import d7.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10864a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f10865b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public com.bumptech.glide.f f10866c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public int f10867e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Class f10868g;

    /* renamed from: h, reason: collision with root package name */
    public b.a f10869h;

    /* renamed from: i, reason: collision with root package name */
    public v2.h f10870i;

    /* renamed from: j, reason: collision with root package name */
    public r3.b f10871j;

    /* renamed from: k, reason: collision with root package name */
    public Class f10872k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f10873l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10874m;

    /* renamed from: n, reason: collision with root package name */
    public v2.e f10875n;

    /* renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.g f10876o;

    /* renamed from: p, reason: collision with root package name */
    public k f10877p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f10878q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f10879r;

    public final ArrayList a() {
        boolean z7 = this.f10874m;
        ArrayList arrayList = this.f10865b;
        if (!z7) {
            this.f10874m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i6 = 0; i6 < size; i6++) {
                b3.t tVar = (b3.t) arrayListB.get(i6);
                if (!arrayList.contains(tVar.f3218a)) {
                    arrayList.add(tVar.f3218a);
                }
                int i10 = 0;
                while (true) {
                    List list = tVar.f3219b;
                    if (i10 < list.size()) {
                        if (!arrayList.contains(list.get(i10))) {
                            arrayList.add(list.get(i10));
                        }
                        i10++;
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z7 = this.f10873l;
        ArrayList arrayList = this.f10864a;
        if (!z7) {
            this.f10873l = true;
            arrayList.clear();
            List listG = this.f10866c.b().g(this.d);
            int size = listG.size();
            for (int i6 = 0; i6 < size; i6++) {
                b3.t tVarA = ((b3.u) listG.get(i6)).a(this.d, this.f10867e, this.f, this.f10870i);
                if (tVarA != null) {
                    arrayList.add(tVarA);
                }
            }
        }
        return arrayList;
    }

    public final v c(Class cls) {
        v vVar;
        com.bumptech.glide.j jVarB = this.f10866c.b();
        Class cls2 = this.f10868g;
        Class cls3 = this.f10872k;
        m3.b bVar = jVarB.f3533i;
        r3.l lVar = (r3.l) bVar.f8265b.getAndSet(null);
        if (lVar == null) {
            lVar = new r3.l();
        }
        lVar.f9506a = cls;
        lVar.f9507b = cls2;
        lVar.f9508c = cls3;
        synchronized (bVar.f8264a) {
            vVar = (v) bVar.f8264a.get(lVar);
        }
        bVar.f8265b.set(lVar);
        jVarB.f3533i.getClass();
        if (m3.b.f8263c.equals(vVar)) {
            return null;
        }
        if (vVar != null) {
            return vVar;
        }
        ArrayList arrayListE = jVarB.e(cls, cls2, cls3);
        v vVar2 = arrayListE.isEmpty() ? null : new v(cls, cls2, cls3, arrayListE, jVarB.f3534j);
        jVarB.f3533i.a(cls, cls2, cls3, vVar2);
        return vVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r1 = r3.f8262b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final v2.b d(java.lang.Object r6) {
        /*
            r5 = this;
            com.bumptech.glide.f r0 = r5.f10866c
            com.bumptech.glide.j r0 = r0.b()
            j3.c r0 = r0.f3528b
            java.lang.Class r1 = r6.getClass()
            monitor-enter(r0)
            java.util.ArrayList r2 = r0.f7432a     // Catch: java.lang.Throwable -> L2b
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L2b
        L13:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L2b
            if (r3 == 0) goto L2d
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L2b
            m3.a r3 = (m3.a) r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Class r4 = r3.f8261a     // Catch: java.lang.Throwable -> L2b
            boolean r4 = r4.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L2b
            if (r4 == 0) goto L13
            v2.b r1 = r3.f8262b     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r0)
            goto L2f
        L2b:
            r6 = move-exception
            goto L42
        L2d:
            monitor-exit(r0)
            r1 = 0
        L2f:
            if (r1 == 0) goto L32
            return r1
        L32:
            com.bumptech.glide.i r0 = new com.bumptech.glide.i
            java.lang.Class r6 = r6.getClass()
            java.lang.String r1 = "Failed to find source encoder for data class: "
            java.lang.String r6 = a.e.q(r6, r1)
            r0.<init>(r6)
            throw r0
        L42:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: x2.g.d(java.lang.Object):v2.b");
    }

    public final v2.l e(Class cls) {
        v2.l lVar = (v2.l) this.f10871j.get(cls);
        if (lVar == null) {
            Iterator it = ((g0) this.f10871j.entrySet()).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    lVar = (v2.l) entry.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (!this.f10871j.isEmpty() || !this.f10878q) {
            return d3.c.f6054b;
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }
}
