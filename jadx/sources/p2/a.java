package p2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final float f8863a;

    /* renamed from: b, reason: collision with root package name */
    public final float f8864b;

    /* renamed from: c, reason: collision with root package name */
    public final float f8865c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8866e;

    public a(float f) {
        this.f8863a = f;
        this.f8864b = f;
        this.f8865c = f;
        this.d = f;
        if (f < 0.0f || f < 0.0f || f < 0.0f || f < 0.0f) {
            throw new IllegalArgumentException("All radii must be >= 0.");
        }
        this.f8866e = a.class.getName() + '-' + f + ',' + f + ',' + f + ',' + f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f8863a == aVar.f8863a && this.f8864b == aVar.f8864b && this.f8865c == aVar.f8865c && this.d == aVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.d) + ((Float.floatToIntBits(this.f8865c) + ((Float.floatToIntBits(this.f8864b) + (Float.floatToIntBits(this.f8863a) * 31)) * 31)) * 31);
    }
}
