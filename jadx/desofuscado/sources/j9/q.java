package j9;

import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class q {
    public static List a(Object obj) {
        if ((obj instanceof k9.a) && !(obj instanceof k9.b)) {
            d(obj, "kotlin.collections.MutableList");
            throw null;
        }
        try {
            return (List) obj;
        } catch (ClassCastException e5) {
            i.j(e5, q.class.getName());
            throw e5;
        }
    }

    public static void b(i9.p pVar) {
        if (c(2, pVar)) {
            return;
        }
        d(pVar, "kotlin.jvm.functions.Function2");
        throw null;
    }

    public static boolean c(int i6, Object obj) {
        if (obj instanceof w8.a) {
            return (obj instanceof g ? ((g) obj).getArity() : obj instanceof i9.a ? 0 : obj instanceof i9.l ? 1 : obj instanceof i9.p ? 2 : obj instanceof i9.q ? 3 : -1) == i6;
        }
        return false;
    }

    public static void d(Object obj, String str) {
        ClassCastException classCastException = new ClassCastException(ea.q.i(obj.getClass().getName(), " cannot be cast to ", str));
        i.j(classCastException, q.class.getName());
        throw classCastException;
    }
}
