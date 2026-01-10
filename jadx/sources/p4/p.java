package p4;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableByte;
import androidx.databinding.ObservableChar;
import androidx.databinding.ObservableDouble;
import androidx.databinding.ObservableFloat;
import androidx.databinding.ObservableInt;
import androidx.databinding.ObservableLong;
import androidx.databinding.ObservableShort;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.VastAdsRequest;
import com.google.android.gms.cast.VideoInfo;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.zzj;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzaa;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.cast.zzat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.common.zzo;
import com.google.android.gms.common.zzq;
import com.google.android.gms.signin.internal.zaa;
import com.google.android.gms.signin.internal.zag;
import com.google.android.gms.signin.internal.zai;
import com.google.android.gms.signin.internal.zak;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8908a;

    public /* synthetic */ p(int i6) {
        this.f8908a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f8908a) {
            case 0:
                int iV = n5.d.V(parcel);
                String strK = null;
                String strK2 = null;
                float fI = 0.0f;
                int iK = 0;
                int iK2 = 0;
                int iK3 = 0;
                int iK4 = 0;
                int iK5 = 0;
                int iK6 = 0;
                int iK7 = 0;
                int iK8 = 0;
                int iK9 = 0;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    switch ((char) i6) {
                        case 2:
                            fI = n5.d.I(parcel, i6);
                            break;
                        case 3:
                            iK = n5.d.K(parcel, i6);
                            break;
                        case 4:
                            iK2 = n5.d.K(parcel, i6);
                            break;
                        case 5:
                            iK3 = n5.d.K(parcel, i6);
                            break;
                        case 6:
                            iK4 = n5.d.K(parcel, i6);
                            break;
                        case 7:
                            iK5 = n5.d.K(parcel, i6);
                            break;
                        case '\b':
                            iK6 = n5.d.K(parcel, i6);
                            break;
                        case '\t':
                            iK7 = n5.d.K(parcel, i6);
                            break;
                        case '\n':
                            strK = n5.d.k(parcel, i6);
                            break;
                        case 11:
                            iK8 = n5.d.K(parcel, i6);
                            break;
                        case '\f':
                            iK9 = n5.d.K(parcel, i6);
                            break;
                        case '\r':
                            strK2 = n5.d.k(parcel, i6);
                            break;
                        default:
                            n5.d.T(parcel, i6);
                            break;
                    }
                }
                n5.d.r(parcel, iV);
                return new TextTrackStyle(fI, iK, iK2, iK3, iK4, iK5, iK6, iK7, strK, iK8, iK9, strK2);
            case 1:
                int iV2 = n5.d.V(parcel);
                String strK3 = null;
                String strK4 = null;
                while (parcel.dataPosition() < iV2) {
                    int i10 = parcel.readInt();
                    char c5 = (char) i10;
                    if (c5 == 2) {
                        strK3 = n5.d.k(parcel, i10);
                    } else if (c5 != 3) {
                        n5.d.T(parcel, i10);
                    } else {
                        strK4 = n5.d.k(parcel, i10);
                    }
                }
                n5.d.r(parcel, iV2);
                return new VastAdsRequest(strK3, strK4);
            case 2:
                int iV3 = n5.d.V(parcel);
                int iK10 = 0;
                int iK11 = 0;
                int iK12 = 0;
                while (parcel.dataPosition() < iV3) {
                    int i11 = parcel.readInt();
                    char c8 = (char) i11;
                    if (c8 == 2) {
                        iK10 = n5.d.K(parcel, i11);
                    } else if (c8 == 3) {
                        iK11 = n5.d.K(parcel, i11);
                    } else if (c8 != 4) {
                        n5.d.T(parcel, i11);
                    } else {
                        iK12 = n5.d.K(parcel, i11);
                    }
                }
                n5.d.r(parcel, iV3);
                return new VideoInfo(iK10, iK11, iK12);
            case 3:
                int iV4 = n5.d.V(parcel);
                String strK5 = null;
                String strK6 = null;
                String strK7 = null;
                String strK8 = null;
                String strK9 = null;
                ArrayList arrayListP = null;
                String strK10 = null;
                String strK11 = null;
                String strK12 = null;
                byte[] bArrG = null;
                String strK13 = null;
                zzaa zzaaVar = null;
                Integer numValueOf = null;
                Boolean boolG = null;
                int iK13 = 0;
                int iK14 = 0;
                int iK15 = -1;
                int iK16 = 0;
                boolean zF = false;
                while (parcel.dataPosition() < iV4) {
                    int i12 = parcel.readInt();
                    switch ((char) i12) {
                        case 2:
                            strK5 = n5.d.k(parcel, i12);
                            break;
                        case 3:
                            strK6 = n5.d.k(parcel, i12);
                            break;
                        case 4:
                            strK7 = n5.d.k(parcel, i12);
                            break;
                        case 5:
                            strK8 = n5.d.k(parcel, i12);
                            break;
                        case 6:
                            strK9 = n5.d.k(parcel, i12);
                            break;
                        case 7:
                            iK13 = n5.d.K(parcel, i12);
                            break;
                        case '\b':
                            arrayListP = n5.d.p(parcel, i12, WebImage.CREATOR);
                            break;
                        case '\t':
                            iK14 = n5.d.K(parcel, i12);
                            break;
                        case '\n':
                            iK15 = n5.d.K(parcel, i12);
                            break;
                        case 11:
                            strK10 = n5.d.k(parcel, i12);
                            break;
                        case '\f':
                            strK11 = n5.d.k(parcel, i12);
                            break;
                        case '\r':
                            iK16 = n5.d.K(parcel, i12);
                            break;
                        case 14:
                            strK12 = n5.d.k(parcel, i12);
                            break;
                        case 15:
                            bArrG = n5.d.g(parcel, i12);
                            break;
                        case 16:
                            strK13 = n5.d.k(parcel, i12);
                            break;
                        case 17:
                            zF = n5.d.F(parcel, i12);
                            break;
                        case 18:
                            zzaaVar = (zzaa) n5.d.j(parcel, i12, zzaa.CREATOR);
                            break;
                        case 19:
                            int iN = n5.d.N(parcel, i12);
                            if (iN != 0) {
                                n5.d.Z(parcel, iN, 4);
                                numValueOf = Integer.valueOf(parcel.readInt());
                                break;
                            } else {
                                numValueOf = null;
                                break;
                            }
                        case 20:
                            boolG = n5.d.G(parcel, i12);
                            break;
                        default:
                            n5.d.T(parcel, i12);
                            break;
                    }
                }
                n5.d.r(parcel, iV4);
                return new CastDevice(strK5, strK6, strK7, strK8, strK9, iK13, arrayListP, iK14, iK15, strK10, strK11, iK16, strK12, bArrG, strK13, zF, zzaaVar, numValueOf, boolG);
            case 4:
                int iV5 = n5.d.V(parcel);
                boolean zF2 = false;
                while (parcel.dataPosition() < iV5) {
                    int i13 = parcel.readInt();
                    if (((char) i13) != 2) {
                        n5.d.T(parcel, i13);
                    } else {
                        zF2 = n5.d.F(parcel, i13);
                    }
                }
                n5.d.r(parcel, iV5);
                return new zzj(zF2);
            case 5:
                int iV6 = n5.d.V(parcel);
                int iK17 = 0;
                while (parcel.dataPosition() < iV6) {
                    int i14 = parcel.readInt();
                    if (((char) i14) != 2) {
                        n5.d.T(parcel, i14);
                    } else {
                        iK17 = n5.d.K(parcel, i14);
                    }
                }
                n5.d.r(parcel, iV6);
                return new zzl(iK17);
            case 6:
                int iV7 = n5.d.V(parcel);
                String strK14 = null;
                ArrayList arrayListN = null;
                LaunchOptions launchOptions = null;
                CastMediaOptions castMediaOptions = null;
                ArrayList arrayListN2 = null;
                zzj zzjVar = null;
                zzl zzlVar = null;
                double dH = 0.0d;
                boolean zF3 = false;
                boolean zF4 = false;
                boolean zF5 = false;
                boolean zF6 = false;
                boolean zF7 = false;
                boolean zF8 = false;
                boolean zF9 = false;
                boolean zF10 = false;
                boolean zF11 = false;
                boolean zF12 = false;
                while (parcel.dataPosition() < iV7) {
                    int i15 = parcel.readInt();
                    switch ((char) i15) {
                        case 2:
                            strK14 = n5.d.k(parcel, i15);
                            break;
                        case 3:
                            arrayListN = n5.d.n(parcel, i15);
                            break;
                        case 4:
                            zF3 = n5.d.F(parcel, i15);
                            break;
                        case 5:
                            launchOptions = (LaunchOptions) n5.d.j(parcel, i15, LaunchOptions.CREATOR);
                            break;
                        case 6:
                            zF4 = n5.d.F(parcel, i15);
                            break;
                        case 7:
                            castMediaOptions = (CastMediaOptions) n5.d.j(parcel, i15, CastMediaOptions.CREATOR);
                            break;
                        case '\b':
                            zF5 = n5.d.F(parcel, i15);
                            break;
                        case '\t':
                            dH = n5.d.H(parcel, i15);
                            break;
                        case '\n':
                            zF6 = n5.d.F(parcel, i15);
                            break;
                        case 11:
                            zF7 = n5.d.F(parcel, i15);
                            break;
                        case '\f':
                            zF8 = n5.d.F(parcel, i15);
                            break;
                        case '\r':
                            arrayListN2 = n5.d.n(parcel, i15);
                            break;
                        case 14:
                            zF9 = n5.d.F(parcel, i15);
                            break;
                        case 15:
                            n5.d.K(parcel, i15);
                            break;
                        case 16:
                            zF10 = n5.d.F(parcel, i15);
                            break;
                        case 17:
                            zzjVar = (zzj) n5.d.j(parcel, i15, zzj.CREATOR);
                            break;
                        case 18:
                            zzlVar = (zzl) n5.d.j(parcel, i15, zzl.CREATOR);
                            break;
                        case 19:
                            zF11 = n5.d.F(parcel, i15);
                            break;
                        case 20:
                            zF12 = n5.d.F(parcel, i15);
                            break;
                        default:
                            n5.d.T(parcel, i15);
                            break;
                    }
                }
                n5.d.r(parcel, iV7);
                return new CastOptions(strK14, arrayListN, zF3, launchOptions, zF4, castMediaOptions, zF5, dH, zF6, zF7, zF8, arrayListN2, zF9, zF10, zzjVar, zzlVar, zF11, zF12);
            case 7:
                int iV8 = n5.d.V(parcel);
                String strK15 = null;
                String strK16 = null;
                IBinder iBinderJ = null;
                NotificationOptions notificationOptions = null;
                boolean zF13 = false;
                boolean zF14 = false;
                while (parcel.dataPosition() < iV8) {
                    int i16 = parcel.readInt();
                    switch ((char) i16) {
                        case 2:
                            strK15 = n5.d.k(parcel, i16);
                            break;
                        case 3:
                            strK16 = n5.d.k(parcel, i16);
                            break;
                        case 4:
                            iBinderJ = n5.d.J(parcel, i16);
                            break;
                        case 5:
                            notificationOptions = (NotificationOptions) n5.d.j(parcel, i16, NotificationOptions.CREATOR);
                            break;
                        case 6:
                            zF13 = n5.d.F(parcel, i16);
                            break;
                        case 7:
                            zF14 = n5.d.F(parcel, i16);
                            break;
                        default:
                            n5.d.T(parcel, i16);
                            break;
                    }
                }
                n5.d.r(parcel, iV8);
                return new CastMediaOptions(strK15, strK16, iBinderJ, notificationOptions, zF13, zF14);
            case 8:
                int iV9 = n5.d.V(parcel);
                int iK18 = 0;
                int iK19 = 0;
                int iK20 = 0;
                while (parcel.dataPosition() < iV9) {
                    int i17 = parcel.readInt();
                    char c10 = (char) i17;
                    if (c10 == 2) {
                        iK18 = n5.d.K(parcel, i17);
                    } else if (c10 == 3) {
                        iK19 = n5.d.K(parcel, i17);
                    } else if (c10 != 4) {
                        n5.d.T(parcel, i17);
                    } else {
                        iK20 = n5.d.K(parcel, i17);
                    }
                }
                n5.d.r(parcel, iV9);
                return new ImageHints(iK18, iK19, iK20);
            case 9:
                int iV10 = n5.d.V(parcel);
                String strK17 = null;
                String strK18 = null;
                int iK21 = 0;
                while (parcel.dataPosition() < iV10) {
                    int i18 = parcel.readInt();
                    char c11 = (char) i18;
                    if (c11 == 2) {
                        strK17 = n5.d.k(parcel, i18);
                    } else if (c11 == 3) {
                        iK21 = n5.d.K(parcel, i18);
                    } else if (c11 != 4) {
                        n5.d.T(parcel, i18);
                    } else {
                        strK18 = n5.d.k(parcel, i18);
                    }
                }
                n5.d.r(parcel, iV10);
                return new NotificationAction(strK17, iK21, strK18);
            case 10:
                int iV11 = n5.d.V(parcel);
                ArrayList arrayListN3 = null;
                int[] iArrH = null;
                String strK19 = null;
                IBinder iBinderJ2 = null;
                long jM = 0;
                int iK22 = 0;
                int iK23 = 0;
                int iK24 = 0;
                int iK25 = 0;
                int iK26 = 0;
                int iK27 = 0;
                int iK28 = 0;
                int iK29 = 0;
                int iK30 = 0;
                int iK31 = 0;
                int iK32 = 0;
                int iK33 = 0;
                int iK34 = 0;
                int iK35 = 0;
                int iK36 = 0;
                int iK37 = 0;
                int iK38 = 0;
                int iK39 = 0;
                int iK40 = 0;
                int iK41 = 0;
                int iK42 = 0;
                int iK43 = 0;
                int iK44 = 0;
                int iK45 = 0;
                int iK46 = 0;
                int iK47 = 0;
                int iK48 = 0;
                boolean zF15 = false;
                boolean zF16 = false;
                while (parcel.dataPosition() < iV11) {
                    int i19 = parcel.readInt();
                    switch ((char) i19) {
                        case 2:
                            arrayListN3 = n5.d.n(parcel, i19);
                            break;
                        case 3:
                            iArrH = n5.d.h(parcel, i19);
                            break;
                        case 4:
                            jM = n5.d.M(parcel, i19);
                            break;
                        case 5:
                            strK19 = n5.d.k(parcel, i19);
                            break;
                        case 6:
                            iK22 = n5.d.K(parcel, i19);
                            break;
                        case 7:
                            iK23 = n5.d.K(parcel, i19);
                            break;
                        case '\b':
                            iK24 = n5.d.K(parcel, i19);
                            break;
                        case '\t':
                            iK25 = n5.d.K(parcel, i19);
                            break;
                        case '\n':
                            iK26 = n5.d.K(parcel, i19);
                            break;
                        case 11:
                            iK27 = n5.d.K(parcel, i19);
                            break;
                        case '\f':
                            iK28 = n5.d.K(parcel, i19);
                            break;
                        case '\r':
                            iK29 = n5.d.K(parcel, i19);
                            break;
                        case 14:
                            iK30 = n5.d.K(parcel, i19);
                            break;
                        case 15:
                            iK31 = n5.d.K(parcel, i19);
                            break;
                        case 16:
                            iK32 = n5.d.K(parcel, i19);
                            break;
                        case 17:
                            iK33 = n5.d.K(parcel, i19);
                            break;
                        case 18:
                            iK34 = n5.d.K(parcel, i19);
                            break;
                        case 19:
                            iK35 = n5.d.K(parcel, i19);
                            break;
                        case 20:
                            iK36 = n5.d.K(parcel, i19);
                            break;
                        case 21:
                            iK37 = n5.d.K(parcel, i19);
                            break;
                        case 22:
                            iK38 = n5.d.K(parcel, i19);
                            break;
                        case 23:
                            iK39 = n5.d.K(parcel, i19);
                            break;
                        case 24:
                            iK40 = n5.d.K(parcel, i19);
                            break;
                        case 25:
                            iK41 = n5.d.K(parcel, i19);
                            break;
                        case 26:
                            iK42 = n5.d.K(parcel, i19);
                            break;
                        case 27:
                            iK43 = n5.d.K(parcel, i19);
                            break;
                        case 28:
                            iK44 = n5.d.K(parcel, i19);
                            break;
                        case 29:
                            iK45 = n5.d.K(parcel, i19);
                            break;
                        case 30:
                            iK46 = n5.d.K(parcel, i19);
                            break;
                        case 31:
                            iK47 = n5.d.K(parcel, i19);
                            break;
                        case ' ':
                            iK48 = n5.d.K(parcel, i19);
                            break;
                        case '!':
                            iBinderJ2 = n5.d.J(parcel, i19);
                            break;
                        case '\"':
                            zF15 = n5.d.F(parcel, i19);
                            break;
                        case '#':
                            zF16 = n5.d.F(parcel, i19);
                            break;
                        default:
                            n5.d.T(parcel, i19);
                            break;
                    }
                }
                n5.d.r(parcel, iV11);
                return new NotificationOptions(arrayListN3, iArrH, jM, strK19, iK22, iK23, iK24, iK25, iK26, iK27, iK28, iK29, iK30, iK31, iK32, iK33, iK34, iK35, iK36, iK37, iK38, iK39, iK40, iK41, iK42, iK43, iK44, iK45, iK46, iK47, iK48, iBinderJ2, zF15, zF16);
            case 11:
                int iV12 = n5.d.V(parcel);
                String strK20 = null;
                String strK21 = null;
                String strK22 = null;
                String strK23 = null;
                String strK24 = null;
                int iK49 = 0;
                boolean zF17 = false;
                boolean zF18 = false;
                boolean zF19 = false;
                while (parcel.dataPosition() < iV12) {
                    int i20 = parcel.readInt();
                    switch ((char) i20) {
                        case 2:
                            iK49 = n5.d.K(parcel, i20);
                            break;
                        case 3:
                            zF17 = n5.d.F(parcel, i20);
                            break;
                        case 4:
                            zF18 = n5.d.F(parcel, i20);
                            break;
                        case 5:
                            strK20 = n5.d.k(parcel, i20);
                            break;
                        case 6:
                            strK21 = n5.d.k(parcel, i20);
                            break;
                        case 7:
                            strK22 = n5.d.k(parcel, i20);
                            break;
                        case '\b':
                            strK23 = n5.d.k(parcel, i20);
                            break;
                        case '\t':
                            strK24 = n5.d.k(parcel, i20);
                            break;
                        case '\n':
                            zF19 = n5.d.F(parcel, i20);
                            break;
                        default:
                            n5.d.T(parcel, i20);
                            break;
                    }
                }
                n5.d.r(parcel, iV12);
                return new zzaa(iK49, zF17, zF18, strK20, strK21, strK22, strK23, strK24, zF19);
            case 12:
                int iV13 = n5.d.V(parcel);
                double dH2 = 0.0d;
                ApplicationMetadata applicationMetadata = null;
                zzat zzatVar = null;
                boolean zF20 = false;
                int iK50 = 0;
                int iK51 = 0;
                double dH3 = 0.0d;
                while (parcel.dataPosition() < iV13) {
                    int i21 = parcel.readInt();
                    switch ((char) i21) {
                        case 2:
                            dH2 = n5.d.H(parcel, i21);
                            break;
                        case 3:
                            zF20 = n5.d.F(parcel, i21);
                            break;
                        case 4:
                            iK50 = n5.d.K(parcel, i21);
                            break;
                        case 5:
                            applicationMetadata = (ApplicationMetadata) n5.d.j(parcel, i21, ApplicationMetadata.CREATOR);
                            break;
                        case 6:
                            iK51 = n5.d.K(parcel, i21);
                            break;
                        case 7:
                            zzatVar = (zzat) n5.d.j(parcel, i21, zzat.CREATOR);
                            break;
                        case '\b':
                            dH3 = n5.d.H(parcel, i21);
                            break;
                        default:
                            n5.d.T(parcel, i21);
                            break;
                    }
                }
                n5.d.r(parcel, iV13);
                zzac zzacVar = new zzac();
                zzacVar.f3893a = dH2;
                zzacVar.f3894b = zF20;
                zzacVar.f3895c = iK50;
                zzacVar.d = applicationMetadata;
                zzacVar.f3896e = iK51;
                zzacVar.f = zzatVar;
                zzacVar.f3897g = dH3;
                return zzacVar;
            case 13:
                int iV14 = n5.d.V(parcel);
                String strK25 = null;
                while (parcel.dataPosition() < iV14) {
                    int i22 = parcel.readInt();
                    if (((char) i22) != 2) {
                        n5.d.T(parcel, i22);
                    } else {
                        strK25 = n5.d.k(parcel, i22);
                    }
                }
                n5.d.r(parcel, iV14);
                return new zza(strK25);
            case 14:
                int iV15 = n5.d.V(parcel);
                Intent intent = null;
                int iK52 = 0;
                int iK53 = 0;
                while (parcel.dataPosition() < iV15) {
                    int i23 = parcel.readInt();
                    char c12 = (char) i23;
                    if (c12 == 1) {
                        iK52 = n5.d.K(parcel, i23);
                    } else if (c12 == 2) {
                        iK53 = n5.d.K(parcel, i23);
                    } else if (c12 != 3) {
                        n5.d.T(parcel, i23);
                    } else {
                        intent = (Intent) n5.d.j(parcel, i23, Intent.CREATOR);
                    }
                }
                n5.d.r(parcel, iV15);
                return new zaa(iK52, iK53, intent);
            case 15:
                int iV16 = n5.d.V(parcel);
                ArrayList arrayListN4 = null;
                String strK26 = null;
                while (parcel.dataPosition() < iV16) {
                    int i24 = parcel.readInt();
                    char c13 = (char) i24;
                    if (c13 == 1) {
                        arrayListN4 = n5.d.n(parcel, i24);
                    } else if (c13 != 2) {
                        n5.d.T(parcel, i24);
                    } else {
                        strK26 = n5.d.k(parcel, i24);
                    }
                }
                n5.d.r(parcel, iV16);
                return new zag(arrayListN4, strK26);
            case 16:
                int iV17 = n5.d.V(parcel);
                zat zatVar = null;
                int iK54 = 0;
                while (parcel.dataPosition() < iV17) {
                    int i25 = parcel.readInt();
                    char c14 = (char) i25;
                    if (c14 == 1) {
                        iK54 = n5.d.K(parcel, i25);
                    } else if (c14 != 2) {
                        n5.d.T(parcel, i25);
                    } else {
                        zatVar = (zat) n5.d.j(parcel, i25, zat.CREATOR);
                    }
                }
                n5.d.r(parcel, iV17);
                return new zai(iK54, zatVar);
            case 17:
                int iV18 = n5.d.V(parcel);
                ConnectionResult connectionResult = null;
                zav zavVar = null;
                int iK55 = 0;
                while (parcel.dataPosition() < iV18) {
                    int i26 = parcel.readInt();
                    char c15 = (char) i26;
                    if (c15 == 1) {
                        iK55 = n5.d.K(parcel, i26);
                    } else if (c15 == 2) {
                        connectionResult = (ConnectionResult) n5.d.j(parcel, i26, ConnectionResult.CREATOR);
                    } else if (c15 != 3) {
                        n5.d.T(parcel, i26);
                    } else {
                        zavVar = (zav) n5.d.j(parcel, i26, zav.CREATOR);
                    }
                }
                n5.d.r(parcel, iV18);
                return new zak(iK55, connectionResult, zavVar);
            case 18:
                boolean z7 = parcel.readInt() == 1;
                ObservableBoolean observableBoolean = new ObservableBoolean();
                observableBoolean.f1324b = z7;
                return observableBoolean;
            case 19:
                byte b8 = parcel.readByte();
                ObservableByte observableByte = new ObservableByte();
                observableByte.f1325b = b8;
                return observableByte;
            case 20:
                char c16 = (char) parcel.readInt();
                ObservableChar observableChar = new ObservableChar();
                observableChar.f1326b = c16;
                return observableChar;
            case 21:
                double d = parcel.readDouble();
                ObservableDouble observableDouble = new ObservableDouble();
                observableDouble.f1327b = d;
                return observableDouble;
            case 22:
                float f = parcel.readFloat();
                ObservableFloat observableFloat = new ObservableFloat();
                observableFloat.f1328b = f;
                return observableFloat;
            case 23:
                int i27 = parcel.readInt();
                ObservableInt observableInt = new ObservableInt();
                observableInt.f1329b = i27;
                return observableInt;
            case 24:
                long j10 = parcel.readLong();
                ObservableLong observableLong = new ObservableLong();
                observableLong.f1330b = j10;
                return observableLong;
            case 25:
                short s10 = (short) parcel.readInt();
                ObservableShort observableShort = new ObservableShort();
                observableShort.f1332b = s10;
                return observableShort;
            case 26:
                int iV19 = n5.d.V(parcel);
                PendingIntent pendingIntent = null;
                String strK27 = null;
                int iK56 = 0;
                int iK57 = 0;
                while (parcel.dataPosition() < iV19) {
                    int i28 = parcel.readInt();
                    char c17 = (char) i28;
                    if (c17 == 1) {
                        iK56 = n5.d.K(parcel, i28);
                    } else if (c17 == 2) {
                        iK57 = n5.d.K(parcel, i28);
                    } else if (c17 == 3) {
                        pendingIntent = (PendingIntent) n5.d.j(parcel, i28, PendingIntent.CREATOR);
                    } else if (c17 != 4) {
                        n5.d.T(parcel, i28);
                    } else {
                        strK27 = n5.d.k(parcel, i28);
                    }
                }
                n5.d.r(parcel, iV19);
                return new ConnectionResult(iK56, iK57, pendingIntent, strK27);
            case 27:
                int iV20 = n5.d.V(parcel);
                long jM2 = -1;
                int iK58 = 0;
                String strK28 = null;
                while (parcel.dataPosition() < iV20) {
                    int i29 = parcel.readInt();
                    char c18 = (char) i29;
                    if (c18 == 1) {
                        strK28 = n5.d.k(parcel, i29);
                    } else if (c18 == 2) {
                        iK58 = n5.d.K(parcel, i29);
                    } else if (c18 != 3) {
                        n5.d.T(parcel, i29);
                    } else {
                        jM2 = n5.d.M(parcel, i29);
                    }
                }
                n5.d.r(parcel, iV20);
                return new Feature(strK28, iK58, jM2);
            case 28:
                int iV21 = n5.d.V(parcel);
                String strK29 = null;
                IBinder iBinderJ3 = null;
                boolean zF21 = false;
                boolean zF22 = false;
                boolean zF23 = false;
                boolean zF24 = false;
                while (parcel.dataPosition() < iV21) {
                    int i30 = parcel.readInt();
                    switch ((char) i30) {
                        case 1:
                            strK29 = n5.d.k(parcel, i30);
                            break;
                        case 2:
                            zF21 = n5.d.F(parcel, i30);
                            break;
                        case 3:
                            zF22 = n5.d.F(parcel, i30);
                            break;
                        case 4:
                            iBinderJ3 = n5.d.J(parcel, i30);
                            break;
                        case 5:
                            zF23 = n5.d.F(parcel, i30);
                            break;
                        case 6:
                            zF24 = n5.d.F(parcel, i30);
                            break;
                        default:
                            n5.d.T(parcel, i30);
                            break;
                    }
                }
                n5.d.r(parcel, iV21);
                return new zzo(strK29, zF21, zF22, iBinderJ3, zF23, zF24);
            default:
                int iV22 = n5.d.V(parcel);
                boolean zF25 = false;
                String strK30 = null;
                int iK59 = 0;
                int iK60 = 0;
                while (parcel.dataPosition() < iV22) {
                    int i31 = parcel.readInt();
                    char c19 = (char) i31;
                    if (c19 == 1) {
                        zF25 = n5.d.F(parcel, i31);
                    } else if (c19 == 2) {
                        strK30 = n5.d.k(parcel, i31);
                    } else if (c19 == 3) {
                        iK59 = n5.d.K(parcel, i31);
                    } else if (c19 != 4) {
                        n5.d.T(parcel, i31);
                    } else {
                        iK60 = n5.d.K(parcel, i31);
                    }
                }
                n5.d.r(parcel, iV22);
                return new zzq(strK30, iK59, iK60, zF25);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f8908a) {
            case 0:
                return new TextTrackStyle[i6];
            case 1:
                return new VastAdsRequest[i6];
            case 2:
                return new VideoInfo[i6];
            case 3:
                return new CastDevice[i6];
            case 4:
                return new zzj[i6];
            case 5:
                return new zzl[i6];
            case 6:
                return new CastOptions[i6];
            case 7:
                return new CastMediaOptions[i6];
            case 8:
                return new ImageHints[i6];
            case 9:
                return new NotificationAction[i6];
            case 10:
                return new NotificationOptions[i6];
            case 11:
                return new zzaa[i6];
            case 12:
                return new zzac[i6];
            case 13:
                return new zza[i6];
            case 14:
                return new zaa[i6];
            case 15:
                return new zag[i6];
            case 16:
                return new zai[i6];
            case 17:
                return new zak[i6];
            case 18:
                return new ObservableBoolean[i6];
            case 19:
                return new ObservableByte[i6];
            case 20:
                return new ObservableChar[i6];
            case 21:
                return new ObservableDouble[i6];
            case 22:
                return new ObservableFloat[i6];
            case 23:
                return new ObservableInt[i6];
            case 24:
                return new ObservableLong[i6];
            case 25:
                return new ObservableShort[i6];
            case 26:
                return new ConnectionResult[i6];
            case 27:
                return new Feature[i6];
            case 28:
                return new zzo[i6];
            default:
                return new zzq[i6];
        }
    }
}
