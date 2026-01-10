package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.HashMap;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new a(0);

    /* renamed from: a, reason: collision with root package name */
    public final int f4040a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4041b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f4042c = new SparseArray();

    public StringToIntConverter(int i6, ArrayList arrayList) {
        this.f4040a = i6;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zac zacVar = (zac) arrayList.get(i10);
            String str = zacVar.f4046b;
            int i11 = zacVar.f4047c;
            this.f4041b.put(str, Integer.valueOf(i11));
            this.f4042c.put(i11, str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4040a);
        ArrayList arrayList = new ArrayList();
        HashMap map = this.f4041b;
        for (String str : map.keySet()) {
            arrayList.add(new zac(str, ((Integer) map.get(str)).intValue()));
        }
        d.U(parcel, 2, arrayList);
        d.W(parcel, iV);
    }
}
