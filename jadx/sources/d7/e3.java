package d7;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e3 extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6131a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c4 f6132b;

    public /* synthetic */ e3(c4 c4Var, int i6) {
        this.f6131a = i6;
        this.f6132b = c4Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f6131a) {
            case 0:
                this.f6132b.clear();
                break;
            default:
                this.f6132b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry;
        Object key;
        c4 c4Var;
        Object obj2;
        switch (this.f6131a) {
            case 0:
                return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (c4Var = this.f6132b).get(key)) != null && c4Var.f.d().a().c(entry.getValue(), obj2);
            default:
                return this.f6132b.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.f6131a) {
        }
        return this.f6132b.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f6131a) {
            case 0:
                return new d3(this.f6132b, 0);
            default:
                return new d3(this.f6132b, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry;
        Object key;
        switch (this.f6131a) {
            case 0:
                if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && this.f6132b.remove(key, entry.getValue())) {
                }
                break;
            default:
                if (this.f6132b.remove(obj) != null) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f6131a) {
        }
        return this.f6132b.size();
    }
}
