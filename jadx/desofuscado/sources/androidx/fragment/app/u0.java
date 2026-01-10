package androidx.fragment.app;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1552a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v0 f1553b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f1554c;

    public /* synthetic */ u0(i iVar, v0 v0Var, int i6) {
        this.f1552a = i6;
        this.f1554c = iVar;
        this.f1553b = v0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1552a) {
            case 0:
                ArrayList arrayList = this.f1554c.f1451b;
                v0 v0Var = this.f1553b;
                if (arrayList.contains(v0Var)) {
                    a.e.a(v0Var.f1559a, v0Var.f1561c.F);
                    break;
                }
                break;
            default:
                i iVar = this.f1554c;
                ArrayList arrayList2 = iVar.f1451b;
                v0 v0Var2 = this.f1553b;
                arrayList2.remove(v0Var2);
                iVar.f1452c.remove(v0Var2);
                break;
        }
    }
}
