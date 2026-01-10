package b3;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: e, reason: collision with root package name */
    public static final c f3166e = new c(6);
    public static final f0 f = new f0(2);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3167a;

    /* renamed from: b, reason: collision with root package name */
    public final c f3168b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f3169c;
    public final s.g d;

    public b0(s.g gVar) {
        c cVar = f3166e;
        this.f3167a = new ArrayList();
        this.f3169c = new HashSet();
        this.d = gVar;
        this.f3168b = cVar;
    }

    public final synchronized void a(Class cls, Class cls2, v vVar) {
        a0 a0Var = new a0(cls, cls2, vVar);
        ArrayList arrayList = this.f3167a;
        arrayList.add(arrayList.size(), a0Var);
    }

    public final synchronized u b(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f3167a.iterator();
            boolean z7 = false;
            while (true) {
                boolean z10 = true;
                if (!it.hasNext()) {
                    break;
                }
                a0 a0Var = (a0) it.next();
                if (this.f3169c.contains(a0Var)) {
                    z7 = true;
                } else {
                    if (!a0Var.f3160a.isAssignableFrom(cls) || !a0Var.f3161b.isAssignableFrom(cls2)) {
                        z10 = false;
                    }
                    if (z10) {
                        this.f3169c.add(a0Var);
                        arrayList.add(a0Var.f3162c.a(this));
                        this.f3169c.remove(a0Var);
                    }
                }
            }
            if (arrayList.size() > 1) {
                c cVar = this.f3168b;
                s.g gVar = this.d;
                cVar.getClass();
                return new b(arrayList, 2, gVar);
            }
            if (arrayList.size() == 1) {
                return (u) arrayList.get(0);
            }
            if (z7) {
                return f;
            }
            throw new com.bumptech.glide.i("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th) {
            this.f3169c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f3167a.iterator();
            while (it.hasNext()) {
                a0 a0Var = (a0) it.next();
                if (!this.f3169c.contains(a0Var) && a0Var.f3160a.isAssignableFrom(cls)) {
                    this.f3169c.add(a0Var);
                    arrayList.add(a0Var.f3162c.a(this));
                    this.f3169c.remove(a0Var);
                }
            }
        } finally {
        }
        return arrayList;
    }

    public final synchronized ArrayList d(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f3167a.iterator();
        while (it.hasNext()) {
            a0 a0Var = (a0) it.next();
            if (!arrayList.contains(a0Var.f3161b) && a0Var.f3160a.isAssignableFrom(cls)) {
                arrayList.add(a0Var.f3161b);
            }
        }
        return arrayList;
    }

    public final synchronized ArrayList e() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f3167a.iterator();
        while (it.hasNext()) {
            a0 a0Var = (a0) it.next();
            if (a0Var.f3160a.isAssignableFrom(k.class) && a0Var.f3161b.isAssignableFrom(InputStream.class)) {
                it.remove();
                arrayList.add(a0Var.f3162c);
            }
        }
        return arrayList;
    }

    public final synchronized ArrayList f(u2.b bVar) {
        ArrayList arrayListE;
        arrayListE = e();
        a(k.class, InputStream.class, bVar);
        return arrayListE;
    }
}
