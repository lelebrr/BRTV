package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.Feature;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i1 extends com.google.android.gms.common.internal.a {

    /* renamed from: z, reason: collision with root package name */
    public final AtomicReference f4221z;

    public i1(Context context, Looper looper, a4.h hVar, z4.n nVar, z4.n nVar2) {
        super(context, looper, 41, hVar, nVar, nVar2);
        this.f4221z = new AtomicReference();
    }

    @Override // y4.c
    public final int d() {
        return 12600000;
    }

    @Override // com.google.android.gms.common.internal.a, y4.c
    public final void disconnect() {
        try {
        } catch (RemoteException e5) {
            Log.e("UsageReportingClientImp", "disconnect(): Could not unregister listener from remote:", e5);
        }
        if (this.f4221z.getAndSet(null) != null) {
            throw new ClassCastException();
        }
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.a
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.usagereporting.internal.IUsageReportingService");
        return iInterfaceQueryLocalInterface instanceof g1 ? (g1) iInterfaceQueryLocalInterface : new g1(iBinder, "com.google.android.gms.usagereporting.internal.IUsageReportingService", 0);
    }

    @Override // com.google.android.gms.common.internal.a
    public final Feature[] m() {
        return z0.f4502b;
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.usagereporting.internal.IUsageReportingService";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.usagereporting.service.START";
    }

    @Override // com.google.android.gms.common.internal.a
    public final boolean v() {
        return true;
    }
}
