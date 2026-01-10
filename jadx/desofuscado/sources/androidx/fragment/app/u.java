package androidx.fragment.app;

import android.os.Bundle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u implements b.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f1551a;

    public u(FragmentActivity fragmentActivity) {
        this.f1551a = fragmentActivity;
    }

    @Override // b.b
    public final void a() {
        FragmentActivity fragmentActivity = this.f1551a;
        v vVar = (v) fragmentActivity.f1379r.f1438b;
        vVar.f1557i.b(vVar, vVar, null);
        Bundle bundleC = ((androidx.appcompat.widget.v) fragmentActivity.f197e.d).c("android:support:fragments");
        if (bundleC != null) {
            ((v) fragmentActivity.f1379r.f1438b).f1557i.P(bundleC.getParcelable("android:support:fragments"));
        }
    }
}
