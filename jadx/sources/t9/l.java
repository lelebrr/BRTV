package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10209a;

    /* renamed from: b, reason: collision with root package name */
    public final i9.l f10210b;

    public l(Object obj, i9.l lVar) {
        this.f10209a = obj;
        this.f10210b = lVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return j9.i.a(this.f10209a, lVar.f10209a) && j9.i.a(this.f10210b, lVar.f10210b);
    }

    public final int hashCode() {
        Object obj = this.f10209a;
        return this.f10210b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.f10209a + ", onCancellation=" + this.f10210b + ')';
    }
}
