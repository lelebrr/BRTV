package t9;

import com.lzy.okgo.cache.CacheEntity;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class p extends a9.a implements a9.f {

    /* renamed from: b, reason: collision with root package name */
    public static final o f10222b = new o(a9.e.f178a, n.f10217a);

    public p() {
        super(a9.e.f178a);
    }

    @Override // a9.a, a9.i
    public final a9.i c(a9.h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        boolean z7 = hVar instanceof o;
        a9.j jVar = a9.j.f179a;
        if (z7) {
            o oVar = (o) hVar;
            a9.h hVar2 = this.f174a;
            if ((hVar2 == oVar || oVar.f10220b == hVar2) && oVar.a(this) != null) {
                return jVar;
            }
        } else if (a9.e.f178a == hVar) {
            return jVar;
        }
        return this;
    }

    public abstract void d(a9.i iVar, Runnable runnable);

    @Override // a9.a, a9.i
    public final a9.g e(a9.h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        if (!(hVar instanceof o)) {
            if (a9.e.f178a == hVar) {
                return this;
            }
            return null;
        }
        o oVar = (o) hVar;
        a9.h hVar2 = this.f174a;
        if (hVar2 != oVar && oVar.f10220b != hVar2) {
            return null;
        }
        a9.g gVarA = oVar.a(this);
        if (gVarA instanceof a9.g) {
            return gVarA;
        }
        return null;
    }

    public boolean g() {
        return !(this instanceof h1);
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + u.f(this);
    }
}
