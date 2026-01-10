package x2;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class y implements f, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final i f10972a;

    /* renamed from: b, reason: collision with root package name */
    public final g f10973b;

    /* renamed from: c, reason: collision with root package name */
    public int f10974c;
    public int d = -1;

    /* renamed from: e, reason: collision with root package name */
    public v2.e f10975e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public int f10976g;

    /* renamed from: h, reason: collision with root package name */
    public volatile b3.t f10977h;

    /* renamed from: i, reason: collision with root package name */
    public File f10978i;

    /* renamed from: j, reason: collision with root package name */
    public z f10979j;

    public y(g gVar, i iVar) {
        this.f10973b = gVar;
        this.f10972a = iVar;
    }

    @Override // x2.f
    public final boolean b() {
        List list;
        ArrayList arrayListA = this.f10973b.a();
        boolean z7 = false;
        if (arrayListA.isEmpty()) {
            return false;
        }
        g gVar = this.f10973b;
        com.bumptech.glide.j jVarB = gVar.f10866c.b();
        Class<?> cls = gVar.d.getClass();
        Class cls2 = gVar.f10868g;
        Class cls3 = gVar.f10872k;
        l6.h hVar = jVarB.f3532h;
        r3.l lVar = (r3.l) ((AtomicReference) hVar.f8016b).getAndSet(null);
        if (lVar == null) {
            lVar = new r3.l(cls, cls2, cls3);
        } else {
            lVar.f9506a = cls;
            lVar.f9507b = cls2;
            lVar.f9508c = cls3;
        }
        synchronized (((p.e) hVar.f8017c)) {
            list = (List) ((p.e) hVar.f8017c).get(lVar);
        }
        ((AtomicReference) hVar.f8016b).set(lVar);
        List list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = jVarB.f3527a.a(cls).iterator();
            while (it.hasNext()) {
                Iterator it2 = jVarB.f3529c.k((Class) it.next(), cls2).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!jVarB.f.e(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            jVarB.f3532h.o(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
            list2 = arrayList;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.f10973b.f10872k)) {
                return false;
            }
            throw new IllegalStateException("Failed to find any load path from " + this.f10973b.d.getClass() + " to " + this.f10973b.f10872k);
        }
        while (true) {
            List list3 = this.f;
            if (list3 != null && this.f10976g < list3.size()) {
                this.f10977h = null;
                while (!z7 && this.f10976g < this.f.size()) {
                    List list4 = this.f;
                    int i6 = this.f10976g;
                    this.f10976g = i6 + 1;
                    b3.u uVar = (b3.u) list4.get(i6);
                    File file = this.f10978i;
                    g gVar2 = this.f10973b;
                    this.f10977h = uVar.a(file, gVar2.f10867e, gVar2.f, gVar2.f10870i);
                    if (this.f10977h != null && this.f10973b.c(this.f10977h.f3220c.a()) != null) {
                        this.f10977h.f3220c.f(this.f10973b.f10876o, this);
                        z7 = true;
                    }
                }
                return z7;
            }
            int i10 = this.d + 1;
            this.d = i10;
            if (i10 >= list2.size()) {
                int i11 = this.f10974c + 1;
                this.f10974c = i11;
                if (i11 >= arrayListA.size()) {
                    return false;
                }
                this.d = 0;
            }
            v2.e eVar = (v2.e) arrayListA.get(this.f10974c);
            Class cls5 = (Class) list2.get(this.d);
            v2.l lVarE = this.f10973b.e(cls5);
            g gVar3 = this.f10973b;
            this.f10979j = new z(gVar3.f10866c.f3515a, eVar, gVar3.f10875n, gVar3.f10867e, gVar3.f, lVarE, cls5, gVar3.f10870i);
            File fileH = gVar3.f10869h.a().h(this.f10979j);
            this.f10978i = fileH;
            if (fileH != null) {
                this.f10975e = eVar;
                this.f = this.f10973b.f10866c.b().g(fileH);
                this.f10976g = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        this.f10972a.a(this.f10979j, exc, this.f10977h.f3220c, 4);
    }

    @Override // x2.f
    public final void cancel() {
        b3.t tVar = this.f10977h;
        if (tVar != null) {
            tVar.f3220c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void d(Object obj) {
        this.f10972a.c(this.f10975e, obj, this.f10977h.f3220c, 4, this.f10979j);
    }
}
