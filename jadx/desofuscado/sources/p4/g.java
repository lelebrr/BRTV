package p4;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final long f8875a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f8876b;

    public /* synthetic */ g(long j10, boolean z7) {
        this.f8875a = j10;
        this.f8876b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f8875a == gVar.f8875a && this.f8876b == gVar.f8876b && b5.l.h(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f8875a), 0, Boolean.valueOf(this.f8876b), null});
    }
}
