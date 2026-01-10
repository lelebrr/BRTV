package d7;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 extends b5 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator[] f6235a;

    public p0(c0 c0Var, c0 c0Var2) {
        this.f6235a = new Comparator[]{c0Var, c0Var2};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i6 = 0;
        while (true) {
            Comparator[] comparatorArr = this.f6235a;
            if (i6 >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i6].compare(obj, obj2);
            if (iCompare != 0) {
                return iCompare;
            }
            i6++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p0) {
            return Arrays.equals(this.f6235a, ((p0) obj).f6235a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6235a);
    }

    public final String toString() {
        return a.e.t(new StringBuilder("Ordering.compound("), Arrays.toString(this.f6235a), ")");
    }
}
