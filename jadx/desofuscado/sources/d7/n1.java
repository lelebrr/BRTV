package d7;

import java.util.Collection;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n1 extends i1 implements Set {
    public abstract Set c();

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return obj == this || c().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return c().hashCode();
    }

    @Override // d7.i1
    public final boolean standardRemoveAll(Collection collection) {
        collection.getClass();
        return d0.x(this, collection);
    }
}
