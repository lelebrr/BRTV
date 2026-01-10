package q2;

import m2.j;
import m2.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements e {

    /* renamed from: a, reason: collision with root package name */
    public final o2.a f9192a;

    /* renamed from: b, reason: collision with root package name */
    public final j f9193b;

    public c(o2.a aVar, j jVar) {
        this.f9192a = aVar;
        this.f9193b = jVar;
    }

    @Override // q2.e
    public final void a() {
        j jVar = this.f9193b;
        boolean z7 = jVar instanceof q;
        o2.a aVar = this.f9192a;
        if (z7) {
            aVar.g(((q) jVar).f8245a);
        } else if (jVar instanceof m2.e) {
            aVar.g(((m2.e) jVar).f8179a);
        }
    }
}
