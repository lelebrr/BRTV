package x2;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Class f10907a;

    /* renamed from: b, reason: collision with root package name */
    public final List f10908b;

    /* renamed from: c, reason: collision with root package name */
    public final j3.a f10909c;
    public final s.g d;

    /* renamed from: e, reason: collision with root package name */
    public final String f10910e;

    public j(Class cls, Class cls2, Class cls3, List list, j3.a aVar, s.g gVar) {
        this.f10907a = cls;
        this.f10908b = list;
        this.f10909c = aVar;
        this.d = gVar;
        this.f10910e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final x a(int i6, int i10, c6.b bVar, com.bumptech.glide.load.data.g gVar, v2.h hVar) {
        x xVarB;
        v2.l lVar;
        int iL;
        boolean z7;
        boolean z10;
        boolean z11;
        boolean z12;
        v2.e dVar;
        s.g gVar2 = this.d;
        List list = (List) gVar2.f();
        try {
            x xVarB2 = b(gVar, i6, i10, hVar, list);
            gVar2.k(list);
            i iVar = (i) bVar.f3391b;
            iVar.getClass();
            Class<?> cls = xVarB2.get().getClass();
            int i11 = bVar.f3390a;
            g gVar3 = iVar.f10883a;
            v2.k kVarD = null;
            if (i11 != 4) {
                v2.l lVarE = gVar3.e(cls);
                xVarB = lVarE.b(iVar.f10888h, xVarB2, iVar.f10892l, iVar.f10893m);
                lVar = lVarE;
            } else {
                xVarB = xVarB2;
                lVar = null;
            }
            if (!xVarB2.equals(xVarB)) {
                xVarB2.d();
            }
            if (gVar3.f10866c.b().d.d(xVarB.c()) != null) {
                com.bumptech.glide.j jVarB = gVar3.f10866c.b();
                jVarB.getClass();
                kVarD = jVarB.d.d(xVarB.c());
                if (kVarD == null) {
                    throw new com.bumptech.glide.i(xVarB.c());
                }
                iL = kVarD.l(iVar.f10895o);
            } else {
                iL = 3;
            }
            v2.e eVar = iVar.f10901u;
            ArrayList arrayListB = gVar3.b();
            int size = arrayListB.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    z7 = false;
                    break;
                }
                if (((b3.t) arrayListB.get(i12)).f3218a.equals(eVar)) {
                    z7 = true;
                    break;
                }
                i12++;
            }
            switch (iVar.f10894n.f10913a) {
                default:
                    z10 = true;
                    if (((z7 || i11 != 3) && i11 != 1) || iL != 2) {
                    }
                    break;
                case 0:
                case 1:
                    z10 = false;
                    break;
            }
            if (z10) {
                if (kVarD == null) {
                    throw new com.bumptech.glide.i(xVarB.get().getClass());
                }
                int iA = u.h.a(iL);
                if (iA == 0) {
                    z11 = true;
                    z12 = false;
                    dVar = new d(iVar.f10901u, iVar.f10889i);
                } else {
                    if (iA != 1) {
                        throw new IllegalArgumentException("Unknown strategy: ".concat(iL != 1 ? iL != 2 ? iL != 3 ? "null" : "NONE" : "TRANSFORMED" : "SOURCE"));
                    }
                    z11 = true;
                    dVar = new z(gVar3.f10866c.f3515a, iVar.f10901u, iVar.f10889i, iVar.f10892l, iVar.f10893m, lVar, cls, iVar.f10895o);
                    z12 = false;
                }
                w wVar = (w) w.f10968e.f();
                wVar.d = z12;
                wVar.f10971c = z11;
                wVar.f10970b = xVarB;
                s.g gVar4 = iVar.f;
                gVar4.f9688b = dVar;
                gVar4.f9689c = kVarD;
                gVar4.d = wVar;
                xVarB = wVar;
            }
            return this.f10909c.e(xVarB, hVar);
        } catch (Throwable th) {
            gVar2.k(list);
            throw th;
        }
    }

    public final x b(com.bumptech.glide.load.data.g gVar, int i6, int i10, v2.h hVar, List list) throws t {
        List list2 = this.f10908b;
        int size = list2.size();
        x xVarA = null;
        for (int i11 = 0; i11 < size; i11++) {
            v2.j jVar = (v2.j) list2.get(i11);
            try {
                if (jVar.b(gVar.e(), hVar)) {
                    xVarA = jVar.a(gVar.e(), i6, i10, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e5) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + jVar, e5);
                }
                list.add(e5);
            }
            if (xVarA != null) {
                break;
            }
        }
        if (xVarA != null) {
            return xVarA;
        }
        throw new t(this.f10910e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f10907a + ", decoders=" + this.f10908b + ", transcoder=" + this.f10909c + '}';
    }
}
