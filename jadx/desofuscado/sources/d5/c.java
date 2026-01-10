package d5;

import a4.h;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import b5.e;
import com.google.android.gms.common.Feature;
import z4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends com.google.android.gms.common.internal.a {

    /* renamed from: z, reason: collision with root package name */
    public final e f6060z;

    public c(Context context, Looper looper, h hVar, e eVar, n nVar, n nVar2) {
        super(context, looper, 270, hVar, nVar, nVar2);
        this.f6060z = eVar;
    }

    @Override // y4.c
    public final int d() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.a
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new a(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService", 1);
    }

    @Override // com.google.android.gms.common.internal.a
    public final Feature[] m() {
        return q5.b.f9238b;
    }

    @Override // com.google.android.gms.common.internal.a
    public final Bundle o() {
        this.f6060z.getClass();
        return new Bundle();
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.a
    public final boolean s() {
        return true;
    }
}
