package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import b5.c;
import b5.x;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new d(16);

    /* renamed from: o, reason: collision with root package name */
    public static final Scope[] f3961o = new Scope[0];

    /* renamed from: p, reason: collision with root package name */
    public static final Feature[] f3962p = new Feature[0];

    /* renamed from: a, reason: collision with root package name */
    public final int f3963a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3964b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3965c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public IBinder f3966e;
    public Scope[] f;

    /* renamed from: g, reason: collision with root package name */
    public Bundle f3967g;

    /* renamed from: h, reason: collision with root package name */
    public Account f3968h;

    /* renamed from: i, reason: collision with root package name */
    public Feature[] f3969i;

    /* renamed from: j, reason: collision with root package name */
    public Feature[] f3970j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f3971k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3972l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3973m;

    /* renamed from: n, reason: collision with root package name */
    public final String f3974n;

    public GetServiceRequest(int i6, int i10, int i11, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z7, int i12, boolean z10, String str2) {
        Account account2;
        Scope[] scopeArr2 = scopeArr == null ? f3961o : scopeArr;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        Feature[] featureArr3 = f3962p;
        Feature[] featureArr4 = featureArr == null ? featureArr3 : featureArr;
        featureArr3 = featureArr2 != null ? featureArr2 : featureArr3;
        this.f3963a = i6;
        this.f3964b = i10;
        this.f3965c = i11;
        if ("com.google.android.gms".equals(str)) {
            this.d = "com.google.android.gms";
        } else {
            this.d = str;
        }
        if (i6 < 2) {
            account2 = null;
            if (iBinder != null) {
                int i13 = b5.a.d;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                c xVar = iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new x(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 2);
                if (xVar != null) {
                    long jClearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        try {
                            x xVar2 = (x) xVar;
                            Parcel parcelG = xVar2.g(xVar2.l(), 2);
                            Account account3 = (Account) r5.a.a(parcelG, Account.CREATOR);
                            parcelG.recycle();
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                            account2 = account3;
                        } catch (RemoteException unused) {
                            Log.w("AccountAccessor", "Remote account accessor probably died");
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                        }
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                        throw th;
                    }
                }
            }
        } else {
            this.f3966e = iBinder;
            account2 = account;
        }
        this.f3968h = account2;
        this.f = scopeArr2;
        this.f3967g = bundle2;
        this.f3969i = featureArr4;
        this.f3970j = featureArr3;
        this.f3971k = z7;
        this.f3972l = i12;
        this.f3973m = z10;
        this.f3974n = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        d.a(this, parcel, i6);
    }
}
