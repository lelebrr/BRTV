package d7;

import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l2 extends c2 {
    @Override // d7.c2
    public final int a(Iterable iterable) {
        if (iterable instanceof Set) {
            return Math.max(4, ((Set) iterable).size());
        }
        return 4;
    }

    @Override // d7.c2
    public final p1 b(int i6) {
        int i10 = k2.f6197c;
        d0.d(i6, "expectedSize");
        j2 j2Var = new j2(i6);
        j2Var.d = new Object[k2.j(i6)];
        return j2Var;
    }

    @Override // d7.c2
    public final c2 d(Object obj, Object obj2) {
        super.d(obj, obj2);
        return this;
    }
}
