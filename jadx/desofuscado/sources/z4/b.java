package z4;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f11587a;

    /* renamed from: b, reason: collision with root package name */
    public final l6.h f11588b;

    /* renamed from: c, reason: collision with root package name */
    public final y4.b f11589c;
    public final String d;

    public b(l6.h hVar, y4.b bVar, String str) {
        this.f11588b = hVar;
        this.f11589c = bVar;
        this.d = str;
        this.f11587a = Arrays.hashCode(new Object[]{hVar, bVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return b5.l.h(this.f11588b, bVar.f11588b) && b5.l.h(this.f11589c, bVar.f11589c) && b5.l.h(this.d, bVar.d);
    }

    public final int hashCode() {
        return this.f11587a;
    }
}
