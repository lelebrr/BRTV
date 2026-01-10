package androidx.fragment.app;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f1454a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f1455b;

    public i0(j0 j0Var, int i6) {
        this.f1455b = j0Var;
        this.f1454a = i6;
    }

    @Override // androidx.fragment.app.h0
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        j0 j0Var = this.f1455b;
        s sVar = j0Var.f1471q;
        int i6 = this.f1454a;
        if (sVar == null || i6 >= 0 || !sVar.i().L()) {
            return j0Var.M(arrayList, arrayList2, i6, 1);
        }
        return false;
    }
}
