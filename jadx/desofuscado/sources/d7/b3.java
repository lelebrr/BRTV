package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b3 implements f3 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6093a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6094b;

    public b3(int i6, Object obj) {
        this.f6093a = obj;
        this.f6094b = i6;
    }

    @Override // d7.f3
    public f3 b() {
        return null;
    }

    @Override // d7.f3
    public final int c() {
        return this.f6094b;
    }

    @Override // d7.f3
    public final Object getKey() {
        return this.f6093a;
    }
}
