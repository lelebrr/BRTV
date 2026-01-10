package y4;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n implements Parcelable.Creator {

    /* renamed from: b, reason: collision with root package name */
    public static final n f11404b = new n(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11405a;

    public /* synthetic */ n(int i6) {
        this.f11405a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f11405a) {
            case 0:
                int iDataPosition = parcel.dataPosition();
                if (parcel.readInt() != -204102970) {
                    parcel.setDataPosition(iDataPosition - 4);
                    return ApiMetadata.f3914b;
                }
                int iV = n5.d.V(parcel);
                ComplianceOptions complianceOptions = null;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    if (((char) i6) != 1) {
                        n5.d.T(parcel, i6);
                    } else {
                        complianceOptions = (ComplianceOptions) n5.d.j(parcel, i6, ComplianceOptions.CREATOR);
                    }
                }
                n5.d.r(parcel, iV);
                return new ApiMetadata(complianceOptions);
            case 1:
                int iV2 = n5.d.V(parcel);
                int iK = 0;
                int iK2 = 0;
                int iK3 = 0;
                boolean zF = true;
                while (parcel.dataPosition() < iV2) {
                    int i10 = parcel.readInt();
                    char c5 = (char) i10;
                    if (c5 == 1) {
                        iK = n5.d.K(parcel, i10);
                    } else if (c5 == 2) {
                        iK2 = n5.d.K(parcel, i10);
                    } else if (c5 == 3) {
                        iK3 = n5.d.K(parcel, i10);
                    } else if (c5 != 4) {
                        n5.d.T(parcel, i10);
                    } else {
                        zF = n5.d.F(parcel, i10);
                    }
                }
                n5.d.r(parcel, iV2);
                return new ComplianceOptions(iK, iK2, iK3, zF);
            case 2:
                int iV3 = n5.d.V(parcel);
                String strK = null;
                int iK4 = 0;
                while (parcel.dataPosition() < iV3) {
                    int i11 = parcel.readInt();
                    char c8 = (char) i11;
                    if (c8 == 1) {
                        iK4 = n5.d.K(parcel, i11);
                    } else if (c8 != 2) {
                        n5.d.T(parcel, i11);
                    } else {
                        strK = n5.d.k(parcel, i11);
                    }
                }
                n5.d.r(parcel, iV3);
                return new Scope(iK4, strK);
            default:
                int iV4 = n5.d.V(parcel);
                String strK2 = null;
                PendingIntent pendingIntent = null;
                ConnectionResult connectionResult = null;
                int iK5 = 0;
                while (parcel.dataPosition() < iV4) {
                    int i12 = parcel.readInt();
                    char c10 = (char) i12;
                    if (c10 == 1) {
                        iK5 = n5.d.K(parcel, i12);
                    } else if (c10 == 2) {
                        strK2 = n5.d.k(parcel, i12);
                    } else if (c10 == 3) {
                        pendingIntent = (PendingIntent) n5.d.j(parcel, i12, PendingIntent.CREATOR);
                    } else if (c10 != 4) {
                        n5.d.T(parcel, i12);
                    } else {
                        connectionResult = (ConnectionResult) n5.d.j(parcel, i12, ConnectionResult.CREATOR);
                    }
                }
                n5.d.r(parcel, iV4);
                return new Status(iK5, strK2, pendingIntent, connectionResult);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        switch (this.f11405a) {
            case 0:
                return new ApiMetadata[i6];
            case 1:
                return new ComplianceOptions[i6];
            case 2:
                return new Scope[i6];
            default:
                return new Status[i6];
        }
    }
}
