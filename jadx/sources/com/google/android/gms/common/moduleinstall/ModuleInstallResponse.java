package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ModuleInstallResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallResponse> CREATOR = new d(25);

    /* renamed from: a, reason: collision with root package name */
    public final int f4028a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4029b;

    public ModuleInstallResponse(int i6, boolean z7) {
        this.f4028a = i6;
        this.f4029b = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f4028a);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(this.f4029b ? 1 : 0);
        o9.d.W(parcel, iV);
    }
}
