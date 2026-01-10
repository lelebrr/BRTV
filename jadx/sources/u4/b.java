package u4;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f10333a;

    /* renamed from: b, reason: collision with root package name */
    public int f10334b;

    /* renamed from: c, reason: collision with root package name */
    public int f10335c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f10336e;
    public boolean f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10333a == bVar.f10333a && this.f10334b == bVar.f10334b && this.f10335c == bVar.f10335c && this.d == bVar.d && this.f10336e == bVar.f10336e && this.f == bVar.f;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f10333a), Integer.valueOf(this.f10334b), Integer.valueOf(this.f10335c), Integer.valueOf(this.d), Integer.valueOf(this.f10336e), Boolean.valueOf(this.f)});
    }
}
