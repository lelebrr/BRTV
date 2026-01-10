package g2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f7078a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f7079b;

    /* renamed from: c, reason: collision with root package name */
    public int f7080c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(l lVar, c9.c cVar) {
        super(cVar);
        this.f7079b = lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.f7078a = obj;
        this.f7080c |= Integer.MIN_VALUE;
        return this.f7079b.b(null, this);
    }
}
