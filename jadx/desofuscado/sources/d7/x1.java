package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x1 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6294a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6295b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6296c;

    public x1(Object obj, Object obj2, Object obj3) {
        this.f6294a = obj;
        this.f6295b = obj2;
        this.f6296c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f6294a;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f6295b);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f6296c);
        return new IllegalArgumentException(sb.toString());
    }
}
