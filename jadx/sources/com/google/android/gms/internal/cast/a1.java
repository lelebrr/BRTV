package com.google.android.gms.internal.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a1 extends s implements f1 {
    public final /* synthetic */ w5.d d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(w5.d dVar) {
        super("com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks", 0);
        this.d = dVar;
    }

    @Override // com.google.android.gms.internal.cast.f1
    public final void h(Status status, zzfk zzfkVar) {
        h1 h1Var = new h1(zzfkVar);
        c1 c1Var = new c1();
        c1Var.f4122a = h1Var;
        w5.d dVar = this.d;
        if (status.f3925a <= 0) {
            dVar.b(c1Var);
        } else {
            dVar.a(status.f3927c != null ? new y4.k(status) : new y4.e(status));
        }
    }

    @Override // com.google.android.gms.internal.cast.f1
    public void j(Status status) {
        throw new IllegalStateException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        switch (i6) {
            case 2:
                Status status = (Status) d0.a(parcel, Status.CREATOR);
                zzfk zzfkVar = (zzfk) d0.a(parcel, zzfk.CREATOR);
                d0.b(parcel);
                h(status, zzfkVar);
                return true;
            case 3:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 4:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 5:
                Status status2 = (Status) d0.a(parcel, Status.CREATOR);
                d0.b(parcel);
                j(status2);
                return true;
            case 6:
                parcel.createStringArrayList();
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 7:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 8:
                parcel.readInt();
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 9:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented");
            case 10:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented");
            case 11:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 12:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 13:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 14:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            case 15:
                d0.b(parcel);
                throw new IllegalStateException("Not implemented.");
            default:
                return false;
        }
    }
}
