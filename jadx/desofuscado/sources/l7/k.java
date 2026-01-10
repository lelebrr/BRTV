package l7;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f8069a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f8070b;

    /* renamed from: c, reason: collision with root package name */
    public final l6.h f8071c;
    public final o7.c d;

    /* renamed from: e, reason: collision with root package name */
    public final List f8072e;
    public final boolean f;

    static {
        new s7.a(Object.class);
    }

    public k() {
        n7.f fVar = n7.f.f8476c;
        Map mapEmptyMap = Collections.emptyMap();
        Collections.emptyList();
        Collections.emptyList();
        List listEmptyList = Collections.emptyList();
        this.f8069a = new ThreadLocal();
        this.f8070b = new ConcurrentHashMap();
        l6.h hVar = new l6.h(mapEmptyMap);
        this.f8071c = hVar;
        this.f = true;
        ArrayList arrayList = new ArrayList();
        arrayList.add(o7.p.f8629y);
        arrayList.add(o7.h.f8582b);
        arrayList.add(fVar);
        arrayList.addAll(listEmptyList);
        arrayList.add(o7.p.f8619o);
        arrayList.add(o7.p.f8611g);
        arrayList.add(o7.p.d);
        arrayList.add(o7.p.f8610e);
        arrayList.add(o7.p.f);
        o7.g gVar = o7.p.f8615k;
        arrayList.add(new o7.n(Long.TYPE, Long.class, gVar));
        arrayList.add(new o7.n(Double.TYPE, Double.class, new h(0)));
        arrayList.add(new o7.n(Float.TYPE, Float.class, new h(1)));
        arrayList.add(o7.g.f8580b);
        arrayList.add(o7.p.f8612h);
        arrayList.add(o7.p.f8613i);
        arrayList.add(new o7.m(AtomicLong.class, new i(new i(gVar, 0), 2), 0));
        arrayList.add(new o7.m(AtomicLongArray.class, new i(new i(gVar, 1), 2), 0));
        arrayList.add(o7.p.f8614j);
        arrayList.add(o7.p.f8616l);
        arrayList.add(o7.p.f8620p);
        arrayList.add(o7.p.f8621q);
        arrayList.add(new o7.m(BigDecimal.class, o7.p.f8617m, 0));
        arrayList.add(new o7.m(BigInteger.class, o7.p.f8618n, 0));
        arrayList.add(o7.p.f8622r);
        arrayList.add(o7.p.f8623s);
        arrayList.add(o7.p.f8625u);
        arrayList.add(o7.p.f8626v);
        arrayList.add(o7.p.f8628x);
        arrayList.add(o7.p.f8624t);
        arrayList.add(o7.p.f8608b);
        arrayList.add(o7.d.f8573b);
        arrayList.add(o7.p.f8627w);
        if (r7.b.f9608a) {
            arrayList.add(r7.b.f9610c);
            arrayList.add(r7.b.f9609b);
            arrayList.add(r7.b.d);
        }
        arrayList.add(o7.b.d);
        arrayList.add(o7.p.f8607a);
        arrayList.add(new o7.c(hVar, 0));
        arrayList.add(new o7.c(hVar, 2));
        o7.c cVar = new o7.c(hVar, 1);
        this.d = cVar;
        arrayList.add(cVar);
        arrayList.add(o7.p.f8630z);
        arrayList.add(new o7.k(hVar, fVar, cVar));
        this.f8072e = Collections.unmodifiableList(arrayList);
    }

    public static void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l7.k.b(java.lang.String):java.lang.Object");
    }

    public final r c(s7.a aVar) {
        boolean z7;
        ConcurrentHashMap concurrentHashMap = this.f8070b;
        r rVar = (r) concurrentHashMap.get(aVar);
        if (rVar != null) {
            return rVar;
        }
        ThreadLocal threadLocal = this.f8069a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z7 = true;
        } else {
            z7 = false;
        }
        j jVar = (j) map.get(aVar);
        if (jVar != null) {
            return jVar;
        }
        try {
            j jVar2 = new j();
            map.put(aVar, jVar2);
            Iterator it = this.f8072e.iterator();
            while (it.hasNext()) {
                r rVarA = ((s) it.next()).a(this, aVar);
                if (rVarA != null) {
                    if (jVar2.f8068a != null) {
                        throw new AssertionError();
                    }
                    jVar2.f8068a = rVarA;
                    concurrentHashMap.put(aVar, rVarA);
                    map.remove(aVar);
                    if (z7) {
                        threadLocal.remove();
                    }
                    return rVarA;
                }
            }
            throw new IllegalArgumentException("GSON (2.8.9) cannot handle " + aVar);
        } catch (Throwable th) {
            map.remove(aVar);
            if (z7) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    public final t7.b d(Writer writer) {
        t7.b bVar = new t7.b(writer);
        bVar.f10175h = false;
        return bVar;
    }

    public final String e(Object obj) {
        if (obj == null) {
            StringWriter stringWriter = new StringWriter();
            try {
                g(d(stringWriter));
                return stringWriter.toString();
            } catch (IOException e5) {
                throw new n(e5);
            }
        }
        Class cls = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            f(obj, cls, d(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e10) {
            throw new n(e10);
        }
    }

    public final void f(Object obj, Class cls, t7.b bVar) {
        r rVarC = c(new s7.a(cls));
        boolean z7 = bVar.f10173e;
        bVar.f10173e = true;
        boolean z10 = bVar.f;
        bVar.f = this.f;
        boolean z11 = bVar.f10175h;
        bVar.f10175h = false;
        try {
            try {
                try {
                    rVarC.b(bVar, obj);
                } catch (AssertionError e5) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.9): " + e5.getMessage());
                    assertionError.initCause(e5);
                    throw assertionError;
                }
            } catch (IOException e10) {
                throw new n(e10);
            }
        } finally {
            bVar.f10173e = z7;
            bVar.f = z10;
            bVar.f10175h = z11;
        }
    }

    public final void g(t7.b bVar) {
        o oVar = o.f8074a;
        boolean z7 = bVar.f10173e;
        bVar.f10173e = true;
        boolean z10 = bVar.f;
        bVar.f = this.f;
        boolean z11 = bVar.f10175h;
        bVar.f10175h = false;
        try {
            try {
                n7.d.l(oVar, bVar);
            } catch (IOException e5) {
                throw new n(e5);
            } catch (AssertionError e10) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.9): " + e10.getMessage());
                assertionError.initCause(e10);
                throw assertionError;
            }
        } finally {
            bVar.f10173e = z7;
            bVar.f = z10;
            bVar.f10175h = z11;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.f8072e + ",instanceCreators:" + this.f8071c + "}";
    }
}
