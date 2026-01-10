package x3;

import com.google.android.gms.internal.cast.c3;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f10987a;

    /* renamed from: b, reason: collision with root package name */
    public final c3 f10988b;

    /* renamed from: c, reason: collision with root package name */
    public final c f10989c;

    public a(Integer num, c3 c3Var, c cVar) {
        this.f10987a = num;
        this.f10988b = c3Var;
        this.f10989c = cVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f10987a.equals(aVar.f10987a)) {
            if (this.f10988b.equals(aVar.f10988b) && this.f10989c.equals(aVar.f10989c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f10987a.hashCode() ^ 1000003) * 1000003) ^ this.f10988b.hashCode()) * 1000003) ^ this.f10989c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f10987a + ", payload=" + this.f10988b + ", priority=" + this.f10989c + "}";
    }
}
