package h2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public k f7228a;

    /* renamed from: b, reason: collision with root package name */
    public i f7229b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f7230c;
    public final /* synthetic */ k d;

    /* renamed from: e, reason: collision with root package name */
    public int f7231e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar, c9.c cVar) {
        super(cVar);
        this.d = kVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.f7230c = obj;
        this.f7231e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
