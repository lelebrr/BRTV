package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzev extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzev> CREATOR = new y0(0);

    /* renamed from: a, reason: collision with root package name */
    public final String f4511a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f4512b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4513c;

    public zzev(String str, byte[] bArr, ArrayList arrayList) {
        this.f4511a = str;
        this.f4512b = bArr;
        this.f4513c = arrayList == null ? new ArrayList(0) : new ArrayList(arrayList);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzev)) {
            return false;
        }
        zzev zzevVar = (zzev) obj;
        return b5.l.h(this.f4511a, zzevVar.f4511a) && b5.l.h(this.f4512b, zzevVar.f4512b) && b5.l.h(this.f4513c, zzevVar.f4513c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4511a, this.f4512b, this.f4513c});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.R(parcel, 1, this.f4511a);
        byte[] bArr = this.f4512b;
        if (bArr != null) {
            int iV2 = o9.d.V(parcel, 2);
            parcel.writeByteArray(bArr);
            o9.d.W(parcel, iV2);
        }
        ArrayList arrayList = new ArrayList(this.f4513c);
        int iV3 = o9.d.V(parcel, 3);
        int size = arrayList.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(((Integer) arrayList.get(i10)).intValue());
        }
        o9.d.W(parcel, iV3);
        o9.d.W(parcel, iV);
    }
}
