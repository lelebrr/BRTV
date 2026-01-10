package a4;

import android.util.Base64;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f129a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f130b;

    /* renamed from: c, reason: collision with root package name */
    public final x3.c f131c;

    public j(String str, byte[] bArr, x3.c cVar) {
        this.f129a = str;
        this.f130b = bArr;
        this.f131c = cVar;
    }

    public static a1.b a() {
        a1.b bVar = new a1.b(1, false);
        bVar.d = x3.c.f10991a;
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f129a.equals(jVar.f129a) && Arrays.equals(this.f130b, jVar.f130b) && this.f131c.equals(jVar.f131c);
    }

    public final int hashCode() {
        return ((((this.f129a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f130b)) * 1000003) ^ this.f131c.hashCode();
    }

    public final String toString() {
        byte[] bArr = this.f130b;
        return "TransportContext(" + this.f129a + ", " + this.f131c + ", " + (bArr == null ? "" : Base64.encodeToString(bArr, 2)) + ")";
    }
}
