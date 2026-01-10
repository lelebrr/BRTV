package d7;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class u extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6274a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f6275b;

    public /* synthetic */ u(s sVar, int i6) {
        this.f6274a = i6;
        this.f6275b = sVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.f6274a) {
            case 0:
                this.f6275b.clear();
                break;
            default:
                this.f6275b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f6274a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return this.f6275b.g(entry.getKey(), entry.getValue());
            default:
                return this.f6275b.h(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f6274a) {
            case 0:
                return new c(this.f6275b, 1);
            default:
                return new c(this.f6275b, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.f6274a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return this.f6275b.remove(entry.getKey(), entry.getValue());
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f6274a) {
        }
        return this.f6275b.f6258g;
    }
}
