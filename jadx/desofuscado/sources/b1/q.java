package b1;

import android.util.SparseArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f3134a;

    /* renamed from: b, reason: collision with root package name */
    public m f3135b;

    public q(int i6) {
        this.f3134a = new SparseArray(i6);
    }

    public final void a(m mVar, int i6, int i10) {
        int iA = mVar.a(i6);
        SparseArray sparseArray = this.f3134a;
        q qVar = sparseArray == null ? null : (q) sparseArray.get(iA);
        if (qVar == null) {
            qVar = new q(1);
            sparseArray.put(mVar.a(i6), qVar);
        }
        if (i10 > i6) {
            qVar.a(mVar, i6 + 1, i10);
        } else {
            qVar.f3135b = mVar;
        }
    }
}
