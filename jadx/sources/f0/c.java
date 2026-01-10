package f0;

import android.graphics.Insets;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: e, reason: collision with root package name */
    public static final c f6753e = new c(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f6754a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6755b;

    /* renamed from: c, reason: collision with root package name */
    public final int f6756c;
    public final int d;

    public c(int i6, int i10, int i11, int i12) {
        this.f6754a = i6;
        this.f6755b = i10;
        this.f6756c = i11;
        this.d = i12;
    }

    public static c a(int i6, int i10, int i11, int i12) {
        return (i6 == 0 && i10 == 0 && i11 == 0 && i12 == 0) ? f6753e : new c(i6, i10, i11, i12);
    }

    public static c b(Insets insets) {
        return a(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets c() {
        return b.a(this.f6754a, this.f6755b, this.f6756c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.d == cVar.d && this.f6754a == cVar.f6754a && this.f6756c == cVar.f6756c && this.f6755b == cVar.f6755b;
    }

    public final int hashCode() {
        return (((((this.f6754a * 31) + this.f6755b) * 31) + this.f6756c) * 31) + this.d;
    }

    public final String toString() {
        return "Insets{left=" + this.f6754a + ", top=" + this.f6755b + ", right=" + this.f6756c + ", bottom=" + this.d + '}';
    }
}
