package b5;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends i {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.common.internal.a f3267g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(com.google.android.gms.common.internal.a aVar, int i6, Bundle bundle) {
        super(aVar, i6, bundle);
        this.f3267g = aVar;
    }

    @Override // b5.i
    public final void a(ConnectionResult connectionResult) {
        com.google.android.gms.common.internal.a aVar = this.f3267g;
        aVar.getClass();
        aVar.f3996j.a(connectionResult);
        aVar.t(connectionResult);
    }

    @Override // b5.i
    public final boolean b() {
        this.f3267g.f3996j.a(ConnectionResult.f3904e);
        return true;
    }
}
