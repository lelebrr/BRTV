package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzfk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfk> CREATOR = new y0(4);

    /* renamed from: a, reason: collision with root package name */
    public final int f4522a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4523b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4524c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4525e;
    public final boolean f;

    public zzfk(int i6, boolean z7, ArrayList arrayList, int i10, String str, boolean z10) {
        ArrayList arrayList2 = new ArrayList();
        this.f4524c = arrayList2;
        this.f4522a = i6;
        this.f4523b = z7;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        this.d = i10;
        this.f4525e = str;
        this.f = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4522a);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4523b ? 1 : 0);
        o9.d.S(parcel, 4, this.f4524c);
        o9.d.X(parcel, 5, 4);
        parcel.writeInt(this.d);
        o9.d.R(parcel, 6, this.f4525e);
        o9.d.X(parcel, 7, 4);
        parcel.writeInt(this.f ? 1 : 0);
        o9.d.W(parcel, iV);
    }
}
