package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.cast.framework.CastOptions;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final v4.b f4216a = new v4.b("CastDynamiteModule", null);

    public static q4.k a(Context context, CastOptions castOptions, u uVar, HashMap map) throws n5.a, q4.c {
        q4.k iVar;
        k kVarB = b(context);
        m5.b bVar = new m5.b(context.getApplicationContext());
        Parcel parcelL = kVarB.l();
        d0.d(parcelL, bVar);
        d0.c(parcelL, castOptions);
        d0.d(parcelL, uVar);
        parcelL.writeMap(map);
        Parcel parcelW = kVarB.w(parcelL, 1);
        IBinder strongBinder = parcelW.readStrongBinder();
        int i6 = q4.j.d;
        if (strongBinder == null) {
            iVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
            iVar = iInterfaceQueryLocalInterface instanceof q4.k ? (q4.k) iInterfaceQueryLocalInterface : new q4.i(strongBinder, "com.google.android.gms.cast.framework.ICastContext", 0);
        }
        parcelW.recycle();
        return iVar;
    }

    public static k b(Context context) throws n5.a, q4.c {
        try {
            try {
                IBinder iBinder = (IBinder) n5.c.a(context, n5.c.f8450b).f8459a.getClassLoader().loadClass("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl").newInstance();
                if (iBinder == null) {
                    return null;
                }
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                return iInterfaceQueryLocalInterface instanceof k ? (k) iInterfaceQueryLocalInterface : new k(iBinder, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule", 0);
            } catch (ClassNotFoundException e5) {
                e = e5;
                throw new n5.a("Failed to instantiate module class: ".concat("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"), e);
            } catch (IllegalAccessException e10) {
                e = e10;
                throw new n5.a("Failed to instantiate module class: ".concat("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"), e);
            } catch (InstantiationException e11) {
                e = e11;
                throw new n5.a("Failed to instantiate module class: ".concat("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"), e);
            }
        } catch (n5.a e12) {
            throw new q4.c(e12);
        }
    }
}
