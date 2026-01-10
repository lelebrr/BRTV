package c7;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b0 f3433a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3434b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b0 f3435c;

    public m(b0 b0Var, int i6) {
        this.f3434b = i6;
        this.f3435c = b0Var;
        this.f3433a = b0Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f3433a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry;
        Object key;
        b0 b0Var;
        Object obj2;
        switch (this.f3434b) {
            case 0:
                return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (b0Var = this.f3435c).get(key)) != null && b0Var.f.c(entry.getValue(), obj2);
            default:
                return this.f3435c.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f3433a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f3434b) {
            case 0:
                return new l(this.f3435c, 0);
            default:
                return new l(this.f3435c, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry;
        Object key;
        switch (this.f3434b) {
            case 0:
                if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && this.f3435c.remove(key, entry.getValue())) {
                }
                break;
            default:
                if (this.f3435c.remove(obj) != null) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3433a.size();
    }
}
