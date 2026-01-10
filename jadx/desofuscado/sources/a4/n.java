package a4;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final x3.b f138a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f139b;

    public n(x3.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f138a = bVar;
        this.f139b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f138a.equals(nVar.f138a)) {
            return Arrays.equals(this.f139b, nVar.f139b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f138a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f139b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f138a + ", bytes=[...]}";
    }
}
