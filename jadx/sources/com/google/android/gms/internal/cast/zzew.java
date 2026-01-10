package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zzew extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzew> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4514a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4515b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4516c;

    static {
        new zzew(null, false, false);
        CREATOR = new y0(1);
    }

    public zzew(ArrayList arrayList, boolean z7, boolean z10) {
        this.f4514a = arrayList == null ? new ArrayList(0) : new ArrayList(arrayList);
        this.f4515b = z7;
        this.f4516c = z10;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzew)) {
            return false;
        }
        zzew zzewVar = (zzew) obj;
        return b5.l.h(this.f4514a, zzewVar.f4514a) && b5.l.h(Boolean.valueOf(this.f4515b), Boolean.valueOf(zzewVar.f4515b));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4514a, Boolean.valueOf(this.f4515b)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.U(parcel, 1, new ArrayList(this.f4514a));
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4515b ? 1 : 0);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f4516c ? 1 : 0);
        o9.d.W(parcel, iV);
    }
}
