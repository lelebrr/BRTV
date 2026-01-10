package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w0 extends u4 {
    public final /* synthetic */ y0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(y0 y0Var) {
        super(y0Var);
        this.d = y0Var;
    }

    @Override // d7.u4, d7.v4
    public final int b(int i6, Object obj) {
        d0.d(i6, "occurrences");
        if (i6 == 0) {
            return count(obj);
        }
        y0 y0Var = this.d;
        Collection collection = (Collection) y0Var.f.d().get(obj);
        int i10 = 0;
        if (collection == null) {
            return 0;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (y0Var.f6305g.apply(new r1(obj, it.next())) && (i10 = i10 + 1) <= i6) {
                it.remove();
            }
        }
        return i10;
    }

    @Override // d7.z, d7.v4
    public final Set entrySet() {
        return new y(this, 1);
    }
}
