package x8;

import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class k extends a2.a {
    public static int O(List list) {
        j9.i.f(list, "<this>");
        return list.size() - 1;
    }

    public static void P() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
