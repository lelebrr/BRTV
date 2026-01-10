package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 extends c7.w {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u0 f6266c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(u0 u0Var) {
        super(u0Var);
        this.f6266c = u0Var;
    }

    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (!(obj instanceof Collection)) {
            return false;
        }
        Collection collection = (Collection) obj;
        u0 u0Var = this.f6266c;
        Iterator it = u0Var.d.f.d().entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            e0 e0VarO = y0.o((Collection) entry.getValue(), new x0(u0Var.d, entry.getKey()));
            if (!e0VarO.isEmpty() && collection.equals(e0VarO)) {
                if (e0VarO.size() == ((Collection) entry.getValue()).size()) {
                    it.remove();
                    return true;
                }
                e0VarO.clear();
                return true;
            }
        }
        return false;
    }

    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        return this.f6266c.d.p(new b7.p(new b7.q(collection), i4.f6176b));
    }

    @Override // c7.w, java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return this.f6266c.d.p(new b7.p(new b7.t(new b7.q(collection)), i4.f6176b));
    }
}
