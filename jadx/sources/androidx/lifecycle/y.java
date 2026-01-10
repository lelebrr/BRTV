package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y extends p {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2016b = true;

    /* renamed from: c, reason: collision with root package name */
    public m.a f2017c = new m.a();
    public o d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakReference f2018e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2019g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2020h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f2021i;

    /* renamed from: j, reason: collision with root package name */
    public final v9.b f2022j;

    public y(w wVar) {
        o oVar = o.f1981b;
        this.d = oVar;
        this.f2021i = new ArrayList();
        this.f2018e = new WeakReference(wVar);
        this.f2022j = new v9.b(oVar);
    }

    @Override // androidx.lifecycle.p
    public final void a(v vVar) {
        u gVar;
        w wVar;
        ArrayList arrayList = this.f2021i;
        Object obj = null;
        int i6 = 1;
        j9.i.f(vVar, "observer");
        e("addObserver");
        o oVar = this.d;
        o oVar2 = o.f1980a;
        if (oVar != oVar2) {
            oVar2 = o.f1981b;
        }
        x xVar = new x();
        HashMap map = z.f2023a;
        boolean z7 = vVar instanceof u;
        boolean z10 = vVar instanceof e;
        if (z7 && z10) {
            gVar = new g((e) vVar, (u) vVar);
        } else if (z10) {
            gVar = new g((e) vVar, (u) null);
        } else if (z7) {
            gVar = (u) vVar;
        } else {
            Class<?> cls = vVar.getClass();
            if (z.b(cls) == 2) {
                Object obj2 = z.f2024b.get(cls);
                j9.i.c(obj2);
                List list = (List) obj2;
                if (list.size() == 1) {
                    z.a((Constructor) list.get(0), vVar);
                    throw null;
                }
                int size = list.size();
                i[] iVarArr = new i[size];
                if (size > 0) {
                    z.a((Constructor) list.get(0), vVar);
                    throw null;
                }
                gVar = new v1.a(i6, iVarArr);
            } else {
                gVar = new g(vVar);
            }
        }
        xVar.f2014b = gVar;
        xVar.f2013a = oVar2;
        m.a aVar = this.f2017c;
        m.c cVarC = aVar.c(vVar);
        if (cVarC != null) {
            obj = cVarC.f8103b;
        } else {
            HashMap map2 = aVar.f8098e;
            m.c cVar = new m.c(vVar, xVar);
            aVar.d++;
            m.c cVar2 = aVar.f8109b;
            if (cVar2 == null) {
                aVar.f8108a = cVar;
                aVar.f8109b = cVar;
            } else {
                cVar2.f8104c = cVar;
                cVar.d = cVar2;
                aVar.f8109b = cVar;
            }
            map2.put(vVar, cVar);
        }
        if (((x) obj) == null && (wVar = (w) this.f2018e.get()) != null) {
            boolean z11 = this.f != 0 || this.f2019g;
            o oVarD = d(vVar);
            this.f++;
            while (xVar.f2013a.compareTo(oVarD) < 0 && this.f2017c.f8098e.containsKey(vVar)) {
                arrayList.add(xVar.f2013a);
                l lVar = n.Companion;
                o oVar3 = xVar.f2013a;
                lVar.getClass();
                n nVarA = l.a(oVar3);
                if (nVarA == null) {
                    throw new IllegalStateException("no event up from " + xVar.f2013a);
                }
                xVar.a(wVar, nVarA);
                arrayList.remove(arrayList.size() - 1);
                oVarD = d(vVar);
            }
            if (!z11) {
                i();
            }
            this.f--;
        }
    }

    @Override // androidx.lifecycle.p
    public final o b() {
        return this.d;
    }

    @Override // androidx.lifecycle.p
    public final void c(v vVar) {
        j9.i.f(vVar, "observer");
        e("removeObserver");
        this.f2017c.d(vVar);
    }

    public final o d(v vVar) {
        x xVar;
        HashMap map = this.f2017c.f8098e;
        m.c cVar = map.containsKey(vVar) ? ((m.c) map.get(vVar)).d : null;
        o oVar = (cVar == null || (xVar = (x) cVar.f8103b) == null) ? null : xVar.f2013a;
        ArrayList arrayList = this.f2021i;
        o oVar2 = arrayList.isEmpty() ? null : (o) ea.q.e(1, arrayList);
        o oVar3 = this.d;
        j9.i.f(oVar3, "state1");
        if (oVar == null || oVar.compareTo(oVar3) >= 0) {
            oVar = oVar3;
        }
        return (oVar2 == null || oVar2.compareTo(oVar) >= 0) ? oVar : oVar2;
    }

    public final void e(String str) {
        if (this.f2016b) {
            l.a.V().f7921r.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(a.e.r("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void f(n nVar) {
        j9.i.f(nVar, "event");
        e("handleLifecycleEvent");
        g(nVar.a());
    }

    public final void g(o oVar) {
        o oVar2 = this.d;
        if (oVar2 == oVar) {
            return;
        }
        o oVar3 = o.f1981b;
        o oVar4 = o.f1980a;
        if (oVar2 == oVar3 && oVar == oVar4) {
            throw new IllegalStateException(("no event down from " + this.d + " in component " + this.f2018e.get()).toString());
        }
        this.d = oVar;
        if (this.f2019g || this.f != 0) {
            this.f2020h = true;
            return;
        }
        this.f2019g = true;
        i();
        this.f2019g = false;
        if (this.d == oVar4) {
            this.f2017c = new m.a();
        }
    }

    public final void h() {
        o oVar = o.f1982c;
        e("setCurrentState");
        g(oVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r7.f2020h = false;
        r7.f2022j.a(r7.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.y.i():void");
    }
}
