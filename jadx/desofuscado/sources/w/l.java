package w;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public n f10779a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f10780b;

    public static long a(g gVar, long j10) {
        n nVar = gVar.d;
        if (nVar instanceof j) {
            return j10;
        }
        ArrayList arrayList = gVar.f10775k;
        int size = arrayList.size();
        long jMin = j10;
        for (int i6 = 0; i6 < size; i6++) {
            e eVar = (e) arrayList.get(i6);
            if (eVar instanceof g) {
                g gVar2 = (g) eVar;
                if (gVar2.d != nVar) {
                    jMin = Math.min(jMin, a(gVar2, gVar2.f + j10));
                }
            }
        }
        if (gVar != nVar.f10789i) {
            return jMin;
        }
        long j11 = nVar.j();
        long j12 = j10 - j11;
        return Math.min(Math.min(jMin, a(nVar.f10788h, j12)), j12 - r9.f);
    }

    public static long b(g gVar, long j10) {
        n nVar = gVar.d;
        if (nVar instanceof j) {
            return j10;
        }
        ArrayList arrayList = gVar.f10775k;
        int size = arrayList.size();
        long jMax = j10;
        for (int i6 = 0; i6 < size; i6++) {
            e eVar = (e) arrayList.get(i6);
            if (eVar instanceof g) {
                g gVar2 = (g) eVar;
                if (gVar2.d != nVar) {
                    jMax = Math.max(jMax, b(gVar2, gVar2.f + j10));
                }
            }
        }
        if (gVar != nVar.f10788h) {
            return jMax;
        }
        long j11 = nVar.j();
        long j12 = j10 + j11;
        return Math.max(Math.max(jMax, b(nVar.f10789i, j12)), j12 - r9.f);
    }
}
