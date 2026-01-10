package com.bumptech.glide;

import b3.u;
import b3.v;
import b3.w;
import b3.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final y f3527a;

    /* renamed from: b, reason: collision with root package name */
    public final j3.c f3528b;

    /* renamed from: c, reason: collision with root package name */
    public final l6.h f3529c;
    public final j3.c d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.i f3530e;
    public final j3.c f;

    /* renamed from: g, reason: collision with root package name */
    public final j3.c f3531g;

    /* renamed from: h, reason: collision with root package name */
    public final l6.h f3532h = new l6.h(1);

    /* renamed from: i, reason: collision with root package name */
    public final m3.b f3533i = new m3.b();

    /* renamed from: j, reason: collision with root package name */
    public final s.g f3534j;

    public j() {
        s.g gVar = new s.g(new m0.d(20), new f0(1), new q.b(2));
        this.f3534j = gVar;
        this.f3527a = new y(gVar);
        this.f3528b = new j3.c(1);
        this.f3529c = new l6.h(2);
        this.d = new j3.c(3);
        this.f3530e = new com.bumptech.glide.load.data.i();
        this.f = new j3.c(0);
        this.f3531g = new j3.c(2);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        l6.h hVar = this.f3529c;
        synchronized (hVar) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) hVar.f8016b);
                ((ArrayList) hVar.f8016b).clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((ArrayList) hVar.f8016b).add((String) it2.next());
                }
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    String str = (String) it3.next();
                    if (!arrayList.contains(str)) {
                        ((ArrayList) hVar.f8016b).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Class cls, Class cls2, v vVar) {
        y yVar = this.f3527a;
        synchronized (yVar) {
            yVar.f3223a.a(cls, cls2, vVar);
            yVar.f3224b.f3222a.clear();
        }
    }

    public final void b(Class cls, v2.b bVar) {
        j3.c cVar = this.f3528b;
        synchronized (cVar) {
            cVar.f7432a.add(new m3.a(cls, bVar));
        }
    }

    public final void c(Class cls, v2.k kVar) {
        j3.c cVar = this.d;
        synchronized (cVar) {
            cVar.f7432a.add(new m3.d(cls, kVar));
        }
    }

    public final void d(String str, Class cls, Class cls2, v2.j jVar) {
        l6.h hVar = this.f3529c;
        synchronized (hVar) {
            hVar.j(str).add(new m3.c(cls, cls2, jVar));
        }
    }

    public final ArrayList e(Class cls, Class cls2, Class cls3) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.f3529c.k(cls, cls2).iterator();
        while (it.hasNext()) {
            Class cls4 = (Class) it.next();
            Iterator it2 = this.f.e(cls4, cls3).iterator();
            while (it2.hasNext()) {
                Class cls5 = (Class) it2.next();
                l6.h hVar = this.f3529c;
                synchronized (hVar) {
                    arrayList = new ArrayList();
                    Iterator it3 = ((ArrayList) hVar.f8016b).iterator();
                    while (it3.hasNext()) {
                        List<m3.c> list = (List) ((HashMap) hVar.f8017c).get((String) it3.next());
                        if (list != null) {
                            for (m3.c cVar : list) {
                                if (cVar.f8266a.isAssignableFrom(cls) && cls4.isAssignableFrom(cVar.f8267b)) {
                                    arrayList.add(cVar.f8268c);
                                }
                            }
                        }
                    }
                }
                arrayList2.add(new x2.j(cls, cls4, cls5, arrayList, this.f.c(cls4, cls5), this.f3534j));
            }
        }
        return arrayList2;
    }

    public final ArrayList f() {
        ArrayList arrayList;
        j3.c cVar = this.f3531g;
        synchronized (cVar) {
            arrayList = cVar.f7432a;
        }
        if (arrayList.isEmpty()) {
            throw new i("Failed to find image header parser.");
        }
        return arrayList;
    }

    public final List g(Object obj) {
        List listUnmodifiableList;
        y yVar = this.f3527a;
        yVar.getClass();
        Class<?> cls = obj.getClass();
        synchronized (yVar) {
            w wVar = (w) yVar.f3224b.f3222a.get(cls);
            listUnmodifiableList = wVar == null ? null : wVar.f3221a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(yVar.f3223a.c(cls));
                if (((w) yVar.f3224b.f3222a.put(cls, new w(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new i("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List listEmptyList = Collections.emptyList();
        boolean z7 = true;
        for (int i6 = 0; i6 < size; i6++) {
            u uVar = (u) listUnmodifiableList.get(i6);
            if (uVar.b(obj)) {
                if (z7) {
                    listEmptyList = new ArrayList(size - i6);
                    z7 = false;
                }
                listEmptyList.add(uVar);
            }
        }
        if (!listEmptyList.isEmpty()) {
            return listEmptyList;
        }
        throw new i("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    public final com.bumptech.glide.load.data.g h(Object obj) {
        com.bumptech.glide.load.data.g gVarB;
        com.bumptech.glide.load.data.i iVar = this.f3530e;
        synchronized (iVar) {
            try {
                r3.f.b(obj);
                com.bumptech.glide.load.data.f fVar = (com.bumptech.glide.load.data.f) ((HashMap) iVar.f3555b).get(obj.getClass());
                if (fVar == null) {
                    Iterator it = ((HashMap) iVar.f3555b).values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        com.bumptech.glide.load.data.f fVar2 = (com.bumptech.glide.load.data.f) it.next();
                        if (fVar2.a().isAssignableFrom(obj.getClass())) {
                            fVar = fVar2;
                            break;
                        }
                    }
                }
                if (fVar == null) {
                    fVar = com.bumptech.glide.load.data.i.f3553c;
                }
                gVarB = fVar.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVarB;
    }

    public final void i(com.bumptech.glide.load.data.f fVar) {
        com.bumptech.glide.load.data.i iVar = this.f3530e;
        synchronized (iVar) {
            ((HashMap) iVar.f3555b).put(fVar.a(), fVar);
        }
    }

    public final void j(Class cls, Class cls2, j3.a aVar) {
        j3.c cVar = this.f;
        synchronized (cVar) {
            cVar.f7432a.add(new j3.b(cls, cls2, aVar));
        }
    }

    public final void k(v2.d dVar) {
        j3.c cVar = this.f3531g;
        synchronized (cVar) {
            cVar.f7432a.add(dVar);
        }
    }

    public final void l(u2.b bVar) {
        y yVar = this.f3527a;
        synchronized (yVar) {
            Iterator it = yVar.f3223a.f(bVar).iterator();
            while (it.hasNext()) {
                ((v) it.next()).getClass();
            }
            yVar.f3224b.f3222a.clear();
        }
    }
}
