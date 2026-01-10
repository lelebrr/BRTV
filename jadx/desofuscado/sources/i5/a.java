package i5;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse$Field;
import n5.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iV = d.V(parcel);
        String strK = null;
        String strK2 = null;
        zaa zaaVar = null;
        int iK = 0;
        int iK2 = 0;
        boolean zF = false;
        int iK3 = 0;
        boolean zF2 = false;
        int iK4 = 0;
        while (parcel.dataPosition() < iV) {
            int i6 = parcel.readInt();
            switch ((char) i6) {
                case 1:
                    iK = d.K(parcel, i6);
                    break;
                case 2:
                    iK2 = d.K(parcel, i6);
                    break;
                case 3:
                    zF = d.F(parcel, i6);
                    break;
                case 4:
                    iK3 = d.K(parcel, i6);
                    break;
                case 5:
                    zF2 = d.F(parcel, i6);
                    break;
                case 6:
                    strK = d.k(parcel, i6);
                    break;
                case 7:
                    iK4 = d.K(parcel, i6);
                    break;
                case '\b':
                    strK2 = d.k(parcel, i6);
                    break;
                case '\t':
                    zaaVar = (zaa) d.j(parcel, i6, zaa.CREATOR);
                    break;
                default:
                    d.T(parcel, i6);
                    break;
            }
        }
        d.r(parcel, iV);
        return new FastJsonResponse$Field(iK, iK2, zF, iK3, zF2, strK, iK4, strK2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        return new FastJsonResponse$Field[i6];
    }
}
