package w0;

import android.accounts.Account;
import android.app.PendingIntent;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.databinding.ObservableParcelable;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.zat;
import com.google.android.gms.common.internal.zav;
import com.google.android.gms.common.internal.zax;
import com.google.android.gms.common.internal.zzal;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.material.internal.ParcelableSparseBooleanArray;
import com.google.android.material.internal.ParcelableSparseIntArray;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10792a;

    public /* synthetic */ d(int i6) {
        this.f10792a = i6;
    }

    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        int i10 = getServiceRequest.f3963a;
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(i10);
        o9.d.X(parcel, 2, 4);
        parcel.writeInt(getServiceRequest.f3964b);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(getServiceRequest.f3965c);
        o9.d.R(parcel, 4, getServiceRequest.d);
        o9.d.N(parcel, 5, getServiceRequest.f3966e);
        o9.d.T(parcel, 6, getServiceRequest.f, i6);
        o9.d.M(parcel, 7, getServiceRequest.f3967g);
        o9.d.Q(parcel, 8, getServiceRequest.f3968h, i6);
        o9.d.T(parcel, 10, getServiceRequest.f3969i, i6);
        o9.d.T(parcel, 11, getServiceRequest.f3970j, i6);
        o9.d.X(parcel, 12, 4);
        parcel.writeInt(getServiceRequest.f3971k ? 1 : 0);
        o9.d.X(parcel, 13, 4);
        parcel.writeInt(getServiceRequest.f3972l);
        boolean z7 = getServiceRequest.f3973m;
        o9.d.X(parcel, 14, 4);
        parcel.writeInt(z7 ? 1 : 0);
        o9.d.R(parcel, 15, getServiceRequest.f3974n);
        o9.d.W(parcel, iV);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f10792a) {
            case 0:
                Parcelable parcelable = parcel.readParcelable(d.class.getClassLoader());
                ObservableParcelable observableParcelable = new ObservableParcelable();
                observableParcelable.f1331b = parcelable;
                return observableParcelable;
            case 1:
                return new ParcelImpl(parcel);
            case 2:
                int iV = n5.d.V(parcel);
                int iK = 0;
                ParcelFileDescriptor parcelFileDescriptor = null;
                int iK2 = 0;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    char c5 = (char) i6;
                    if (c5 == 1) {
                        iK = n5.d.K(parcel, i6);
                    } else if (c5 == 2) {
                        parcelFileDescriptor = (ParcelFileDescriptor) n5.d.j(parcel, i6, ParcelFileDescriptor.CREATOR);
                    } else if (c5 != 3) {
                        n5.d.T(parcel, i6);
                    } else {
                        iK2 = n5.d.K(parcel, i6);
                    }
                }
                n5.d.r(parcel, iV);
                return new BitmapTeleporter(iK, parcelFileDescriptor, iK2);
            case 3:
                int iV2 = n5.d.V(parcel);
                String[] strArrL = null;
                CursorWindow[] cursorWindowArr = null;
                Bundle bundleF = null;
                int iK3 = 0;
                int iK4 = 0;
                while (parcel.dataPosition() < iV2) {
                    int i10 = parcel.readInt();
                    char c8 = (char) i10;
                    if (c8 == 1) {
                        strArrL = n5.d.l(parcel, i10);
                    } else if (c8 == 2) {
                        cursorWindowArr = (CursorWindow[]) n5.d.o(parcel, i10, CursorWindow.CREATOR);
                    } else if (c8 == 3) {
                        iK4 = n5.d.K(parcel, i10);
                    } else if (c8 == 4) {
                        bundleF = n5.d.f(parcel, i10);
                    } else if (c8 != 1000) {
                        n5.d.T(parcel, i10);
                    } else {
                        iK3 = n5.d.K(parcel, i10);
                    }
                }
                n5.d.r(parcel, iV2);
                DataHolder dataHolder = new DataHolder(iK3, strArrL, cursorWindowArr, iK4, bundleF);
                dataHolder.f3946c = new Bundle();
                int i11 = 0;
                while (true) {
                    String[] strArr = dataHolder.f3945b;
                    if (i11 >= strArr.length) {
                        CursorWindow[] cursorWindowArr2 = dataHolder.d;
                        dataHolder.f3948g = new int[cursorWindowArr2.length];
                        int numRows = 0;
                        for (int i12 = 0; i12 < cursorWindowArr2.length; i12++) {
                            dataHolder.f3948g[i12] = numRows;
                            numRows += cursorWindowArr2[i12].getNumRows() - (numRows - cursorWindowArr2[i12].getStartPosition());
                        }
                        return dataHolder;
                    }
                    dataHolder.f3946c.putInt(strArr[i11], i11);
                    i11++;
                }
            case 4:
                return new StrategyBean(parcel);
            case 5:
                int iV3 = n5.d.V(parcel);
                String strK = null;
                int iK5 = 0;
                while (parcel.dataPosition() < iV3) {
                    int i13 = parcel.readInt();
                    char c10 = (char) i13;
                    if (c10 == 1) {
                        iK5 = n5.d.K(parcel, i13);
                    } else if (c10 != 2) {
                        n5.d.T(parcel, i13);
                    } else {
                        strK = n5.d.k(parcel, i13);
                    }
                }
                n5.d.r(parcel, iV3);
                return new ClientIdentity(iK5, strK);
            case 6:
                int iV4 = n5.d.V(parcel);
                ArrayList arrayListP = null;
                int iK6 = 0;
                while (parcel.dataPosition() < iV4) {
                    int i14 = parcel.readInt();
                    char c11 = (char) i14;
                    if (c11 == 1) {
                        iK6 = n5.d.K(parcel, i14);
                    } else if (c11 != 2) {
                        n5.d.T(parcel, i14);
                    } else {
                        arrayListP = n5.d.p(parcel, i14, MethodInvocation.CREATOR);
                    }
                }
                n5.d.r(parcel, iV4);
                return new TelemetryData(iK6, arrayListP);
            case 7:
                int iV5 = n5.d.V(parcel);
                String strK2 = null;
                String strK3 = null;
                long jM = 0;
                long jM2 = 0;
                int iK7 = 0;
                int iK8 = 0;
                int iK9 = 0;
                int iK10 = 0;
                int iK11 = -1;
                while (parcel.dataPosition() < iV5) {
                    int i15 = parcel.readInt();
                    switch ((char) i15) {
                        case 1:
                            iK7 = n5.d.K(parcel, i15);
                            break;
                        case 2:
                            iK8 = n5.d.K(parcel, i15);
                            break;
                        case 3:
                            iK9 = n5.d.K(parcel, i15);
                            break;
                        case 4:
                            jM = n5.d.M(parcel, i15);
                            break;
                        case 5:
                            jM2 = n5.d.M(parcel, i15);
                            break;
                        case 6:
                            strK2 = n5.d.k(parcel, i15);
                            break;
                        case 7:
                            strK3 = n5.d.k(parcel, i15);
                            break;
                        case '\b':
                            iK10 = n5.d.K(parcel, i15);
                            break;
                        case '\t':
                            iK11 = n5.d.K(parcel, i15);
                            break;
                        default:
                            n5.d.T(parcel, i15);
                            break;
                    }
                }
                n5.d.r(parcel, iV5);
                return new MethodInvocation(iK7, iK8, iK9, jM, jM2, strK2, strK3, iK10, iK11);
            case 8:
                int iV6 = n5.d.V(parcel);
                Account account = null;
                GoogleSignInAccount googleSignInAccount = null;
                int iK12 = 0;
                int iK13 = 0;
                while (parcel.dataPosition() < iV6) {
                    int i16 = parcel.readInt();
                    char c12 = (char) i16;
                    if (c12 == 1) {
                        iK12 = n5.d.K(parcel, i16);
                    } else if (c12 == 2) {
                        account = (Account) n5.d.j(parcel, i16, Account.CREATOR);
                    } else if (c12 == 3) {
                        iK13 = n5.d.K(parcel, i16);
                    } else if (c12 != 4) {
                        n5.d.T(parcel, i16);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) n5.d.j(parcel, i16, GoogleSignInAccount.CREATOR);
                    }
                }
                n5.d.r(parcel, iV6);
                return new zat(iK12, account, iK13, googleSignInAccount);
            case 9:
                int iV7 = n5.d.V(parcel);
                IBinder iBinderJ = null;
                ConnectionResult connectionResult = null;
                int iK14 = 0;
                boolean zF = false;
                boolean zF2 = false;
                while (parcel.dataPosition() < iV7) {
                    int i17 = parcel.readInt();
                    char c13 = (char) i17;
                    if (c13 == 1) {
                        iK14 = n5.d.K(parcel, i17);
                    } else if (c13 == 2) {
                        iBinderJ = n5.d.J(parcel, i17);
                    } else if (c13 == 3) {
                        connectionResult = (ConnectionResult) n5.d.j(parcel, i17, ConnectionResult.CREATOR);
                    } else if (c13 == 4) {
                        zF = n5.d.F(parcel, i17);
                    } else if (c13 != 5) {
                        n5.d.T(parcel, i17);
                    } else {
                        zF2 = n5.d.F(parcel, i17);
                    }
                }
                n5.d.r(parcel, iV7);
                return new zav(iK14, iBinderJ, connectionResult, zF, zF2);
            case 10:
                int iV8 = n5.d.V(parcel);
                Scope[] scopeArr = null;
                int iK15 = 0;
                int iK16 = 0;
                int iK17 = 0;
                while (parcel.dataPosition() < iV8) {
                    int i18 = parcel.readInt();
                    char c14 = (char) i18;
                    if (c14 == 1) {
                        iK15 = n5.d.K(parcel, i18);
                    } else if (c14 == 2) {
                        iK16 = n5.d.K(parcel, i18);
                    } else if (c14 == 3) {
                        iK17 = n5.d.K(parcel, i18);
                    } else if (c14 != 4) {
                        n5.d.T(parcel, i18);
                    } else {
                        scopeArr = (Scope[]) n5.d.o(parcel, i18, Scope.CREATOR);
                    }
                }
                n5.d.r(parcel, iV8);
                return new zax(iK15, iK16, iK17, scopeArr);
            case 11:
                int iV9 = n5.d.V(parcel);
                int iK18 = 0;
                boolean zF3 = false;
                boolean zF4 = false;
                int iK19 = 0;
                int iK20 = 0;
                while (parcel.dataPosition() < iV9) {
                    int i19 = parcel.readInt();
                    char c15 = (char) i19;
                    if (c15 == 1) {
                        iK18 = n5.d.K(parcel, i19);
                    } else if (c15 == 2) {
                        zF3 = n5.d.F(parcel, i19);
                    } else if (c15 == 3) {
                        zF4 = n5.d.F(parcel, i19);
                    } else if (c15 == 4) {
                        iK19 = n5.d.K(parcel, i19);
                    } else if (c15 != 5) {
                        n5.d.T(parcel, i19);
                    } else {
                        iK20 = n5.d.K(parcel, i19);
                    }
                }
                n5.d.r(parcel, iV9);
                return new RootTelemetryConfiguration(iK18, zF3, zF4, iK19, iK20);
            case 12:
                int iV10 = n5.d.V(parcel);
                int iK21 = 0;
                while (parcel.dataPosition() < iV10) {
                    int i20 = parcel.readInt();
                    if (((char) i20) != 1) {
                        n5.d.T(parcel, i20);
                    } else {
                        iK21 = n5.d.K(parcel, i20);
                    }
                }
                n5.d.r(parcel, iV10);
                return new zzal(iK21);
            case 13:
                return new BinderWrapper(parcel);
            case 14:
                int iV11 = n5.d.V(parcel);
                Bundle bundleF2 = null;
                Feature[] featureArr = null;
                ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
                int iK22 = 0;
                while (parcel.dataPosition() < iV11) {
                    int i21 = parcel.readInt();
                    char c16 = (char) i21;
                    if (c16 == 1) {
                        bundleF2 = n5.d.f(parcel, i21);
                    } else if (c16 == 2) {
                        featureArr = (Feature[]) n5.d.o(parcel, i21, Feature.CREATOR);
                    } else if (c16 == 3) {
                        iK22 = n5.d.K(parcel, i21);
                    } else if (c16 != 4) {
                        n5.d.T(parcel, i21);
                    } else {
                        connectionTelemetryConfiguration = (ConnectionTelemetryConfiguration) n5.d.j(parcel, i21, ConnectionTelemetryConfiguration.CREATOR);
                    }
                }
                n5.d.r(parcel, iV11);
                zzk zzkVar = new zzk();
                zzkVar.f4022a = bundleF2;
                zzkVar.f4023b = featureArr;
                zzkVar.f4024c = iK22;
                zzkVar.d = connectionTelemetryConfiguration;
                return zzkVar;
            case 15:
                int iV12 = n5.d.V(parcel);
                RootTelemetryConfiguration rootTelemetryConfiguration = null;
                int[] iArrH = null;
                int[] iArrH2 = null;
                boolean zF5 = false;
                boolean zF6 = false;
                int iK23 = 0;
                while (parcel.dataPosition() < iV12) {
                    int i22 = parcel.readInt();
                    switch ((char) i22) {
                        case 1:
                            rootTelemetryConfiguration = (RootTelemetryConfiguration) n5.d.j(parcel, i22, RootTelemetryConfiguration.CREATOR);
                            break;
                        case 2:
                            zF5 = n5.d.F(parcel, i22);
                            break;
                        case 3:
                            zF6 = n5.d.F(parcel, i22);
                            break;
                        case 4:
                            iArrH = n5.d.h(parcel, i22);
                            break;
                        case 5:
                            iK23 = n5.d.K(parcel, i22);
                            break;
                        case 6:
                            iArrH2 = n5.d.h(parcel, i22);
                            break;
                        default:
                            n5.d.T(parcel, i22);
                            break;
                    }
                }
                n5.d.r(parcel, iV12);
                return new ConnectionTelemetryConfiguration(rootTelemetryConfiguration, zF5, zF6, iArrH, iK23, iArrH2);
            case 16:
                int iV13 = n5.d.V(parcel);
                Scope[] scopeArr2 = GetServiceRequest.f3961o;
                Bundle bundle = new Bundle();
                Feature[] featureArr2 = GetServiceRequest.f3962p;
                Feature[] featureArr3 = featureArr2;
                String strK4 = null;
                IBinder iBinderJ2 = null;
                Account account2 = null;
                String strK5 = null;
                int iK24 = 0;
                int iK25 = 0;
                int iK26 = 0;
                boolean zF7 = false;
                int iK27 = 0;
                boolean zF8 = false;
                while (parcel.dataPosition() < iV13) {
                    int i23 = parcel.readInt();
                    switch ((char) i23) {
                        case 1:
                            iK24 = n5.d.K(parcel, i23);
                            break;
                        case 2:
                            iK25 = n5.d.K(parcel, i23);
                            break;
                        case 3:
                            iK26 = n5.d.K(parcel, i23);
                            break;
                        case 4:
                            strK4 = n5.d.k(parcel, i23);
                            break;
                        case 5:
                            iBinderJ2 = n5.d.J(parcel, i23);
                            break;
                        case 6:
                            scopeArr2 = (Scope[]) n5.d.o(parcel, i23, Scope.CREATOR);
                            break;
                        case 7:
                            bundle = n5.d.f(parcel, i23);
                            break;
                        case '\b':
                            account2 = (Account) n5.d.j(parcel, i23, Account.CREATOR);
                            break;
                        case '\t':
                        default:
                            n5.d.T(parcel, i23);
                            break;
                        case '\n':
                            featureArr2 = (Feature[]) n5.d.o(parcel, i23, Feature.CREATOR);
                            break;
                        case 11:
                            featureArr3 = (Feature[]) n5.d.o(parcel, i23, Feature.CREATOR);
                            break;
                        case '\f':
                            zF7 = n5.d.F(parcel, i23);
                            break;
                        case '\r':
                            iK27 = n5.d.K(parcel, i23);
                            break;
                        case 14:
                            zF8 = n5.d.F(parcel, i23);
                            break;
                        case 15:
                            strK5 = n5.d.k(parcel, i23);
                            break;
                    }
                }
                n5.d.r(parcel, iV13);
                return new GetServiceRequest(iK24, iK25, iK26, strK4, iBinderJ2, scopeArr2, bundle, account2, featureArr2, featureArr3, zF7, iK27, zF8, strK5);
            case 17:
                return new CrashDetailBean(parcel);
            case 18:
                return new ActivityResult(parcel);
            case 19:
                return new IntentSenderRequest(parcel);
            case 20:
                int iV14 = n5.d.V(parcel);
                int iK28 = 0;
                Uri uri = null;
                int iK29 = 0;
                int iK30 = 0;
                while (parcel.dataPosition() < iV14) {
                    int i24 = parcel.readInt();
                    char c17 = (char) i24;
                    if (c17 == 1) {
                        iK28 = n5.d.K(parcel, i24);
                    } else if (c17 == 2) {
                        uri = (Uri) n5.d.j(parcel, i24, Uri.CREATOR);
                    } else if (c17 == 3) {
                        iK29 = n5.d.K(parcel, i24);
                    } else if (c17 != 4) {
                        n5.d.T(parcel, i24);
                    } else {
                        iK30 = n5.d.K(parcel, i24);
                    }
                }
                n5.d.r(parcel, iV14);
                return new WebImage(iK28, uri, iK29, iK30);
            case 21:
                int i25 = parcel.readInt();
                ParcelableSparseBooleanArray parcelableSparseBooleanArray = new ParcelableSparseBooleanArray(i25);
                int[] iArr = new int[i25];
                boolean[] zArr = new boolean[i25];
                parcel.readIntArray(iArr);
                parcel.readBooleanArray(zArr);
                for (int i26 = 0; i26 < i25; i26++) {
                    parcelableSparseBooleanArray.put(iArr[i26], zArr[i26]);
                }
                return parcelableSparseBooleanArray;
            case 22:
                int i27 = parcel.readInt();
                ParcelableSparseIntArray parcelableSparseIntArray = new ParcelableSparseIntArray(i27);
                int[] iArr2 = new int[i27];
                int[] iArr3 = new int[i27];
                parcel.readIntArray(iArr2);
                parcel.readIntArray(iArr3);
                for (int i28 = 0; i28 < i27; i28++) {
                    parcelableSparseIntArray.put(iArr2[i28], iArr3[i28]);
                }
                return parcelableSparseIntArray;
            case 23:
                int iV15 = n5.d.V(parcel);
                boolean zF9 = false;
                int iK31 = 0;
                while (parcel.dataPosition() < iV15) {
                    int i29 = parcel.readInt();
                    char c18 = (char) i29;
                    if (c18 == 1) {
                        zF9 = n5.d.F(parcel, i29);
                    } else if (c18 != 2) {
                        n5.d.T(parcel, i29);
                    } else {
                        iK31 = n5.d.K(parcel, i29);
                    }
                }
                n5.d.r(parcel, iV15);
                return new ModuleAvailabilityResponse(zF9, iK31);
            case 24:
                int iV16 = n5.d.V(parcel);
                PendingIntent pendingIntent = null;
                while (parcel.dataPosition() < iV16) {
                    int i30 = parcel.readInt();
                    if (((char) i30) != 1) {
                        n5.d.T(parcel, i30);
                    } else {
                        pendingIntent = (PendingIntent) n5.d.j(parcel, i30, PendingIntent.CREATOR);
                    }
                }
                n5.d.r(parcel, iV16);
                return new ModuleInstallIntentResponse(pendingIntent);
            case 25:
                int iV17 = n5.d.V(parcel);
                int iK32 = 0;
                boolean zF10 = false;
                while (parcel.dataPosition() < iV17) {
                    int i31 = parcel.readInt();
                    char c19 = (char) i31;
                    if (c19 == 1) {
                        iK32 = n5.d.K(parcel, i31);
                    } else if (c19 != 2) {
                        n5.d.T(parcel, i31);
                    } else {
                        zF10 = n5.d.F(parcel, i31);
                    }
                }
                n5.d.r(parcel, iV17);
                return new ModuleInstallResponse(iK32, zF10);
            case 26:
                int iV18 = n5.d.V(parcel);
                Long lValueOf = null;
                Long lValueOf2 = null;
                int iK33 = 0;
                int iK34 = 0;
                int iK35 = 0;
                while (parcel.dataPosition() < iV18) {
                    int i32 = parcel.readInt();
                    char c20 = (char) i32;
                    if (c20 == 1) {
                        iK33 = n5.d.K(parcel, i32);
                    } else if (c20 == 2) {
                        iK34 = n5.d.K(parcel, i32);
                    } else if (c20 == 3) {
                        int iN = n5.d.N(parcel, i32);
                        if (iN == 0) {
                            lValueOf = null;
                        } else {
                            n5.d.Z(parcel, iN, 8);
                            lValueOf = Long.valueOf(parcel.readLong());
                        }
                    } else if (c20 == 4) {
                        int iN2 = n5.d.N(parcel, i32);
                        if (iN2 == 0) {
                            lValueOf2 = null;
                        } else {
                            n5.d.Z(parcel, iN2, 8);
                            lValueOf2 = Long.valueOf(parcel.readLong());
                        }
                    } else if (c20 != 5) {
                        n5.d.T(parcel, i32);
                    } else {
                        iK35 = n5.d.K(parcel, i32);
                    }
                }
                n5.d.r(parcel, iV18);
                return new ModuleInstallStatusUpdate(iK33, iK34, lValueOf, lValueOf2, iK35);
            case 27:
                int iV19 = n5.d.V(parcel);
                ArrayList arrayListP2 = null;
                String strK6 = null;
                String strK7 = null;
                boolean zF11 = false;
                while (parcel.dataPosition() < iV19) {
                    int i33 = parcel.readInt();
                    char c21 = (char) i33;
                    if (c21 == 1) {
                        arrayListP2 = n5.d.p(parcel, i33, Feature.CREATOR);
                    } else if (c21 == 2) {
                        zF11 = n5.d.F(parcel, i33);
                    } else if (c21 == 3) {
                        strK6 = n5.d.k(parcel, i33);
                    } else if (c21 != 4) {
                        n5.d.T(parcel, i33);
                    } else {
                        strK7 = n5.d.k(parcel, i33);
                    }
                }
                n5.d.r(parcel, iV19);
                return new ApiFeatureRequest(arrayListP2, zF11, strK6, strK7);
            case 28:
                int iV20 = n5.d.V(parcel);
                int iK36 = 0;
                String strK8 = null;
                int iK37 = 0;
                while (parcel.dataPosition() < iV20) {
                    int i34 = parcel.readInt();
                    char c22 = (char) i34;
                    if (c22 == 1) {
                        iK36 = n5.d.K(parcel, i34);
                    } else if (c22 == 2) {
                        strK8 = n5.d.k(parcel, i34);
                    } else if (c22 != 3) {
                        n5.d.T(parcel, i34);
                    } else {
                        iK37 = n5.d.K(parcel, i34);
                    }
                }
                n5.d.r(parcel, iV20);
                return new FavaDiagnosticsEntity(iK36, iK37, strK8);
            default:
                int iV21 = n5.d.V(parcel);
                StringToIntConverter stringToIntConverter = null;
                int iK38 = 0;
                while (parcel.dataPosition() < iV21) {
                    int i35 = parcel.readInt();
                    char c23 = (char) i35;
                    if (c23 == 1) {
                        iK38 = n5.d.K(parcel, i35);
                    } else if (c23 != 2) {
                        n5.d.T(parcel, i35);
                    } else {
                        stringToIntConverter = (StringToIntConverter) n5.d.j(parcel, i35, StringToIntConverter.CREATOR);
                    }
                }
                n5.d.r(parcel, iV21);
                return new zaa(iK38, stringToIntConverter);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f10792a) {
            case 0:
                return new ObservableParcelable[i6];
            case 1:
                return new ParcelImpl[i6];
            case 2:
                return new BitmapTeleporter[i6];
            case 3:
                return new DataHolder[i6];
            case 4:
                return new StrategyBean[i6];
            case 5:
                return new ClientIdentity[i6];
            case 6:
                return new TelemetryData[i6];
            case 7:
                return new MethodInvocation[i6];
            case 8:
                return new zat[i6];
            case 9:
                return new zav[i6];
            case 10:
                return new zax[i6];
            case 11:
                return new RootTelemetryConfiguration[i6];
            case 12:
                return new zzal[i6];
            case 13:
                return new BinderWrapper[i6];
            case 14:
                return new zzk[i6];
            case 15:
                return new ConnectionTelemetryConfiguration[i6];
            case 16:
                return new GetServiceRequest[i6];
            case 17:
                return new CrashDetailBean[i6];
            case 18:
                return new ActivityResult[i6];
            case 19:
                return new IntentSenderRequest[i6];
            case 20:
                return new WebImage[i6];
            case 21:
                return new ParcelableSparseBooleanArray[i6];
            case 22:
                return new ParcelableSparseIntArray[i6];
            case 23:
                return new ModuleAvailabilityResponse[i6];
            case 24:
                return new ModuleInstallIntentResponse[i6];
            case 25:
                return new ModuleInstallResponse[i6];
            case 26:
                return new ModuleInstallStatusUpdate[i6];
            case 27:
                return new ApiFeatureRequest[i6];
            case 28:
                return new FavaDiagnosticsEntity[i6];
            default:
                return new zaa[i6];
        }
    }
}
