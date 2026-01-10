package q3;

import java.security.MessageDigest;
import r3.f;
import v2.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements e {

    /* renamed from: b, reason: collision with root package name */
    public final Object f9199b;

    public d(Object obj) {
        f.c(obj, "Argument must not be null");
        this.f9199b = obj;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(this.f9199b.toString().getBytes(e.f10660a));
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f9199b.equals(((d) obj).f9199b);
        }
        return false;
    }

    @Override // v2.e
    public final int hashCode() {
        return this.f9199b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f9199b + '}';
    }
}
