package j5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.ArrayList;
import n5.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iV = d.V(parcel);
        String strK = null;
        ArrayList arrayListN = null;
        String strK2 = null;
        String strK3 = null;
        String strK4 = null;
        String strK5 = null;
        long jM = 0;
        long jM2 = 0;
        long jM3 = 0;
        int iK = 0;
        int iK2 = 0;
        int iK3 = 0;
        int iK4 = 0;
        float fI = 0.0f;
        boolean zF = false;
        while (parcel.dataPosition() < iV) {
            int i6 = parcel.readInt();
            switch ((char) i6) {
                case 1:
                    iK = d.K(parcel, i6);
                    break;
                case 2:
                    jM = d.M(parcel, i6);
                    break;
                case 3:
                case 7:
                case '\t':
                default:
                    d.T(parcel, i6);
                    break;
                case 4:
                    strK = d.k(parcel, i6);
                    break;
                case 5:
                    iK3 = d.K(parcel, i6);
                    break;
                case 6:
                    arrayListN = d.n(parcel, i6);
                    break;
                case '\b':
                    jM2 = d.M(parcel, i6);
                    break;
                case '\n':
                    strK3 = d.k(parcel, i6);
                    break;
                case 11:
                    iK2 = d.K(parcel, i6);
                    break;
                case '\f':
                    strK2 = d.k(parcel, i6);
                    break;
                case '\r':
                    strK4 = d.k(parcel, i6);
                    break;
                case 14:
                    iK4 = d.K(parcel, i6);
                    break;
                case 15:
                    fI = d.I(parcel, i6);
                    break;
                case 16:
                    jM3 = d.M(parcel, i6);
                    break;
                case 17:
                    strK5 = d.k(parcel, i6);
                    break;
                case 18:
                    zF = d.F(parcel, i6);
                    break;
            }
        }
        d.r(parcel, iV);
        return new WakeLockEvent(iK, jM, iK2, strK, iK3, arrayListN, strK2, jM2, iK4, strK3, strK4, fI, jM3, strK5, zF);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        return new WakeLockEvent[i6];
    }
}
