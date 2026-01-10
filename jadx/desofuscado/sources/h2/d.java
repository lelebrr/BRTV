package h2;

import g2.m;
import i9.p;
import j9.n;
import t9.s;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f7191b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f7192c;
    public final /* synthetic */ n d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f7193e;
    public final /* synthetic */ m2.i f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f7194g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ n f7195h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ c2.d f7196i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(i iVar, n nVar, n nVar2, m2.i iVar2, Object obj, n nVar3, c2.d dVar, a9.d dVar2) {
        super(dVar2);
        this.f7192c = iVar;
        this.d = nVar;
        this.f7193e = nVar2;
        this.f = iVar2;
        this.f7194g = obj;
        this.f7195h = nVar3;
        this.f7196i = dVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new d(this.f7192c, this.d, this.f7193e, this.f, this.f7194g, this.f7195h, this.f7196i, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((d) create((s) obj, (a9.d) obj2)).invokeSuspend(l.f10832a);
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        b9.a aVar = b9.a.f3322a;
        int i6 = this.f7191b;
        if (i6 == 0) {
            o9.d.I(obj);
            m mVar = (m) this.d.f7476a;
            c2.c cVar = (c2.c) this.f7193e.f7476a;
            m2.m mVar2 = (m2.m) this.f7195h.f7476a;
            this.f7191b = 1;
            obj = i.a(this.f7192c, mVar, cVar, this.f, this.f7194g, mVar2, this.f7196i, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o9.d.I(obj);
        }
        return obj;
    }
}
