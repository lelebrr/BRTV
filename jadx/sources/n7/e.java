package n7;

import java.io.IOException;
import java.util.List;
import l7.r;
import l7.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends r {

    /* renamed from: a, reason: collision with root package name */
    public r f8472a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f8473b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f8474c;
    public final /* synthetic */ l7.k d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s7.a f8475e;
    public final /* synthetic */ f f;

    public e(f fVar, boolean z7, boolean z10, l7.k kVar, s7.a aVar) {
        this.f = fVar;
        this.f8473b = z7;
        this.f8474c = z10;
        this.d = kVar;
        this.f8475e = aVar;
    }

    @Override // l7.r
    public final Object a(t7.a aVar) throws IOException {
        if (this.f8473b) {
            aVar.z();
            return null;
        }
        r rVar = this.f8472a;
        if (rVar == null) {
            s7.a aVar2 = this.f8475e;
            l7.k kVar = this.d;
            List<s> list = kVar.f8072e;
            s sVar = this.f;
            if (!list.contains(sVar)) {
                sVar = kVar.d;
            }
            boolean z7 = false;
            for (s sVar2 : list) {
                if (z7) {
                    r rVarA = sVar2.a(kVar, aVar2);
                    if (rVarA != null) {
                        this.f8472a = rVarA;
                        rVar = rVarA;
                    }
                } else if (sVar2 == sVar) {
                    z7 = true;
                }
            }
            throw new IllegalArgumentException("GSON cannot serialize " + aVar2);
        }
        return rVar.a(aVar);
    }

    @Override // l7.r
    public final void b(t7.b bVar, Object obj) throws IOException {
        if (this.f8474c) {
            bVar.i();
            return;
        }
        r rVar = this.f8472a;
        if (rVar == null) {
            s7.a aVar = this.f8475e;
            l7.k kVar = this.d;
            List<s> list = kVar.f8072e;
            s sVar = this.f;
            if (!list.contains(sVar)) {
                sVar = kVar.d;
            }
            boolean z7 = false;
            for (s sVar2 : list) {
                if (z7) {
                    r rVarA = sVar2.a(kVar, aVar);
                    if (rVarA != null) {
                        this.f8472a = rVarA;
                        rVar = rVarA;
                    }
                } else if (sVar2 == sVar) {
                    z7 = true;
                }
            }
            throw new IllegalArgumentException("GSON cannot serialize " + aVar);
        }
        rVar.b(bVar, obj);
    }
}
