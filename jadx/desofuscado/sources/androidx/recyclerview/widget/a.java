package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f2798a;

    /* renamed from: b, reason: collision with root package name */
    public int f2799b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2800c;
    public int d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        int i6 = this.f2798a;
        if (i6 != aVar.f2798a) {
            return false;
        }
        if (i6 == 8 && Math.abs(this.d - this.f2799b) == 1 && this.d == aVar.f2799b && this.f2799b == aVar.d) {
            return true;
        }
        if (this.d != aVar.d || this.f2799b != aVar.f2799b) {
            return false;
        }
        Object obj2 = this.f2800c;
        if (obj2 != null) {
            if (!obj2.equals(aVar.f2800c)) {
                return false;
            }
        } else if (aVar.f2800c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f2798a * 31) + this.f2799b) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i6 = this.f2798a;
        sb.append(i6 != 1 ? i6 != 2 ? i6 != 4 ? i6 != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f2799b);
        sb.append("c:");
        sb.append(this.d);
        sb.append(",p:");
        sb.append(this.f2800c);
        sb.append("]");
        return sb.toString();
    }
}
