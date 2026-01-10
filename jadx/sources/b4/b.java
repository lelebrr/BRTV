package b4;

import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3232a;

    /* renamed from: b, reason: collision with root package name */
    public final k4.a f3233b;

    /* renamed from: c, reason: collision with root package name */
    public final k4.a f3234c;
    public final String d;

    public b(Context context, k4.a aVar, k4.a aVar2, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f3232a = context;
        if (aVar == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f3233b = aVar;
        if (aVar2 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f3234c = aVar2;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f3232a.equals(((b) cVar).f3232a)) {
            b bVar = (b) cVar;
            if (this.f3233b.equals(bVar.f3233b) && this.f3234c.equals(bVar.f3234c) && this.d.equals(bVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f3232a.hashCode() ^ 1000003) * 1000003) ^ this.f3233b.hashCode()) * 1000003) ^ this.f3234c.hashCode()) * 1000003) ^ this.d.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f3232a);
        sb.append(", wallClock=");
        sb.append(this.f3233b);
        sb.append(", monotonicClock=");
        sb.append(this.f3234c);
        sb.append(", backendName=");
        return a.e.t(sb, this.d, "}");
    }
}
