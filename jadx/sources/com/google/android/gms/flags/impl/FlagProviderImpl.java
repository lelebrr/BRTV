package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.util.DynamiteApi;
import o5.b;
import o9.e;
import p5.a;
import u7.d;

/* compiled from: MyApplication */
@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends b {

    /* renamed from: c, reason: collision with root package name */
    public boolean f4094c;
    public SharedPreferences d;

    public FlagProviderImpl() {
        attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
        this.f4094c = false;
    }

    @Override // o5.c
    public boolean getBooleanFlagValue(String str, boolean z7, int i6) {
        if (!this.f4094c) {
            return z7;
        }
        SharedPreferences sharedPreferences = this.d;
        Boolean boolValueOf = Boolean.valueOf(z7);
        try {
            boolValueOf = (Boolean) d.A(new a(sharedPreferences, str, boolValueOf, 0));
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return boolValueOf.booleanValue();
    }

    @Override // o5.c
    public int getIntFlagValue(String str, int i6, int i10) {
        if (!this.f4094c) {
            return i6;
        }
        SharedPreferences sharedPreferences = this.d;
        Integer numValueOf = Integer.valueOf(i6);
        try {
            numValueOf = (Integer) d.A(new a(sharedPreferences, str, numValueOf, 1));
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return numValueOf.intValue();
    }

    @Override // o5.c
    public long getLongFlagValue(String str, long j10, int i6) {
        if (!this.f4094c) {
            return j10;
        }
        SharedPreferences sharedPreferences = this.d;
        Long lValueOf = Long.valueOf(j10);
        try {
            lValueOf = (Long) d.A(new a(sharedPreferences, str, lValueOf, 2));
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
        }
        return lValueOf.longValue();
    }

    @Override // o5.c
    public String getStringFlagValue(String str, String str2, int i6) {
        if (!this.f4094c) {
            return str2;
        }
        try {
            return (String) d.A(new a(this.d, str, str2, 3));
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.w("FlagDataUtils", strValueOf.length() != 0 ? "Flag value not available, returning default: ".concat(strValueOf) : new String("Flag value not available, returning default: "));
            return str2;
        }
    }

    @Override // o5.c
    public void init(m5.a aVar) {
        Context context = (Context) m5.b.y(aVar);
        if (this.f4094c) {
            return;
        }
        try {
            this.d = e.J(context.createPackageContext("com.google.android.gms", 0));
            this.f4094c = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e5) {
            String strValueOf = String.valueOf(e5.getMessage());
            Log.w("FlagProviderImpl", strValueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(strValueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
