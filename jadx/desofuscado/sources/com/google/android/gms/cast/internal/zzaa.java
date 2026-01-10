package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaa> CREATOR = new p(11);

    /* renamed from: a, reason: collision with root package name */
    public final int f3886a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3887b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3888c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3889e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3890g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3891h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3892i;

    public zzaa(int i6, boolean z7, boolean z10, String str, String str2, String str3, String str4, String str5, boolean z11) {
        this.f3886a = i6;
        this.f3887b = z7;
        this.f3888c = z10;
        this.d = str;
        this.f3889e = str2;
        this.f = str3;
        this.f3890g = str4;
        this.f3891h = str5;
        this.f3892i = z11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        return this.f3886a == zzaaVar.f3886a && this.f3887b == zzaaVar.f3887b && this.f3888c == zzaaVar.f3888c && TextUtils.equals(this.d, zzaaVar.d) && TextUtils.equals(this.f3889e, zzaaVar.f3889e) && TextUtils.equals(this.f, zzaaVar.f) && TextUtils.equals(this.f3890g, zzaaVar.f3890g) && TextUtils.equals(this.f3891h, zzaaVar.f3891h) && this.f3892i == zzaaVar.f3892i;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3886a), Boolean.valueOf(this.f3887b), Boolean.valueOf(this.f3888c), this.d, this.f3889e, this.f, this.f3890g, this.f3891h, Boolean.valueOf(this.f3892i)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3886a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3887b ? 1 : 0);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3888c ? 1 : 0);
        d.R(parcel, 5, this.d);
        d.R(parcel, 6, this.f3889e);
        d.R(parcel, 7, this.f);
        d.R(parcel, 8, this.f3890g);
        d.R(parcel, 9, this.f3891h);
        d.X(parcel, 10, 4);
        parcel.writeInt(this.f3892i ? 1 : 0);
        d.W(parcel, iV);
    }
}
