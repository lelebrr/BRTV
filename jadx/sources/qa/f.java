package qa;

import i9.p;
import t9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f9388b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f9389c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, String str, a9.d dVar) {
        super(dVar);
        this.f9388b = gVar;
        this.f9389c = str;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new f(this.f9388b, this.f9389c, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        f fVar = (f) create((s) obj, (a9.d) obj2);
        w8.l lVar = w8.l.f10832a;
        fVar.invokeSuspend(lVar);
        return lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        o9.d.I(obj);
        String strS = a2.a.s("8TdJFAL9QRj2K1MYG/BWEPYuWQk=\n", "omcWR1e/FVE=\n");
        g gVar = this.f9388b;
        org.bitspark.android.utils.m.m(gVar.f9390a.i0.f, strS);
        gVar.f9390a.i0.f10254j.h(this.f9389c);
        return w8.l.f10832a;
    }
}
