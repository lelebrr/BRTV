package p8;

import java.util.concurrent.TimeUnit;
import q8.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends a {

    /* renamed from: k, reason: collision with root package name */
    public final h f8928k;

    public g(o9.d dVar, h hVar) {
        super(dVar);
        this.f8928k = hVar;
    }

    @Override // o9.d
    public final void G(i8.c cVar) {
        f fVar = new f(cVar);
        cVar.c(fVar);
        a3.c cVar2 = new a3.c(this, 26, fVar);
        h hVar = this.f8928k;
        hVar.getClass();
        m8.a.c(fVar, hVar.b(cVar2, TimeUnit.NANOSECONDS));
    }
}
