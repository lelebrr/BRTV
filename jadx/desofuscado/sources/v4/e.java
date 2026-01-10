package v4;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.internal.zza;
import com.google.android.gms.cast.internal.zzac;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e extends com.google.android.gms.internal.cast.s implements f {
    public e() {
        super("com.google.android.gms.cast.internal.ICastDeviceControllerListener", 0);
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        switch (i6) {
            case 1:
                int i10 = parcel.readInt();
                d0.b(parcel);
                m(i10);
                return true;
            case 2:
                ApplicationMetadata applicationMetadata = (ApplicationMetadata) d0.a(parcel, ApplicationMetadata.CREATOR);
                String string = parcel.readString();
                String string2 = parcel.readString();
                boolean z7 = parcel.readInt() != 0;
                d0.b(parcel);
                u(applicationMetadata, string, string2, z7);
                return true;
            case 3:
                int i11 = parcel.readInt();
                d0.b(parcel);
                r(i11);
                return true;
            case 4:
                parcel.readString();
                parcel.readDouble();
                int i12 = d0.f4128a;
                parcel.readInt();
                d0.b(parcel);
                o();
                return true;
            case 5:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                d0.b(parcel);
                n(string3, string4);
                return true;
            case 6:
                String string5 = parcel.readString();
                byte[] bArrCreateByteArray = parcel.createByteArray();
                d0.b(parcel);
                s(string5, bArrCreateByteArray);
                return true;
            case 7:
                int i13 = parcel.readInt();
                d0.b(parcel);
                e(i13);
                return true;
            case 8:
                int i14 = parcel.readInt();
                d0.b(parcel);
                p(i14);
                return true;
            case 9:
                int i15 = parcel.readInt();
                d0.b(parcel);
                a(i15);
                return true;
            case 10:
                parcel.readString();
                long j10 = parcel.readLong();
                int i16 = parcel.readInt();
                d0.b(parcel);
                q(i16, j10);
                return true;
            case 11:
                parcel.readString();
                long j11 = parcel.readLong();
                d0.b(parcel);
                t(j11);
                return true;
            case 12:
                zza zzaVar = (zza) d0.a(parcel, zza.CREATOR);
                d0.b(parcel);
                c(zzaVar);
                return true;
            case 13:
                zzac zzacVar = (zzac) d0.a(parcel, zzac.CREATOR);
                d0.b(parcel);
                v(zzacVar);
                return true;
            case 14:
                int i17 = parcel.readInt();
                d0.b(parcel);
                d(i17);
                return true;
            case 15:
                int i18 = parcel.readInt();
                d0.b(parcel);
                k(i18);
                return true;
            default:
                return false;
        }
    }
}
