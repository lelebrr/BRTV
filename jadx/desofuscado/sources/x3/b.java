package x3;

import a.e;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f10990a;

    public b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f10990a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f10990a.equals(((b) obj).f10990a);
    }

    public final int hashCode() {
        return this.f10990a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return e.t(new StringBuilder("Encoding{name=\""), this.f10990a, "\"}");
    }
}
