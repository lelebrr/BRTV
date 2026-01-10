package com.google.android.gms.common.moduleinstall;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ModuleInstallIntentResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallIntentResponse> CREATOR = new d(24);

    /* renamed from: a, reason: collision with root package name */
    public final PendingIntent f4027a;

    public ModuleInstallIntentResponse(PendingIntent pendingIntent) {
        this.f4027a = pendingIntent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.Q(parcel, 1, this.f4027a, i6);
        o9.d.W(parcel, iV);
    }
}
