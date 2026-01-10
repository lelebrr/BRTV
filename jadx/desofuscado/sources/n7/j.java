package n7;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8485a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f8486b;

    public /* synthetic */ j(l lVar, int i6) {
        this.f8485a = i6;
        this.f8486b = lVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f8485a) {
            case 0:
                this.f8486b.clear();
                break;
            default:
                this.f8486b.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        k kVarA;
        Object obj2;
        Object value;
        switch (this.f8485a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                l lVar = this.f8486b;
                lVar.getClass();
                Object key = entry.getKey();
                k kVar = null;
                if (key != null) {
                    try {
                        kVarA = lVar.a(key, false);
                    } catch (ClassCastException unused) {
                    }
                } else {
                    kVarA = null;
                }
                if (kVarA != null && ((obj2 = kVarA.f8491g) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    kVar = kVarA;
                }
                return kVar != null;
            default:
                return this.f8486b.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f8485a) {
            case 0:
                return new i(this.f8486b, 0);
            default:
                return new i(this.f8486b, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        k kVarA;
        Object obj2;
        Object value;
        switch (this.f8485a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                l lVar = this.f8486b;
                lVar.getClass();
                Object key = entry.getKey();
                k kVar = null;
                if (key != null) {
                    try {
                        kVarA = lVar.a(key, false);
                    } catch (ClassCastException unused) {
                    }
                } else {
                    kVarA = null;
                }
                if (kVarA != null && ((obj2 = kVarA.f8491g) == (value = entry.getValue()) || (obj2 != null && obj2.equals(value)))) {
                    kVar = kVarA;
                }
                if (kVar == null) {
                    return false;
                }
                lVar.c(kVar, true);
                return true;
            default:
                l lVar2 = this.f8486b;
                lVar2.getClass();
                k kVarA2 = null;
                if (obj != null) {
                    try {
                        kVarA2 = lVar2.a(obj, false);
                    } catch (ClassCastException unused2) {
                    }
                }
                if (kVarA2 != null) {
                    lVar2.c(kVarA2, true);
                }
                return kVarA2 != null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f8485a) {
        }
        return this.f8486b.f8496c;
    }
}
