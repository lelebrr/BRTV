package q3;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import r3.n;
import v2.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: b, reason: collision with root package name */
    public final int f9195b;

    /* renamed from: c, reason: collision with root package name */
    public final e f9196c;

    public a(int i6, e eVar) {
        this.f9195b = i6;
        this.f9196c = eVar;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        this.f9196c.a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f9195b).array());
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9195b == aVar.f9195b && this.f9196c.equals(aVar.f9196c);
    }

    @Override // v2.e
    public final int hashCode() {
        return n.h(this.f9195b, this.f9196c);
    }
}
