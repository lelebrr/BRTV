package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ApplicationMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new a(28);

    /* renamed from: a, reason: collision with root package name */
    public final String f3644a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3645b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3646c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final Uri f3647e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3648g;

    /* renamed from: h, reason: collision with root package name */
    public final Boolean f3649h;

    /* renamed from: i, reason: collision with root package name */
    public final Boolean f3650i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3651j;

    public ApplicationMetadata(String str, String str2, ArrayList arrayList, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2, int i6) {
        this.f3644a = str;
        this.f3645b = str2;
        this.f3646c = arrayList;
        this.d = str3;
        this.f3647e = uri;
        this.f = str4;
        this.f3648g = str5;
        this.f3649h = bool;
        this.f3650i = bool2;
        this.f3651j = i6;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        return v4.a.e(this.f3644a, applicationMetadata.f3644a) && v4.a.e(this.f3645b, applicationMetadata.f3645b) && v4.a.e(this.f3646c, applicationMetadata.f3646c) && v4.a.e(this.d, applicationMetadata.d) && v4.a.e(this.f3647e, applicationMetadata.f3647e) && v4.a.e(this.f, applicationMetadata.f) && v4.a.e(this.f3648g, applicationMetadata.f3648g) && this.f3651j == applicationMetadata.f3651j;
    }

    public final int hashCode() {
        Integer numValueOf = Integer.valueOf(this.f3651j);
        return Arrays.hashCode(new Object[]{this.f3644a, this.f3645b, this.f3646c, this.d, this.f3647e, this.f, numValueOf});
    }

    public final String toString() {
        ArrayList arrayList = this.f3646c;
        return "applicationId: " + this.f3644a + ", name: " + this.f3645b + ", namespaces.count: " + (arrayList == null ? 0 : arrayList.size()) + ", senderAppIdentifier: " + this.d + ", senderAppLaunchUrl: " + String.valueOf(this.f3647e) + ", iconUrl: " + this.f + ", type: " + this.f3648g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3644a);
        d.R(parcel, 3, this.f3645b);
        d.S(parcel, 5, Collections.unmodifiableList(this.f3646c));
        d.R(parcel, 6, this.d);
        d.Q(parcel, 7, this.f3647e, i6);
        d.R(parcel, 8, this.f);
        d.R(parcel, 9, this.f3648g);
        d.L(parcel, 10, this.f3649h);
        d.L(parcel, 11, this.f3650i);
        d.X(parcel, 12, 4);
        parcel.writeInt(this.f3651j);
        d.W(parcel, iV);
    }
}
