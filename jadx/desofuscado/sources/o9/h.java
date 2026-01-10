package o9;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends f {
    public static final h d = new h(1, 0, 1);

    @Override // o9.f
    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            if (!isEmpty() || !((h) obj).isEmpty()) {
                h hVar = (h) obj;
                if (this.f8651a == hVar.f8651a) {
                    if (this.f8652b == hVar.f8652b) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // o9.f
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f8651a * 31) + this.f8652b;
    }

    @Override // o9.f
    public final boolean isEmpty() {
        return this.f8651a > this.f8652b;
    }

    @Override // o9.f
    public final String toString() {
        return this.f8651a + ".." + this.f8652b;
    }
}
