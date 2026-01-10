package v5;

import a4.h;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import y4.c;
import y4.i;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends com.google.android.gms.common.internal.a implements c {
    public final h A;
    public final Bundle B;
    public final Integer C;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f10718z;

    public a(Context context, Looper looper, h hVar, Bundle bundle, y4.h hVar2, i iVar) {
        super(context, looper, 44, hVar, hVar2, iVar);
        this.f10718z = true;
        this.A = hVar;
        this.B = bundle;
        this.C = (Integer) hVar.f122b;
    }

    @Override // y4.c
    public final int d() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.a, y4.c
    public final boolean k() {
        return this.f10718z;
    }

    @Override // com.google.android.gms.common.internal.a
    public final IInterface l(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new b(iBinder, "com.google.android.gms.signin.internal.ISignInService", 1);
    }

    @Override // com.google.android.gms.common.internal.a
    public final Bundle o() {
        h hVar = this.A;
        boolean zEquals = this.f3991c.getPackageName().equals((String) hVar.f121a);
        Bundle bundle = this.B;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", (String) hVar.f121a);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.a
    public final String q() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.a
    public final String r() {
        return "com.google.android.gms.signin.service.START";
    }
}
