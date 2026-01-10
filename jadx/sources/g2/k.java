package g2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public l f7081a;

    /* renamed from: b, reason: collision with root package name */
    public e2.j f7082b;

    /* renamed from: c, reason: collision with root package name */
    public Object f7083c;
    public /* synthetic */ Object d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ l f7084e;
    public int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, c9.c cVar) {
        super(cVar);
        this.f7084e = lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return this.f7084e.a(this);
    }
}
