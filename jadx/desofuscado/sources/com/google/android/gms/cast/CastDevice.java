package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.leanback.widget.o;
import com.google.android.gms.cast.internal.zzaa;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import o9.d;
import p4.p;
import v4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CastDevice extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR = new p(3);

    /* renamed from: a, reason: collision with root package name */
    public final String f3652a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3653b;

    /* renamed from: c, reason: collision with root package name */
    public final InetAddress f3654c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3655e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3656g;

    /* renamed from: h, reason: collision with root package name */
    public final List f3657h;

    /* renamed from: i, reason: collision with root package name */
    public final o f3658i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3659j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3660k;

    /* renamed from: l, reason: collision with root package name */
    public final String f3661l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3662m;

    /* renamed from: n, reason: collision with root package name */
    public final String f3663n;

    /* renamed from: o, reason: collision with root package name */
    public final byte[] f3664o;

    /* renamed from: p, reason: collision with root package name */
    public final String f3665p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f3666q;

    /* renamed from: r, reason: collision with root package name */
    public final zzaa f3667r;

    /* renamed from: s, reason: collision with root package name */
    public final Integer f3668s;

    /* renamed from: t, reason: collision with root package name */
    public final Boolean f3669t;

    public CastDevice(String str, String str2, String str3, String str4, String str5, int i6, ArrayList arrayList, int i10, int i11, String str6, String str7, int i12, String str8, byte[] bArr, String str9, boolean z7, zzaa zzaaVar, Integer num, Boolean bool) {
        this.f3652a = str == null ? "" : str;
        String str10 = str2 == null ? "" : str2;
        this.f3653b = str10;
        if (!TextUtils.isEmpty(str10)) {
            try {
                this.f3654c = InetAddress.getByName(str10);
            } catch (UnknownHostException e5) {
                Log.i("CastDevice", "Unable to convert host address (" + this.f3653b + ") to ipaddress: " + e5.getMessage());
            }
        }
        this.d = str3 == null ? "" : str3;
        this.f3655e = str4 == null ? "" : str4;
        this.f = str5 == null ? "" : str5;
        this.f3656g = i6;
        this.f3657h = arrayList == null ? new ArrayList() : arrayList;
        this.f3659j = i11;
        this.f3660k = str6 != null ? str6 : "";
        this.f3661l = str7;
        this.f3662m = i12;
        this.f3663n = str8;
        this.f3664o = bArr;
        this.f3665p = str9;
        this.f3666q = z7;
        this.f3667r = zzaaVar;
        this.f3668s = num;
        this.f3669t = bool;
        this.f3658i = new o(i10);
    }

    public static CastDevice l(Bundle bundle) {
        ClassLoader classLoader;
        if (bundle == null || (classLoader = CastDevice.class.getClassLoader()) == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    public final boolean equals(Object obj) {
        int i6;
        int i10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        String str = this.f3652a;
        if (str == null) {
            return castDevice.f3652a == null;
        }
        if (a.e(str, castDevice.f3652a) && a.e(this.f3654c, castDevice.f3654c) && a.e(this.f3655e, castDevice.f3655e) && a.e(this.d, castDevice.d)) {
            String str2 = this.f;
            String str3 = castDevice.f;
            if (a.e(str2, str3) && (i10 = this.f3656g) == (i6 = castDevice.f3656g) && a.e(this.f3657h, castDevice.f3657h) && this.f3658i.f1866a == castDevice.f3658i.f1866a && this.f3659j == castDevice.f3659j && a.e(this.f3660k, castDevice.f3660k) && a.e(Integer.valueOf(this.f3662m), Integer.valueOf(castDevice.f3662m)) && a.e(this.f3663n, castDevice.f3663n) && a.e(this.f3661l, castDevice.f3661l) && a.e(str2, str3) && i10 == i6) {
                byte[] bArr = castDevice.f3664o;
                byte[] bArr2 = this.f3664o;
                if (((bArr2 == null && bArr == null) || Arrays.equals(bArr2, bArr)) && a.e(this.f3665p, castDevice.f3665p) && this.f3666q == castDevice.f3666q && a.e(n(), castDevice.n()) && a.e(Boolean.valueOf(o()), Boolean.valueOf(castDevice.o()))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f3652a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String j() {
        String str = this.f3652a;
        return str.startsWith("__cast_nearby__") ? str.substring(16) : str;
    }

    public final int m() {
        o oVar = this.f3658i;
        if (oVar.a(64)) {
            return 4;
        }
        if (oVar.b()) {
            return 3;
        }
        if (oVar.c()) {
            return 5;
        }
        return oVar.a(1) ? 2 : 1;
    }

    public final zzaa n() {
        zzaa zzaaVar = this.f3667r;
        return (zzaaVar == null && this.f3658i.c()) ? new zzaa(1, false, false, null, null, null, null, null, false) : zzaaVar;
    }

    public final boolean o() {
        Boolean bool = this.f3669t;
        if (bool != null) {
            return bool.booleanValue();
        }
        int i6 = this.f3659j;
        return i6 != -1 && (i6 & 2) > 0;
    }

    public final String toString() {
        o oVar = this.f3658i;
        String strConcat = oVar.a(64) ? "[dynamic group]" : oVar.b() ? "[static group]" : oVar.c() ? "[speaker pair]" : "";
        if (oVar.a(262144)) {
            strConcat = strConcat.concat("[cast connect]");
        }
        Locale locale = Locale.ROOT;
        Pattern pattern = a.f10669a;
        String str = this.d;
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            str = length <= 2 ? length == 2 ? "xx" : "x" : String.format(locale, "%c%d%c", Character.valueOf(str.charAt(0)), Integer.valueOf(length - 2), Character.valueOf(str.charAt(length - 1)));
        }
        return "\"" + str + "\" (" + this.f3652a + ") " + strConcat;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3652a);
        d.R(parcel, 3, this.f3653b);
        d.R(parcel, 4, this.d);
        d.R(parcel, 5, this.f3655e);
        d.R(parcel, 6, this.f);
        d.X(parcel, 7, 4);
        parcel.writeInt(this.f3656g);
        d.U(parcel, 8, Collections.unmodifiableList(this.f3657h));
        int i10 = this.f3658i.f1866a;
        d.X(parcel, 9, 4);
        parcel.writeInt(i10);
        d.X(parcel, 10, 4);
        parcel.writeInt(this.f3659j);
        d.R(parcel, 11, this.f3660k);
        d.R(parcel, 12, this.f3661l);
        d.X(parcel, 13, 4);
        parcel.writeInt(this.f3662m);
        d.R(parcel, 14, this.f3663n);
        byte[] bArr = this.f3664o;
        if (bArr != null) {
            int iV2 = d.V(parcel, 15);
            parcel.writeByteArray(bArr);
            d.W(parcel, iV2);
        }
        d.R(parcel, 16, this.f3665p);
        d.X(parcel, 17, 4);
        parcel.writeInt(this.f3666q ? 1 : 0);
        d.Q(parcel, 18, n(), i6);
        Integer num = this.f3668s;
        if (num != null) {
            d.X(parcel, 19, 4);
            parcel.writeInt(num.intValue());
        }
        d.L(parcel, 20, Boolean.valueOf(o()));
        d.W(parcel, iV);
    }
}
