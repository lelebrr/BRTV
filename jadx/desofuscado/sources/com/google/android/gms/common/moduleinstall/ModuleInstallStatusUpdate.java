package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new d(26);

    /* renamed from: a, reason: collision with root package name */
    public final int f4030a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4031b;

    /* renamed from: c, reason: collision with root package name */
    public final Long f4032c;
    public final Long d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4033e;

    public ModuleInstallStatusUpdate(int i6, int i10, Long l9, Long l10, int i11) {
        this.f4030a = i6;
        this.f4031b = i10;
        this.f4032c = l9;
        this.d = l10;
        this.f4033e = i11;
        if (l9 != null && l10 != null && l10.longValue() != 0 && l10.longValue() == 0) {
            throw new IllegalArgumentException("Given Long is zero");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4030a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4031b);
        Long l9 = this.f4032c;
        if (l9 != null) {
            o9.d.X(parcel, 3, 8);
            parcel.writeLong(l9.longValue());
        }
        Long l10 = this.d;
        if (l10 != null) {
            o9.d.X(parcel, 4, 8);
            parcel.writeLong(l10.longValue());
        }
        o9.d.X(parcel, 5, 4);
        parcel.writeInt(this.f4033e);
        o9.d.W(parcel, iV);
    }
}
