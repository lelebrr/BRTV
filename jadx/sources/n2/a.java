package n2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public final int f8374c;

    public a(int i6) {
        this.f8374c = i6;
        if (i6 <= 0) {
            throw new IllegalArgumentException("px must be > 0.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            if (this.f8374c == ((a) obj).f8374c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8374c;
    }

    public final String toString() {
        return String.valueOf(this.f8374c);
    }
}
