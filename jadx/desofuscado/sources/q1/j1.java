package q1;

import android.os.Bundle;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j1 extends o0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k1 f9028a;

    public j1(k1 k1Var) {
        this.f9028a = k1Var;
    }

    @Override // q1.o0
    public final void a(String str, Bundle bundle) {
        Log.d("MediaRouteProviderProxy", "Error: " + str + ", data: " + bundle);
    }

    @Override // q1.o0
    public final void b(Bundle bundle) {
        String string = bundle.getString("groupableTitle");
        k1 k1Var = this.f9028a;
        k1Var.f9037h = string;
        k1Var.f9038i = bundle.getString("transferableTitle");
    }
}
