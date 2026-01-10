package v4;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.Feature;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class s extends com.google.android.gms.common.internal.a {
    @Override // y4.c
    public final int d() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.a
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastService");
        return iInterfaceQueryLocalInterface instanceof g ? (g) iInterfaceQueryLocalInterface : new g(iBinder, "com.google.android.gms.cast.internal.ICastService", 0);
    }

    @Override // com.google.android.gms.common.internal.a
    public final Feature[] m() {
        return p4.j.f8881e;
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.cast.internal.ICastService";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }
}
