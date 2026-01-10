package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Map;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new a(4);

    /* renamed from: a, reason: collision with root package name */
    public final int f4062a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4063b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4064c;

    public zal(int i6, String str, ArrayList arrayList) {
        this.f4062a = i6;
        this.f4063b = str;
        this.f4064c = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4062a);
        d.R(parcel, 2, this.f4063b);
        d.U(parcel, 3, this.f4064c);
        d.W(parcel, iV);
    }

    public zal(String str, Map map) {
        ArrayList arrayList;
        this.f4062a = 1;
        this.f4063b = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (String str2 : map.keySet()) {
                arrayList.add(new zam(str2, (FastJsonResponse$Field) map.get(str2)));
            }
        }
        this.f4064c = arrayList;
    }
}
