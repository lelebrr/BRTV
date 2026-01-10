package com.google.android.gms.common;

import a7.f;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import ea.q;
import java.util.Arrays;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final int f3905a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3906b;

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f3907c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public static final ConnectionResult f3904e = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new p(26);

    public ConnectionResult(int i6, int i10, PendingIntent pendingIntent, String str) {
        this.f3905a = i6;
        this.f3906b = i10;
        this.f3907c = pendingIntent;
        this.d = str;
    }

    public static String j(int i6) {
        if (i6 == 99) {
            return "UNFINISHED";
        }
        if (i6 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i6) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i6) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    default:
                        return q.f(i6, "UNKNOWN_ERROR_CODE(", ")");
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f3906b == connectionResult.f3906b && l.h(this.f3907c, connectionResult.f3907c) && l.h(this.d, connectionResult.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3906b), this.f3907c, this.d});
    }

    public final String toString() {
        f fVar = new f(this);
        fVar.c(j(this.f3906b), "statusCode");
        fVar.c(this.f3907c, "resolution");
        fVar.c(this.d, "message");
        return fVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3905a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3906b);
        d.Q(parcel, 3, this.f3907c, i6);
        d.R(parcel, 4, this.d);
        d.W(parcel, iV);
    }

    public ConnectionResult(int i6) {
        this(1, i6, null, null);
    }

    public ConnectionResult(int i6, PendingIntent pendingIntent) {
        this(1, i6, pendingIntent, null);
    }
}
