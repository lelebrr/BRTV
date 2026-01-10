package d7;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 extends AbstractSet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f6147b;

    public /* synthetic */ g0(Map map, int i6) {
        this.f6146a = i6;
        this.f6147b = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        switch (this.f6146a) {
            case 0:
                ((i0) this.f6147b).clear();
                break;
            case 1:
                ((i0) this.f6147b).clear();
                break;
            default:
                super.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        switch (this.f6146a) {
            case 0:
                i0 i0Var = (i0) this.f6147b;
                Map mapC = i0Var.c();
                if (mapC != null) {
                    return mapC.entrySet().contains(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    int iE = i0Var.e(entry.getKey());
                    if (iE != -1 && b7.b.p(i0Var.k()[iE], entry.getValue())) {
                        return true;
                    }
                }
                return false;
            case 1:
                return ((i0) this.f6147b).containsKey(obj);
            default:
                return super.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f6146a) {
            case 0:
                i0 i0Var = (i0) this.f6147b;
                Map mapC = i0Var.c();
                return mapC != null ? mapC.entrySet().iterator() : new f0(i0Var, 1);
            case 1:
                i0 i0Var2 = (i0) this.f6147b;
                Map mapC2 = i0Var2.c();
                return mapC2 != null ? mapC2.keySet().iterator() : new f0(i0Var2, 0);
            default:
                return new p.c((p.e) this.f6147b);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        switch (this.f6146a) {
            case 0:
                i0 i0Var = (i0) this.f6147b;
                Map mapC = i0Var.c();
                if (mapC != null) {
                    return mapC.entrySet().remove(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (!i0Var.g()) {
                        int iD = i0Var.d();
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Object obj2 = i0Var.f6168a;
                        Objects.requireNonNull(obj2);
                        int iW = d0.w(key, value, iD, obj2, i0Var.i(), i0Var.j(), i0Var.k());
                        if (iW != -1) {
                            i0Var.f(iW, iD);
                            i0Var.f--;
                            i0Var.f6171e += 32;
                            return true;
                        }
                    }
                }
                return false;
            case 1:
                i0 i0Var2 = (i0) this.f6147b;
                Map mapC2 = i0Var2.c();
                return mapC2 != null ? mapC2.keySet().remove(obj) : i0Var2.h(obj) != i0.f6167j;
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f6146a) {
            case 0:
                return ((i0) this.f6147b).size();
            case 1:
                return ((i0) this.f6147b).size();
            default:
                return ((p.e) this.f6147b).f8858c;
        }
    }
}
