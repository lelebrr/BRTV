package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 extends com.google.android.gms.common.internal.a {
    @Override // y4.c
    public final int d() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.a
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        return iInterfaceQueryLocalInterface instanceof v0 ? (v0) iInterfaceQueryLocalInterface : new v0(iBinder, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService", 0);
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }
}
