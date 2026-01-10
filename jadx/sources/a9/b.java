package a9;

import i9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f175a;

    public /* synthetic */ b(int i6) {
        this.f175a = i6;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        c cVar;
        switch (this.f175a) {
            case 0:
                String str = (String) obj;
                g gVar = (g) obj2;
                j9.i.f(str, "acc");
                if (str.length() == 0) {
                    return gVar.toString();
                }
                return str + ", " + gVar;
            default:
                i iVar = (i) obj;
                g gVar2 = (g) obj2;
                j9.i.f(iVar, "acc");
                i iVarC = iVar.c(gVar2.getKey());
                j jVar = j.f179a;
                if (iVarC == jVar) {
                    return gVar2;
                }
                e eVar = e.f178a;
                f fVar = (f) iVarC.e(eVar);
                if (fVar == null) {
                    cVar = new c(gVar2, iVarC);
                } else {
                    i iVarC2 = iVarC.c(eVar);
                    if (iVarC2 == jVar) {
                        return new c(fVar, gVar2);
                    }
                    cVar = new c(fVar, new c(gVar2, iVarC2));
                }
                return cVar;
        }
    }
}
