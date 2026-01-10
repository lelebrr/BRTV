package d7;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b extends s implements w2 {
    @Override // d7.s, d7.p4
    public final Collection get(Object obj) {
        return (List) super.get(obj);
    }

    @Override // d7.s
    public final Collection r(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // d7.s
    public final Collection s(Collection collection, Object obj) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new j(this, obj, list, null) : new o(this, obj, list, null);
    }

    @Override // d7.s, d7.p4
    public final List get(Object obj) {
        return (List) super.get(obj);
    }
}
