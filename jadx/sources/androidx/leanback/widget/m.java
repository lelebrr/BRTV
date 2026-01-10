package androidx.leanback.widget;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends l0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1858a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1859b = new HashMap();

    @Override // androidx.leanback.widget.l0
    public final qa.m a(Object obj) {
        Object obj2;
        qa.m mVarA;
        if (obj == null) {
            return null;
        }
        Class<?> superclass = obj.getClass();
        do {
            obj2 = this.f1859b.get(superclass);
            if ((obj2 instanceof l0) && (mVarA = ((l0) obj2).a(obj)) != null) {
                return mVarA;
            }
            superclass = superclass.getSuperclass();
            if (obj2 != null) {
                break;
            }
        } while (superclass != null);
        return (qa.m) obj2;
    }

    public final void b(Class cls, qa.m mVar) {
        this.f1859b.put(cls, mVar);
        ArrayList arrayList = this.f1858a;
        if (arrayList.contains(mVar)) {
            return;
        }
        arrayList.add(mVar);
    }
}
