package d7;

import java.io.Serializable;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final b7.i f6102a;

    /* renamed from: b, reason: collision with root package name */
    public final b5 f6103b;

    public c0(b7.i iVar, b5 b5Var) {
        this.f6102a = iVar;
        b5Var.getClass();
        this.f6103b = b5Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        b7.i iVar = this.f6102a;
        return this.f6103b.compare(iVar.apply(obj), iVar.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f6102a.equals(c0Var.f6102a) && this.f6103b.equals(c0Var.f6103b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6102a, this.f6103b});
    }

    public final String toString() {
        return this.f6103b + ".onResultOf(" + this.f6102a + ")";
    }
}
