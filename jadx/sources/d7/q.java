package d7;

import java.util.Collection;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends m implements Set {
    public final /* synthetic */ s4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(s4 s4Var, Object obj, Set set) {
        super(s4Var, obj, set, null);
        this.f = s4Var;
    }

    @Override // d7.m, java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zX = d0.x((Set) this.f6214b, collection);
        if (zX) {
            int size2 = this.f6214b.size();
            this.f.f6258g += size2 - size;
            e();
        }
        return zX;
    }
}
