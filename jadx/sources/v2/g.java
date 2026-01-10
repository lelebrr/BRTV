package v2;

import android.text.TextUtils;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final q.b f10661e = new q.b(7);

    /* renamed from: a, reason: collision with root package name */
    public final Object f10662a;

    /* renamed from: b, reason: collision with root package name */
    public final f f10663b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10664c;
    public volatile byte[] d;

    public g(String str, Object obj, f fVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f10664c = str;
        this.f10662a = obj;
        this.f10663b = fVar;
    }

    public static g a(Object obj, String str) {
        return new g(str, obj, f10661e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f10664c.equals(((g) obj).f10664c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10664c.hashCode();
    }

    public final String toString() {
        return a.e.t(new StringBuilder("Option{key='"), this.f10664c, "'}");
    }
}
