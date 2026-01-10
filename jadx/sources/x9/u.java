package x9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class u extends j9.j implements i9.p {

    /* renamed from: b, reason: collision with root package name */
    public static final u f11132b = new u(2, 0);

    /* renamed from: c, reason: collision with root package name */
    public static final u f11133c = new u(2, 1);
    public static final u d = new u(2, 2);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11134a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u(int i6, int i10) {
        super(i6);
        this.f11134a = i10;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f11134a) {
            case 0:
                return obj;
            case 1:
                ea.q.n(obj);
                return null;
            default:
                return (w) obj;
        }
    }
}
