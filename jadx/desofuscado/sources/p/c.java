package p;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Iterator, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public int f8833a;

    /* renamed from: b, reason: collision with root package name */
    public int f8834b = -1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8835c;
    public final /* synthetic */ e d;

    public c(e eVar) {
        this.d = eVar;
        this.f8833a = eVar.f8858c - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f8835c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i6 = this.f8834b;
        e eVar = this.d;
        return j9.i.a(key, eVar.f(i6)) && j9.i.a(entry.getValue(), eVar.j(this.f8834b));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f8835c) {
            return this.d.f(this.f8834b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f8835c) {
            return this.d.j(this.f8834b);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8834b < this.f8833a;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f8835c) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i6 = this.f8834b;
        e eVar = this.d;
        Object objF = eVar.f(i6);
        Object objJ = eVar.j(this.f8834b);
        return (objF == null ? 0 : objF.hashCode()) ^ (objJ != null ? objJ.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f8834b++;
        this.f8835c = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f8835c) {
            throw new IllegalStateException();
        }
        this.d.h(this.f8834b);
        this.f8834b--;
        this.f8833a--;
        this.f8835c = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f8835c) {
            return this.d.i(this.f8834b, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
