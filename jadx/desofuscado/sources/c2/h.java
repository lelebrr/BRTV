package c2;

import i9.p;
import t9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f3354b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f3355c;
    public final /* synthetic */ m2.i d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l lVar, m2.i iVar, a9.d dVar) {
        super(dVar);
        this.f3355c = lVar;
        this.d = iVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new h(this.f3355c, this.d, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((h) create((s) obj, (a9.d) obj2)).invokeSuspend(w8.l.f10832a);
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        b9.a aVar = b9.a.f3322a;
        int i6 = this.f3354b;
        l lVar = this.f3355c;
        if (i6 == 0) {
            o9.d.I(obj);
            this.f3354b = 1;
            obj = l.a(lVar, this.d, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o9.d.I(obj);
        }
        if (((m2.j) obj) instanceof m2.e) {
            lVar.getClass();
        }
        return obj;
    }
}
