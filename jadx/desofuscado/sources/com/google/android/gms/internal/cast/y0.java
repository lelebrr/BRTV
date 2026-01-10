package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y0 implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4490a;

    public /* synthetic */ y0(int i6) {
        this.f4490a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f4490a) {
            case 0:
                int iV = n5.d.V(parcel);
                String strK = null;
                byte[] bArrG = null;
                ArrayList arrayList = null;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    char c5 = (char) i6;
                    if (c5 == 1) {
                        strK = n5.d.k(parcel, i6);
                    } else if (c5 == 2) {
                        bArrG = n5.d.g(parcel, i6);
                    } else if (c5 != 3) {
                        n5.d.T(parcel, i6);
                    } else {
                        int iN = n5.d.N(parcel, i6);
                        int iDataPosition = parcel.dataPosition();
                        if (iN == 0) {
                            arrayList = null;
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            int i10 = parcel.readInt();
                            for (int i11 = 0; i11 < i10; i11++) {
                                arrayList2.add(Integer.valueOf(parcel.readInt()));
                            }
                            parcel.setDataPosition(iDataPosition + iN);
                            arrayList = arrayList2;
                        }
                    }
                }
                n5.d.r(parcel, iV);
                return new zzev(strK, bArrG, arrayList);
            case 1:
                int iV2 = n5.d.V(parcel);
                boolean zF = false;
                ArrayList arrayListP = null;
                boolean zF2 = false;
                while (parcel.dataPosition() < iV2) {
                    int i12 = parcel.readInt();
                    char c8 = (char) i12;
                    if (c8 == 1) {
                        arrayListP = n5.d.p(parcel, i12, zzev.CREATOR);
                    } else if (c8 == 2) {
                        zF = n5.d.F(parcel, i12);
                    } else if (c8 != 3) {
                        n5.d.T(parcel, i12);
                    } else {
                        zF2 = n5.d.F(parcel, i12);
                    }
                }
                n5.d.r(parcel, iV2);
                return new zzew(arrayListP, zF, zF2);
            case 2:
                int iV3 = n5.d.V(parcel);
                boolean zF3 = false;
                int iK = 0;
                while (parcel.dataPosition() < iV3) {
                    int i13 = parcel.readInt();
                    char c10 = (char) i13;
                    if (c10 == 2) {
                        zF3 = n5.d.F(parcel, i13);
                    } else if (c10 != 3) {
                        n5.d.T(parcel, i13);
                    } else {
                        iK = n5.d.K(parcel, i13);
                    }
                }
                n5.d.r(parcel, iV3);
                return new zzey(zF3, iK);
            case 3:
                int iV4 = n5.d.V(parcel);
                boolean zF4 = false;
                boolean zF5 = false;
                int iK2 = 0;
                while (parcel.dataPosition() < iV4) {
                    int i14 = parcel.readInt();
                    char c11 = (char) i14;
                    if (c11 == 2) {
                        zF4 = n5.d.F(parcel, i14);
                    } else if (c11 == 3) {
                        zF5 = n5.d.F(parcel, i14);
                    } else if (c11 != 4) {
                        n5.d.T(parcel, i14);
                    } else {
                        iK2 = n5.d.K(parcel, i14);
                    }
                }
                n5.d.r(parcel, iV4);
                return new zzff(iK2, zF4, zF5);
            default:
                int iV5 = n5.d.V(parcel);
                ArrayList arrayListN = null;
                String strK2 = null;
                int iK3 = 0;
                boolean zF6 = false;
                int iK4 = 0;
                boolean zF7 = false;
                while (parcel.dataPosition() < iV5) {
                    int i15 = parcel.readInt();
                    switch ((char) i15) {
                        case 2:
                            iK3 = n5.d.K(parcel, i15);
                            break;
                        case 3:
                            zF6 = n5.d.F(parcel, i15);
                            break;
                        case 4:
                            arrayListN = n5.d.n(parcel, i15);
                            break;
                        case 5:
                            iK4 = n5.d.K(parcel, i15);
                            break;
                        case 6:
                            strK2 = n5.d.k(parcel, i15);
                            break;
                        case 7:
                            zF7 = n5.d.F(parcel, i15);
                            break;
                        default:
                            n5.d.T(parcel, i15);
                            break;
                    }
                }
                n5.d.r(parcel, iV5);
                return new zzfk(iK3, zF6, arrayListN, iK4, strK2, zF7);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i6) {
        switch (this.f4490a) {
            case 0:
                return new zzev[i6];
            case 1:
                return new zzew[i6];
            case 2:
                return new zzey[i6];
            case 3:
                return new zzff[i6];
            default:
                return new zzfk[i6];
        }
    }
}
