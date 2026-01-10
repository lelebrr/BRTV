package h5;

import android.accounts.Account;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import coil.memory.MemoryCache$Key;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CredentialsData;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueContainerMetadata;
import com.google.android.gms.cast.MediaQueueData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.VastAdsRequest;
import com.google.android.gms.cast.VideoInfo;
import com.google.android.gms.cast.zzar;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.cast.zzbs;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zac;
import com.google.android.gms.common.server.response.FastJsonResponse$Field;
import com.google.android.gms.common.server.response.SafeParcelResponse;
import com.google.android.gms.common.server.response.zal;
import com.google.android.gms.common.server.response.zam;
import com.google.android.gms.common.server.response.zan;
import j9.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import n5.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7267a;

    public /* synthetic */ a(int i6) {
        this.f7267a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f7267a) {
            case 0:
                int iV = d.V(parcel);
                ArrayList arrayListP = null;
                int iK = 0;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    char c5 = (char) i6;
                    if (c5 == 1) {
                        iK = d.K(parcel, i6);
                    } else if (c5 != 2) {
                        d.T(parcel, i6);
                    } else {
                        arrayListP = d.p(parcel, i6, zac.CREATOR);
                    }
                }
                d.r(parcel, iV);
                return new StringToIntConverter(iK, arrayListP);
            case 1:
                int iV2 = d.V(parcel);
                int iK2 = 0;
                String strK = null;
                int iK3 = 0;
                while (parcel.dataPosition() < iV2) {
                    int i10 = parcel.readInt();
                    char c8 = (char) i10;
                    if (c8 == 1) {
                        iK2 = d.K(parcel, i10);
                    } else if (c8 == 2) {
                        strK = d.k(parcel, i10);
                    } else if (c8 != 3) {
                        d.T(parcel, i10);
                    } else {
                        iK3 = d.K(parcel, i10);
                    }
                }
                d.r(parcel, iV2);
                return new zac(iK2, iK3, strK);
            case 2:
                int iV3 = d.V(parcel);
                String strK2 = null;
                FastJsonResponse$Field fastJsonResponse$Field = null;
                int iK4 = 0;
                while (parcel.dataPosition() < iV3) {
                    int i11 = parcel.readInt();
                    char c10 = (char) i11;
                    if (c10 == 1) {
                        iK4 = d.K(parcel, i11);
                    } else if (c10 == 2) {
                        strK2 = d.k(parcel, i11);
                    } else if (c10 != 3) {
                        d.T(parcel, i11);
                    } else {
                        fastJsonResponse$Field = (FastJsonResponse$Field) d.j(parcel, i11, FastJsonResponse$Field.CREATOR);
                    }
                }
                d.r(parcel, iV3);
                return new zam(iK4, strK2, fastJsonResponse$Field);
            case 3:
                int iV4 = d.V(parcel);
                ArrayList arrayListP2 = null;
                String strK3 = null;
                int iK5 = 0;
                while (parcel.dataPosition() < iV4) {
                    int i12 = parcel.readInt();
                    char c11 = (char) i12;
                    if (c11 == 1) {
                        iK5 = d.K(parcel, i12);
                    } else if (c11 == 2) {
                        arrayListP2 = d.p(parcel, i12, zal.CREATOR);
                    } else if (c11 != 3) {
                        d.T(parcel, i12);
                    } else {
                        strK3 = d.k(parcel, i12);
                    }
                }
                d.r(parcel, iV4);
                return new zan(iK5, strK3, arrayListP2);
            case 4:
                int iV5 = d.V(parcel);
                String strK4 = null;
                ArrayList arrayListP3 = null;
                int iK6 = 0;
                while (parcel.dataPosition() < iV5) {
                    int i13 = parcel.readInt();
                    char c12 = (char) i13;
                    if (c12 == 1) {
                        iK6 = d.K(parcel, i13);
                    } else if (c12 == 2) {
                        strK4 = d.k(parcel, i13);
                    } else if (c12 != 3) {
                        d.T(parcel, i13);
                    } else {
                        arrayListP3 = d.p(parcel, i13, zam.CREATOR);
                    }
                }
                d.r(parcel, iV5);
                return new zal(iK6, strK4, arrayListP3);
            case 5:
                int iV6 = d.V(parcel);
                int iK7 = 0;
                Parcel parcel2 = null;
                zan zanVar = null;
                while (parcel.dataPosition() < iV6) {
                    int i14 = parcel.readInt();
                    char c13 = (char) i14;
                    if (c13 == 1) {
                        iK7 = d.K(parcel, i14);
                    } else if (c13 == 2) {
                        int iN = d.N(parcel, i14);
                        int iDataPosition = parcel.dataPosition();
                        if (iN == 0) {
                            parcel2 = null;
                        } else {
                            Parcel parcelObtain = Parcel.obtain();
                            parcelObtain.appendFrom(parcel, iDataPosition, iN);
                            parcel.setDataPosition(iDataPosition + iN);
                            parcel2 = parcelObtain;
                        }
                    } else if (c13 != 3) {
                        d.T(parcel, i14);
                    } else {
                        zanVar = (zan) d.j(parcel, i14, zan.CREATOR);
                    }
                }
                d.r(parcel, iV6);
                return new SafeParcelResponse(iK7, parcel2, zanVar);
            case 6:
                String string = parcel.readString();
                i.c(string);
                int i15 = parcel.readInt();
                LinkedHashMap linkedHashMap = new LinkedHashMap(i15);
                for (int i16 = 0; i16 < i15; i16++) {
                    String string2 = parcel.readString();
                    i.c(string2);
                    String string3 = parcel.readString();
                    i.c(string3);
                    linkedHashMap.put(string2, string3);
                }
                return new MemoryCache$Key(string, linkedHashMap);
            case 7:
                int iV7 = d.V(parcel);
                String strK5 = null;
                String strK6 = null;
                String strK7 = null;
                String strK8 = null;
                Uri uri = null;
                String strK9 = null;
                String strK10 = null;
                ArrayList arrayListP4 = null;
                String strK11 = null;
                String strK12 = null;
                long jM = 0;
                int iK8 = 0;
                while (parcel.dataPosition() < iV7) {
                    int i17 = parcel.readInt();
                    switch ((char) i17) {
                        case 1:
                            iK8 = d.K(parcel, i17);
                            break;
                        case 2:
                            strK5 = d.k(parcel, i17);
                            break;
                        case 3:
                            strK6 = d.k(parcel, i17);
                            break;
                        case 4:
                            strK7 = d.k(parcel, i17);
                            break;
                        case 5:
                            strK8 = d.k(parcel, i17);
                            break;
                        case 6:
                            uri = (Uri) d.j(parcel, i17, Uri.CREATOR);
                            break;
                        case 7:
                            strK9 = d.k(parcel, i17);
                            break;
                        case '\b':
                            jM = d.M(parcel, i17);
                            break;
                        case '\t':
                            strK10 = d.k(parcel, i17);
                            break;
                        case '\n':
                            arrayListP4 = d.p(parcel, i17, Scope.CREATOR);
                            break;
                        case 11:
                            strK11 = d.k(parcel, i17);
                            break;
                        case '\f':
                            strK12 = d.k(parcel, i17);
                            break;
                        default:
                            d.T(parcel, i17);
                            break;
                    }
                }
                d.r(parcel, iV7);
                return new GoogleSignInAccount(iK8, strK5, strK6, strK7, strK8, uri, strK9, jM, strK10, arrayListP4, strK11, strK12);
            case 8:
                int iV8 = d.V(parcel);
                ArrayList<GoogleSignInOptionsExtensionParcelable> arrayListP5 = null;
                ArrayList arrayListP6 = null;
                Account account = null;
                String strK13 = null;
                String strK14 = null;
                String strK15 = null;
                int iK9 = 0;
                boolean zF = false;
                boolean zF2 = false;
                boolean zF3 = false;
                while (parcel.dataPosition() < iV8) {
                    int i18 = parcel.readInt();
                    switch ((char) i18) {
                        case 1:
                            iK9 = d.K(parcel, i18);
                            break;
                        case 2:
                            arrayListP6 = d.p(parcel, i18, Scope.CREATOR);
                            break;
                        case 3:
                            account = (Account) d.j(parcel, i18, Account.CREATOR);
                            break;
                        case 4:
                            zF = d.F(parcel, i18);
                            break;
                        case 5:
                            zF2 = d.F(parcel, i18);
                            break;
                        case 6:
                            zF3 = d.F(parcel, i18);
                            break;
                        case 7:
                            strK13 = d.k(parcel, i18);
                            break;
                        case '\b':
                            strK14 = d.k(parcel, i18);
                            break;
                        case '\t':
                            arrayListP5 = d.p(parcel, i18, GoogleSignInOptionsExtensionParcelable.CREATOR);
                            break;
                        case '\n':
                            strK15 = d.k(parcel, i18);
                            break;
                        default:
                            d.T(parcel, i18);
                            break;
                    }
                }
                d.r(parcel, iV8);
                HashMap map = new HashMap();
                if (arrayListP5 != null) {
                    for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : arrayListP5) {
                        map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.f3623b), googleSignInOptionsExtensionParcelable);
                    }
                }
                return new GoogleSignInOptions(iK9, arrayListP6, account, zF, zF2, zF3, strK13, strK14, map, strK15);
            case 9:
                int iV9 = d.V(parcel);
                Bundle bundleF = null;
                int iK10 = 0;
                int iK11 = 0;
                while (parcel.dataPosition() < iV9) {
                    int i19 = parcel.readInt();
                    char c14 = (char) i19;
                    if (c14 == 1) {
                        iK10 = d.K(parcel, i19);
                    } else if (c14 == 2) {
                        iK11 = d.K(parcel, i19);
                    } else if (c14 != 3) {
                        d.T(parcel, i19);
                    } else {
                        bundleF = d.f(parcel, i19);
                    }
                }
                d.r(parcel, iV9);
                return new GoogleSignInOptionsExtensionParcelable(iK10, iK11, bundleF);
            case 10:
                int iV10 = d.V(parcel);
                String strK16 = null;
                String strK17 = null;
                String strK18 = null;
                String strK19 = null;
                String strK20 = null;
                String strK21 = null;
                String strK22 = null;
                String strK23 = null;
                String strK24 = null;
                VastAdsRequest vastAdsRequest = null;
                long jM2 = 0;
                long jM3 = 0;
                while (parcel.dataPosition() < iV10) {
                    int i20 = parcel.readInt();
                    switch ((char) i20) {
                        case 2:
                            strK16 = d.k(parcel, i20);
                            break;
                        case 3:
                            strK17 = d.k(parcel, i20);
                            break;
                        case 4:
                            jM2 = d.M(parcel, i20);
                            break;
                        case 5:
                            strK18 = d.k(parcel, i20);
                            break;
                        case 6:
                            strK19 = d.k(parcel, i20);
                            break;
                        case 7:
                            strK20 = d.k(parcel, i20);
                            break;
                        case '\b':
                            strK21 = d.k(parcel, i20);
                            break;
                        case '\t':
                            strK22 = d.k(parcel, i20);
                            break;
                        case '\n':
                            strK23 = d.k(parcel, i20);
                            break;
                        case 11:
                            jM3 = d.M(parcel, i20);
                            break;
                        case '\f':
                            strK24 = d.k(parcel, i20);
                            break;
                        case '\r':
                            vastAdsRequest = (VastAdsRequest) d.j(parcel, i20, VastAdsRequest.CREATOR);
                            break;
                        default:
                            d.T(parcel, i20);
                            break;
                    }
                }
                d.r(parcel, iV10);
                return new AdBreakClipInfo(strK16, strK17, jM2, strK18, strK19, strK20, strK21, strK22, strK23, jM3, strK24, vastAdsRequest);
            case 11:
                int iV11 = d.V(parcel);
                String strK25 = null;
                String strK26 = null;
                while (parcel.dataPosition() < iV11) {
                    int i21 = parcel.readInt();
                    char c15 = (char) i21;
                    if (c15 == 1) {
                        strK25 = d.k(parcel, i21);
                    } else if (c15 != 2) {
                        d.T(parcel, i21);
                    } else {
                        strK26 = d.k(parcel, i21);
                    }
                }
                d.r(parcel, iV11);
                return new CredentialsData(strK25, strK26);
            case 12:
                int iV12 = d.V(parcel);
                float fI = 0.0f;
                float fI2 = 0.0f;
                float fI3 = 0.0f;
                while (parcel.dataPosition() < iV12) {
                    int i22 = parcel.readInt();
                    char c16 = (char) i22;
                    if (c16 == 2) {
                        fI = d.I(parcel, i22);
                    } else if (c16 == 3) {
                        fI2 = d.I(parcel, i22);
                    } else if (c16 != 4) {
                        d.T(parcel, i22);
                    } else {
                        fI3 = d.I(parcel, i22);
                    }
                }
                d.r(parcel, iV12);
                return new zzar(fI, fI2, fI3);
            case 13:
                int iV13 = d.V(parcel);
                zzar zzarVar = null;
                zzar zzarVar2 = null;
                while (parcel.dataPosition() < iV13) {
                    int i23 = parcel.readInt();
                    char c17 = (char) i23;
                    if (c17 == 2) {
                        zzarVar = (zzar) d.j(parcel, i23, zzar.CREATOR);
                    } else if (c17 != 3) {
                        d.T(parcel, i23);
                    } else {
                        zzarVar2 = (zzar) d.j(parcel, i23, zzar.CREATOR);
                    }
                }
                d.r(parcel, iV13);
                return new zzat(zzarVar, zzarVar2);
            case 14:
                int iV14 = d.V(parcel);
                String strK27 = null;
                String[] strArrL = null;
                long jM4 = 0;
                long jM5 = 0;
                boolean zF4 = false;
                boolean zF5 = false;
                boolean zF6 = false;
                while (parcel.dataPosition() < iV14) {
                    int i24 = parcel.readInt();
                    switch ((char) i24) {
                        case 2:
                            jM4 = d.M(parcel, i24);
                            break;
                        case 3:
                            strK27 = d.k(parcel, i24);
                            break;
                        case 4:
                            jM5 = d.M(parcel, i24);
                            break;
                        case 5:
                            zF4 = d.F(parcel, i24);
                            break;
                        case 6:
                            strArrL = d.l(parcel, i24);
                            break;
                        case 7:
                            zF5 = d.F(parcel, i24);
                            break;
                        case '\b':
                            zF6 = d.F(parcel, i24);
                            break;
                        default:
                            d.T(parcel, i24);
                            break;
                    }
                }
                d.r(parcel, iV14);
                return new AdBreakInfo(jM4, strK27, jM5, zF4, strArrL, zF5, zF6);
            case 15:
                int iV15 = d.V(parcel);
                int iK12 = 0;
                while (parcel.dataPosition() < iV15) {
                    int i25 = parcel.readInt();
                    if (((char) i25) != 2) {
                        d.T(parcel, i25);
                    } else {
                        iK12 = d.K(parcel, i25);
                    }
                }
                d.r(parcel, iV15);
                return new zzbs(iK12);
            case 16:
                int iV16 = d.V(parcel);
                String strK28 = null;
                CredentialsData credentialsData = null;
                boolean zF7 = false;
                boolean zF8 = false;
                while (parcel.dataPosition() < iV16) {
                    int i26 = parcel.readInt();
                    char c18 = (char) i26;
                    if (c18 == 2) {
                        zF7 = d.F(parcel, i26);
                    } else if (c18 == 3) {
                        strK28 = d.k(parcel, i26);
                    } else if (c18 == 4) {
                        zF8 = d.F(parcel, i26);
                    } else if (c18 != 5) {
                        d.T(parcel, i26);
                    } else {
                        credentialsData = (CredentialsData) d.j(parcel, i26, CredentialsData.CREATOR);
                    }
                }
                d.r(parcel, iV16);
                return new LaunchOptions(zF7, strK28, zF8, credentialsData);
            case 17:
                int iV17 = d.V(parcel);
                String strK29 = null;
                Integer numValueOf = null;
                String strK30 = null;
                long jM6 = 0;
                String strK31 = null;
                while (parcel.dataPosition() < iV17) {
                    int i27 = parcel.readInt();
                    char c19 = (char) i27;
                    if (c19 == 2) {
                        strK29 = d.k(parcel, i27);
                    } else if (c19 == 3) {
                        jM6 = d.M(parcel, i27);
                    } else if (c19 == 4) {
                        int iN2 = d.N(parcel, i27);
                        if (iN2 == 0) {
                            numValueOf = null;
                        } else {
                            d.Z(parcel, iN2, 4);
                            numValueOf = Integer.valueOf(parcel.readInt());
                        }
                    } else if (c19 == 5) {
                        strK30 = d.k(parcel, i27);
                    } else if (c19 != 6) {
                        d.T(parcel, i27);
                    } else {
                        strK31 = d.k(parcel, i27);
                    }
                }
                d.r(parcel, iV17);
                return new MediaError(strK29, jM6, numValueOf, strK30, v4.a.a(strK31));
            case 18:
                int iV18 = d.V(parcel);
                String strK32 = null;
                String strK33 = null;
                MediaMetadata mediaMetadata = null;
                ArrayList arrayListP7 = null;
                TextTrackStyle textTrackStyle = null;
                String strK34 = null;
                ArrayList arrayListP8 = null;
                ArrayList arrayListP9 = null;
                String strK35 = null;
                VastAdsRequest vastAdsRequest2 = null;
                String strK36 = null;
                String strK37 = null;
                String strK38 = null;
                String strK39 = null;
                long jM7 = 0;
                long jM8 = 0;
                int iK13 = 0;
                while (parcel.dataPosition() < iV18) {
                    int i28 = parcel.readInt();
                    switch ((char) i28) {
                        case 2:
                            strK32 = d.k(parcel, i28);
                            break;
                        case 3:
                            iK13 = d.K(parcel, i28);
                            break;
                        case 4:
                            strK33 = d.k(parcel, i28);
                            break;
                        case 5:
                            mediaMetadata = (MediaMetadata) d.j(parcel, i28, MediaMetadata.CREATOR);
                            break;
                        case 6:
                            jM7 = d.M(parcel, i28);
                            break;
                        case 7:
                            arrayListP7 = d.p(parcel, i28, MediaTrack.CREATOR);
                            break;
                        case '\b':
                            textTrackStyle = (TextTrackStyle) d.j(parcel, i28, TextTrackStyle.CREATOR);
                            break;
                        case '\t':
                            strK34 = d.k(parcel, i28);
                            break;
                        case '\n':
                            arrayListP8 = d.p(parcel, i28, AdBreakInfo.CREATOR);
                            break;
                        case 11:
                            arrayListP9 = d.p(parcel, i28, AdBreakClipInfo.CREATOR);
                            break;
                        case '\f':
                            strK35 = d.k(parcel, i28);
                            break;
                        case '\r':
                            vastAdsRequest2 = (VastAdsRequest) d.j(parcel, i28, VastAdsRequest.CREATOR);
                            break;
                        case 14:
                            jM8 = d.M(parcel, i28);
                            break;
                        case 15:
                            strK36 = d.k(parcel, i28);
                            break;
                        case 16:
                            strK37 = d.k(parcel, i28);
                            break;
                        case 17:
                            strK38 = d.k(parcel, i28);
                            break;
                        case 18:
                            strK39 = d.k(parcel, i28);
                            break;
                        default:
                            d.T(parcel, i28);
                            break;
                    }
                }
                d.r(parcel, iV18);
                return new MediaInfo(strK32, iK13, strK33, mediaMetadata, jM7, arrayListP7, textTrackStyle, strK34, arrayListP8, arrayListP9, strK35, vastAdsRequest2, jM8, strK36, strK37, strK38, strK39);
            case 19:
                int iV19 = d.V(parcel);
                long jM9 = 0;
                long jM10 = 0;
                boolean zF9 = false;
                boolean zF10 = false;
                while (parcel.dataPosition() < iV19) {
                    int i29 = parcel.readInt();
                    char c20 = (char) i29;
                    if (c20 == 2) {
                        jM9 = d.M(parcel, i29);
                    } else if (c20 == 3) {
                        jM10 = d.M(parcel, i29);
                    } else if (c20 == 4) {
                        zF9 = d.F(parcel, i29);
                    } else if (c20 != 5) {
                        d.T(parcel, i29);
                    } else {
                        zF10 = d.F(parcel, i29);
                    }
                }
                d.r(parcel, iV19);
                return new MediaLiveSeekableRange(jM9, jM10, zF9, zF10);
            case 20:
                int iV20 = d.V(parcel);
                long jM11 = 0;
                long jM12 = 0;
                long jM13 = 0;
                String strK40 = null;
                String strK41 = null;
                while (parcel.dataPosition() < iV20) {
                    int i30 = parcel.readInt();
                    char c21 = (char) i30;
                    if (c21 == 2) {
                        jM11 = d.M(parcel, i30);
                    } else if (c21 == 3) {
                        jM12 = d.M(parcel, i30);
                    } else if (c21 == 4) {
                        strK40 = d.k(parcel, i30);
                    } else if (c21 == 5) {
                        strK41 = d.k(parcel, i30);
                    } else if (c21 != 6) {
                        d.T(parcel, i30);
                    } else {
                        jM13 = d.M(parcel, i30);
                    }
                }
                d.r(parcel, iV20);
                return new AdBreakStatus(jM11, jM12, strK40, strK41, jM13);
            case 21:
                int iV21 = d.V(parcel);
                String strK42 = null;
                long jM14 = 0;
                long jM15 = 0;
                MediaInfo mediaInfo = null;
                MediaQueueData mediaQueueData = null;
                Boolean boolG = null;
                long[] jArrI = null;
                String strK43 = null;
                String strK44 = null;
                String strK45 = null;
                String strK46 = null;
                double dH = 0.0d;
                while (parcel.dataPosition() < iV21) {
                    int i31 = parcel.readInt();
                    switch ((char) i31) {
                        case 2:
                            mediaInfo = (MediaInfo) d.j(parcel, i31, MediaInfo.CREATOR);
                            break;
                        case 3:
                            mediaQueueData = (MediaQueueData) d.j(parcel, i31, MediaQueueData.CREATOR);
                            break;
                        case 4:
                            boolG = d.G(parcel, i31);
                            break;
                        case 5:
                            jM14 = d.M(parcel, i31);
                            break;
                        case 6:
                            dH = d.H(parcel, i31);
                            break;
                        case 7:
                            jArrI = d.i(parcel, i31);
                            break;
                        case '\b':
                            strK42 = d.k(parcel, i31);
                            break;
                        case '\t':
                            strK43 = d.k(parcel, i31);
                            break;
                        case '\n':
                            strK44 = d.k(parcel, i31);
                            break;
                        case 11:
                            strK45 = d.k(parcel, i31);
                            break;
                        case '\f':
                            strK46 = d.k(parcel, i31);
                            break;
                        case '\r':
                            jM15 = d.M(parcel, i31);
                            break;
                        default:
                            d.T(parcel, i31);
                            break;
                    }
                }
                d.r(parcel, iV21);
                return new MediaLoadRequestData(mediaInfo, mediaQueueData, boolG, jM14, dH, jArrI, v4.a.a(strK42), strK43, strK44, strK45, strK46, jM15);
            case 22:
                int iV22 = d.V(parcel);
                int iK14 = 0;
                ArrayList arrayListP10 = null;
                Bundle bundleF2 = null;
                while (parcel.dataPosition() < iV22) {
                    int i32 = parcel.readInt();
                    char c22 = (char) i32;
                    if (c22 == 2) {
                        arrayListP10 = d.p(parcel, i32, WebImage.CREATOR);
                    } else if (c22 == 3) {
                        bundleF2 = d.f(parcel, i32);
                    } else if (c22 != 4) {
                        d.T(parcel, i32);
                    } else {
                        iK14 = d.K(parcel, i32);
                    }
                }
                d.r(parcel, iV22);
                return new MediaMetadata(arrayListP10, bundleF2, iK14);
            case 23:
                int iV23 = d.V(parcel);
                double dH2 = 0.0d;
                String strK47 = null;
                ArrayList arrayListP11 = null;
                ArrayList arrayListP12 = null;
                int iK15 = 0;
                while (parcel.dataPosition() < iV23) {
                    int i33 = parcel.readInt();
                    char c23 = (char) i33;
                    if (c23 == 2) {
                        iK15 = d.K(parcel, i33);
                    } else if (c23 == 3) {
                        strK47 = d.k(parcel, i33);
                    } else if (c23 == 4) {
                        arrayListP11 = d.p(parcel, i33, MediaMetadata.CREATOR);
                    } else if (c23 == 5) {
                        arrayListP12 = d.p(parcel, i33, WebImage.CREATOR);
                    } else if (c23 != 6) {
                        d.T(parcel, i33);
                    } else {
                        dH2 = d.H(parcel, i33);
                    }
                }
                d.r(parcel, iV23);
                MediaQueueContainerMetadata mediaQueueContainerMetadata = new MediaQueueContainerMetadata();
                mediaQueueContainerMetadata.f3719a = iK15;
                mediaQueueContainerMetadata.f3720b = strK47;
                mediaQueueContainerMetadata.f3721c = arrayListP11;
                mediaQueueContainerMetadata.d = arrayListP12;
                mediaQueueContainerMetadata.f3722e = dH2;
                return mediaQueueContainerMetadata;
            case 24:
                int iV24 = d.V(parcel);
                int iK16 = 0;
                long jM16 = 0;
                String strK48 = null;
                String strK49 = null;
                String strK50 = null;
                MediaQueueContainerMetadata mediaQueueContainerMetadata2 = null;
                ArrayList arrayListP13 = null;
                int iK17 = 0;
                int iK18 = 0;
                boolean zF11 = false;
                while (parcel.dataPosition() < iV24) {
                    int i34 = parcel.readInt();
                    switch ((char) i34) {
                        case 2:
                            strK48 = d.k(parcel, i34);
                            break;
                        case 3:
                            strK49 = d.k(parcel, i34);
                            break;
                        case 4:
                            iK16 = d.K(parcel, i34);
                            break;
                        case 5:
                            strK50 = d.k(parcel, i34);
                            break;
                        case 6:
                            mediaQueueContainerMetadata2 = (MediaQueueContainerMetadata) d.j(parcel, i34, MediaQueueContainerMetadata.CREATOR);
                            break;
                        case 7:
                            iK17 = d.K(parcel, i34);
                            break;
                        case '\b':
                            arrayListP13 = d.p(parcel, i34, MediaQueueItem.CREATOR);
                            break;
                        case '\t':
                            iK18 = d.K(parcel, i34);
                            break;
                        case '\n':
                            jM16 = d.M(parcel, i34);
                            break;
                        case 11:
                            zF11 = d.F(parcel, i34);
                            break;
                        default:
                            d.T(parcel, i34);
                            break;
                    }
                }
                d.r(parcel, iV24);
                MediaQueueData mediaQueueData2 = new MediaQueueData();
                mediaQueueData2.f3723a = strK48;
                mediaQueueData2.f3724b = strK49;
                mediaQueueData2.f3725c = iK16;
                mediaQueueData2.d = strK50;
                mediaQueueData2.f3726e = mediaQueueContainerMetadata2;
                mediaQueueData2.f = iK17;
                mediaQueueData2.f3727g = arrayListP13;
                mediaQueueData2.f3728h = iK18;
                mediaQueueData2.f3729i = jM16;
                mediaQueueData2.f3730j = zF11;
                return mediaQueueData2;
            case 25:
                int iV25 = d.V(parcel);
                MediaInfo mediaInfo2 = null;
                long[] jArrI2 = null;
                String strK51 = null;
                double dH3 = 0.0d;
                double dH4 = 0.0d;
                double dH5 = 0.0d;
                int iK19 = 0;
                boolean zF12 = false;
                while (parcel.dataPosition() < iV25) {
                    int i35 = parcel.readInt();
                    switch ((char) i35) {
                        case 2:
                            mediaInfo2 = (MediaInfo) d.j(parcel, i35, MediaInfo.CREATOR);
                            break;
                        case 3:
                            iK19 = d.K(parcel, i35);
                            break;
                        case 4:
                            zF12 = d.F(parcel, i35);
                            break;
                        case 5:
                            dH3 = d.H(parcel, i35);
                            break;
                        case 6:
                            dH4 = d.H(parcel, i35);
                            break;
                        case 7:
                            dH5 = d.H(parcel, i35);
                            break;
                        case '\b':
                            jArrI2 = d.i(parcel, i35);
                            break;
                        case '\t':
                            strK51 = d.k(parcel, i35);
                            break;
                        default:
                            d.T(parcel, i35);
                            break;
                    }
                }
                d.r(parcel, iV25);
                return new MediaQueueItem(mediaInfo2, iK19, zF12, dH3, dH4, dH5, jArrI2, strK51);
            case 26:
                int iV26 = d.V(parcel);
                MediaInfo mediaInfo3 = null;
                long[] jArrI3 = null;
                String strK52 = null;
                ArrayList arrayListP14 = null;
                AdBreakStatus adBreakStatus = null;
                VideoInfo videoInfo = null;
                MediaLiveSeekableRange mediaLiveSeekableRange = null;
                MediaQueueData mediaQueueData3 = null;
                double dH6 = 0.0d;
                double dH7 = 0.0d;
                long jM17 = 0;
                long jM18 = 0;
                long jM19 = 0;
                int iK20 = 0;
                int iK21 = 0;
                int iK22 = 0;
                boolean zF13 = false;
                int iK23 = 0;
                int iK24 = 0;
                int iK25 = 0;
                boolean zF14 = false;
                while (parcel.dataPosition() < iV26) {
                    int i36 = parcel.readInt();
                    switch ((char) i36) {
                        case 2:
                            mediaInfo3 = (MediaInfo) d.j(parcel, i36, MediaInfo.CREATOR);
                            break;
                        case 3:
                            jM17 = d.M(parcel, i36);
                            break;
                        case 4:
                            iK20 = d.K(parcel, i36);
                            break;
                        case 5:
                            dH6 = d.H(parcel, i36);
                            break;
                        case 6:
                            iK21 = d.K(parcel, i36);
                            break;
                        case 7:
                            iK22 = d.K(parcel, i36);
                            break;
                        case '\b':
                            jM18 = d.M(parcel, i36);
                            break;
                        case '\t':
                            jM19 = d.M(parcel, i36);
                            break;
                        case '\n':
                            dH7 = d.H(parcel, i36);
                            break;
                        case 11:
                            zF13 = d.F(parcel, i36);
                            break;
                        case '\f':
                            jArrI3 = d.i(parcel, i36);
                            break;
                        case '\r':
                            iK23 = d.K(parcel, i36);
                            break;
                        case 14:
                            iK24 = d.K(parcel, i36);
                            break;
                        case 15:
                            strK52 = d.k(parcel, i36);
                            break;
                        case 16:
                            iK25 = d.K(parcel, i36);
                            break;
                        case 17:
                            arrayListP14 = d.p(parcel, i36, MediaQueueItem.CREATOR);
                            break;
                        case 18:
                            zF14 = d.F(parcel, i36);
                            break;
                        case 19:
                            adBreakStatus = (AdBreakStatus) d.j(parcel, i36, AdBreakStatus.CREATOR);
                            break;
                        case 20:
                            videoInfo = (VideoInfo) d.j(parcel, i36, VideoInfo.CREATOR);
                            break;
                        case 21:
                            mediaLiveSeekableRange = (MediaLiveSeekableRange) d.j(parcel, i36, MediaLiveSeekableRange.CREATOR);
                            break;
                        case 22:
                            mediaQueueData3 = (MediaQueueData) d.j(parcel, i36, MediaQueueData.CREATOR);
                            break;
                        default:
                            d.T(parcel, i36);
                            break;
                    }
                }
                d.r(parcel, iV26);
                return new MediaStatus(mediaInfo3, jM17, iK20, dH6, iK21, iK22, jM18, jM19, dH7, zF13, jArrI3, iK23, iK24, strK52, iK25, arrayListP14, zF14, adBreakStatus, videoInfo, mediaLiveSeekableRange, mediaQueueData3);
            case 27:
                int iV27 = d.V(parcel);
                String strK53 = null;
                String strK54 = null;
                String strK55 = null;
                String strK56 = null;
                String strK57 = null;
                ArrayList arrayListN = null;
                long jM20 = 0;
                int iK26 = 0;
                int iK27 = 0;
                while (parcel.dataPosition() < iV27) {
                    int i37 = parcel.readInt();
                    switch ((char) i37) {
                        case 2:
                            jM20 = d.M(parcel, i37);
                            break;
                        case 3:
                            iK26 = d.K(parcel, i37);
                            break;
                        case 4:
                            strK54 = d.k(parcel, i37);
                            break;
                        case 5:
                            strK55 = d.k(parcel, i37);
                            break;
                        case 6:
                            strK56 = d.k(parcel, i37);
                            break;
                        case 7:
                            strK57 = d.k(parcel, i37);
                            break;
                        case '\b':
                            iK27 = d.K(parcel, i37);
                            break;
                        case '\t':
                            arrayListN = d.n(parcel, i37);
                            break;
                        case '\n':
                            strK53 = d.k(parcel, i37);
                            break;
                        default:
                            d.T(parcel, i37);
                            break;
                    }
                }
                d.r(parcel, iV27);
                return new MediaTrack(jM20, iK26, strK54, strK55, strK56, strK57, iK27, arrayListN, v4.a.a(strK53));
            case 28:
                int iV28 = d.V(parcel);
                String strK58 = null;
                String strK59 = null;
                ArrayList arrayListN2 = null;
                String strK60 = null;
                Uri uri2 = null;
                String strK61 = null;
                String strK62 = null;
                Boolean boolG2 = null;
                Boolean boolG3 = null;
                int iK28 = 0;
                while (parcel.dataPosition() < iV28) {
                    int i38 = parcel.readInt();
                    switch ((char) i38) {
                        case 2:
                            strK58 = d.k(parcel, i38);
                            break;
                        case 3:
                            strK59 = d.k(parcel, i38);
                            break;
                        case 4:
                            d.p(parcel, i38, WebImage.CREATOR);
                            break;
                        case 5:
                            arrayListN2 = d.n(parcel, i38);
                            break;
                        case 6:
                            strK60 = d.k(parcel, i38);
                            break;
                        case 7:
                            uri2 = (Uri) d.j(parcel, i38, Uri.CREATOR);
                            break;
                        case '\b':
                            strK61 = d.k(parcel, i38);
                            break;
                        case '\t':
                            strK62 = d.k(parcel, i38);
                            break;
                        case '\n':
                            boolG2 = d.G(parcel, i38);
                            break;
                        case 11:
                            boolG3 = d.G(parcel, i38);
                            break;
                        case '\f':
                            iK28 = d.K(parcel, i38);
                            break;
                        default:
                            d.T(parcel, i38);
                            break;
                    }
                }
                d.r(parcel, iV28);
                return new ApplicationMetadata(strK58, strK59, arrayListN2, strK60, uri2, strK61, strK62, boolG2, boolG3, iK28);
            default:
                int iV29 = d.V(parcel);
                MediaLoadRequestData mediaLoadRequestData = null;
                String strK63 = null;
                while (parcel.dataPosition() < iV29) {
                    int i39 = parcel.readInt();
                    char c24 = (char) i39;
                    if (c24 == 2) {
                        mediaLoadRequestData = (MediaLoadRequestData) d.j(parcel, i39, MediaLoadRequestData.CREATOR);
                    } else if (c24 != 3) {
                        d.T(parcel, i39);
                    } else {
                        strK63 = d.k(parcel, i39);
                    }
                }
                d.r(parcel, iV29);
                return new SessionState(mediaLoadRequestData, v4.a.a(strK63));
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f7267a) {
            case 0:
                return new StringToIntConverter[i6];
            case 1:
                return new zac[i6];
            case 2:
                return new zam[i6];
            case 3:
                return new zan[i6];
            case 4:
                return new zal[i6];
            case 5:
                return new SafeParcelResponse[i6];
            case 6:
                return new MemoryCache$Key[i6];
            case 7:
                return new GoogleSignInAccount[i6];
            case 8:
                return new GoogleSignInOptions[i6];
            case 9:
                return new GoogleSignInOptionsExtensionParcelable[i6];
            case 10:
                return new AdBreakClipInfo[i6];
            case 11:
                return new CredentialsData[i6];
            case 12:
                return new zzar[i6];
            case 13:
                return new zzat[i6];
            case 14:
                return new AdBreakInfo[i6];
            case 15:
                return new zzbs[i6];
            case 16:
                return new LaunchOptions[i6];
            case 17:
                return new MediaError[i6];
            case 18:
                return new MediaInfo[i6];
            case 19:
                return new MediaLiveSeekableRange[i6];
            case 20:
                return new AdBreakStatus[i6];
            case 21:
                return new MediaLoadRequestData[i6];
            case 22:
                return new MediaMetadata[i6];
            case 23:
                return new MediaQueueContainerMetadata[i6];
            case 24:
                return new MediaQueueData[i6];
            case 25:
                return new MediaQueueItem[i6];
            case 26:
                return new MediaStatus[i6];
            case 27:
                return new MediaTrack[i6];
            case 28:
                return new ApplicationMetadata[i6];
            default:
                return new SessionState[i6];
        }
    }
}
