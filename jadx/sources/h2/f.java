package h2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public i f7205a;

    /* renamed from: b, reason: collision with root package name */
    public k f7206b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f7207c;
    public final /* synthetic */ i d;

    /* renamed from: e, reason: collision with root package name */
    public int f7208e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(i iVar, c9.c cVar) {
        super(cVar);
        this.d = iVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.f7207c = obj;
        this.f7208e |= Integer.MIN_VALUE;
        return this.d.d(null, this);
    }
}
