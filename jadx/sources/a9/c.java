package a9;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cache.CacheEntity;
import i9.p;
import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements i, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final i f176a;

    /* renamed from: b, reason: collision with root package name */
    public final g f177b;

    public c(g gVar, i iVar) {
        j9.i.f(iVar, TtmlNode.LEFT);
        this.f176a = iVar;
        this.f177b = gVar;
    }

    @Override // a9.i
    public final Object a(Object obj, p pVar) {
        return pVar.invoke(this.f176a.a(obj, pVar), this.f177b);
    }

    @Override // a9.i
    public final i c(h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        g gVar = this.f177b;
        g gVarE = gVar.e(hVar);
        i iVar = this.f176a;
        if (gVarE != null) {
            return iVar;
        }
        i iVarC = iVar.c(hVar);
        return iVarC == iVar ? this : iVarC == j.f179a ? gVar : new c(gVar, iVarC);
    }

    @Override // a9.i
    public final g e(h hVar) {
        j9.i.f(hVar, CacheEntity.KEY);
        c cVar = this;
        while (true) {
            g gVarE = cVar.f177b.e(hVar);
            if (gVarE != null) {
                return gVarE;
            }
            i iVar = cVar.f176a;
            if (!(iVar instanceof c)) {
                return iVar.e(hVar);
            }
            cVar = (c) iVar;
        }
    }

    public final boolean equals(Object obj) {
        boolean zA;
        if (this != obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            cVar.getClass();
            int i6 = 2;
            c cVar2 = cVar;
            int i10 = 2;
            while (true) {
                i iVar = cVar2.f176a;
                cVar2 = iVar instanceof c ? (c) iVar : null;
                if (cVar2 == null) {
                    break;
                }
                i10++;
            }
            c cVar3 = this;
            while (true) {
                i iVar2 = cVar3.f176a;
                cVar3 = iVar2 instanceof c ? (c) iVar2 : null;
                if (cVar3 == null) {
                    break;
                }
                i6++;
            }
            if (i10 != i6) {
                return false;
            }
            c cVar4 = this;
            while (true) {
                g gVar = cVar4.f177b;
                if (!j9.i.a(cVar.e(gVar.getKey()), gVar)) {
                    zA = false;
                    break;
                }
                i iVar3 = cVar4.f176a;
                if (!(iVar3 instanceof c)) {
                    j9.i.d(iVar3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    g gVar2 = (g) iVar3;
                    zA = j9.i.a(cVar.e(gVar2.getKey()), gVar2);
                    break;
                }
                cVar4 = (c) iVar3;
            }
            if (!zA) {
                return false;
            }
        }
        return true;
    }

    @Override // a9.i
    public final i f(i iVar) {
        return com.bumptech.glide.c.j(this, iVar);
    }

    public final int hashCode() {
        return this.f177b.hashCode() + this.f176a.hashCode();
    }

    public final String toString() {
        return "[" + ((String) a("", new b(0))) + ']';
    }
}
