package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import o9.d;
import p4.p;
import y4.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zag extends AbstractSafeParcelable implements l {
    public static final Parcelable.Creator<zag> CREATOR = new p(15);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4529a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4530b;

    public zag(ArrayList arrayList, String str) {
        this.f4529a = arrayList;
        this.f4530b = str;
    }

    @Override // y4.l
    public final Status h() {
        return this.f4530b != null ? Status.f3923e : Status.f3924g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.S(parcel, 1, this.f4529a);
        d.R(parcel, 2, this.f4530b);
        d.W(parcel, iV);
    }
}
