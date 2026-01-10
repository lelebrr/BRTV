package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m extends j9.j implements i9.p {

    /* renamed from: b, reason: collision with root package name */
    public static final m f10212b = new m(2, 0);

    /* renamed from: c, reason: collision with root package name */
    public static final m f10213c = new m(2, 1);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10214a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(int i6, int i10) {
        super(i6);
        this.f10214a = i10;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f10214a) {
            case 0:
                return ((a9.i) obj).f((a9.g) obj2);
            case 1:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                return bool;
            default:
                return ((a9.i) obj).f((a9.g) obj2);
        }
    }
}
