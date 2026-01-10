package com.google.android.gms.common.api;

import a.e;
import a7.f;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import o9.d;
import y4.l;
import y4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements l, ReflectedParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final int f3925a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3926b;

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f3927c;
    public final ConnectionResult d;

    /* renamed from: e, reason: collision with root package name */
    public static final Status f3923e = new Status(0, null, null, null);
    public static final Status f = new Status(15, null, null, null);

    /* renamed from: g, reason: collision with root package name */
    public static final Status f3924g = new Status(16, null, null, null);
    public static final Parcelable.Creator<Status> CREATOR = new n(3);

    public Status(int i6, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.f3925a = i6;
        this.f3926b = str;
        this.f3927c = pendingIntent;
        this.d = connectionResult;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f3925a == status.f3925a && b5.l.h(this.f3926b, status.f3926b) && b5.l.h(this.f3927c, status.f3927c) && b5.l.h(this.d, status.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3925a), this.f3926b, this.f3927c, this.d});
    }

    public final String toString() {
        f fVar = new f(this);
        String strN = this.f3926b;
        if (strN == null) {
            int i6 = this.f3925a;
            switch (i6) {
                case -1:
                    strN = "SUCCESS_CACHE";
                    break;
                case 0:
                    strN = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    strN = e.n(i6, "unknown status code: ");
                    break;
                case 2:
                    strN = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    strN = "SERVICE_DISABLED";
                    break;
                case 4:
                    strN = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    strN = "INVALID_ACCOUNT";
                    break;
                case 6:
                    strN = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    strN = "NETWORK_ERROR";
                    break;
                case 8:
                    strN = "INTERNAL_ERROR";
                    break;
                case 10:
                    strN = "DEVELOPER_ERROR";
                    break;
                case 13:
                    strN = "ERROR";
                    break;
                case 14:
                    strN = "INTERRUPTED";
                    break;
                case 15:
                    strN = "TIMEOUT";
                    break;
                case 16:
                    strN = "CANCELED";
                    break;
                case 17:
                    strN = "API_NOT_CONNECTED";
                    break;
                case 18:
                    strN = "DEAD_CLIENT";
                    break;
                case 19:
                    strN = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    strN = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    strN = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    strN = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        fVar.c(strN, "statusCode");
        fVar.c(this.f3927c, "resolution");
        return fVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3925a);
        d.R(parcel, 2, this.f3926b);
        d.Q(parcel, 3, this.f3927c, i6);
        d.Q(parcel, 4, this.d, i6);
        d.W(parcel, iV);
    }

    @Override // y4.l
    public final Status h() {
        return this;
    }
}
