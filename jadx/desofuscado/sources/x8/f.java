package x8;

import java.util.AbstractList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class f extends AbstractList implements List, k9.b {
    public abstract int c();

    public abstract Object d(int i6);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i6) {
        return d(i6);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return c();
    }
}
