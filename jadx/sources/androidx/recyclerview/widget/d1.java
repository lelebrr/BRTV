package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d1 {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f2823a;

    /* renamed from: b, reason: collision with root package name */
    public int f2824b;

    /* renamed from: c, reason: collision with root package name */
    public Set f2825c;

    public final c1 a(int i6) {
        SparseArray sparseArray = this.f2823a;
        c1 c1Var = (c1) sparseArray.get(i6);
        if (c1Var != null) {
            return c1Var;
        }
        c1 c1Var2 = new c1();
        sparseArray.put(i6, c1Var2);
        return c1Var2;
    }
}
