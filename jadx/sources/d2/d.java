package d2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends c9.c {

    /* renamed from: a, reason: collision with root package name */
    public Object f6018a;

    /* renamed from: b, reason: collision with root package name */
    public aa.e f6019b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f6020c;
    public final /* synthetic */ e d;

    /* renamed from: e, reason: collision with root package name */
    public int f6021e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, c9.c cVar) {
        super(cVar);
        this.d = eVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        this.f6020c = obj;
        this.f6021e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
