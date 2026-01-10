package b3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z implements com.bumptech.glide.load.data.e, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3225a;

    /* renamed from: b, reason: collision with root package name */
    public final s.g f3226b;

    /* renamed from: c, reason: collision with root package name */
    public int f3227c;
    public com.bumptech.glide.g d;

    /* renamed from: e, reason: collision with root package name */
    public com.bumptech.glide.load.data.d f3228e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3229g;

    public z(ArrayList arrayList, s.g gVar) {
        this.f3226b = gVar;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f3225a = arrayList;
        this.f3227c = 0;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return ((com.bumptech.glide.load.data.e) this.f3225a.get(0)).a();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        List list = this.f;
        if (list != null) {
            this.f3226b.k(list);
        }
        this.f = null;
        Iterator it = this.f3225a.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).b();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        List list = this.f;
        r3.f.c(list, "Argument must not be null");
        list.add(exc);
        g();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f3229g = true;
        Iterator it = this.f3225a.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void d(Object obj) {
        if (obj != null) {
            this.f3228e.d(obj);
        } else {
            g();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        return ((com.bumptech.glide.load.data.e) this.f3225a.get(0)).e();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        this.d = gVar;
        this.f3228e = dVar;
        this.f = (List) this.f3226b.f();
        ((com.bumptech.glide.load.data.e) this.f3225a.get(this.f3227c)).f(gVar, this);
        if (this.f3229g) {
            cancel();
        }
    }

    public final void g() {
        if (this.f3229g) {
            return;
        }
        if (this.f3227c < this.f3225a.size() - 1) {
            this.f3227c++;
            f(this.d, this.f3228e);
        } else {
            r3.f.b(this.f);
            this.f3228e.c(new x2.t("Fetch failed", new ArrayList(this.f)));
        }
    }
}
