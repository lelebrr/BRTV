package x4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.zzs;
import com.google.android.material.badge.BadgeState$State;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11017a;

    public /* synthetic */ m(int i6) {
        this.f11017a = i6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f11017a) {
            case 0:
                int iV = n5.d.V(parcel);
                boolean zF = false;
                String strK = null;
                IBinder iBinderJ = null;
                boolean zF2 = false;
                while (parcel.dataPosition() < iV) {
                    int i6 = parcel.readInt();
                    char c5 = (char) i6;
                    if (c5 == 1) {
                        strK = n5.d.k(parcel, i6);
                    } else if (c5 == 2) {
                        iBinderJ = n5.d.J(parcel, i6);
                    } else if (c5 == 3) {
                        zF = n5.d.F(parcel, i6);
                    } else if (c5 != 4) {
                        n5.d.T(parcel, i6);
                    } else {
                        zF2 = n5.d.F(parcel, i6);
                    }
                }
                n5.d.r(parcel, iV);
                return new zzs(strK, iBinderJ, zF, zF2);
            case 1:
                return new UserInfoBean(parcel);
            case 2:
                BadgeState$State badgeState$State = new BadgeState$State();
                badgeState$State.d = 255;
                badgeState$State.f4625e = -2;
                badgeState$State.f = -2;
                badgeState$State.f4631l = Boolean.TRUE;
                badgeState$State.f4622a = parcel.readInt();
                badgeState$State.f4623b = (Integer) parcel.readSerializable();
                badgeState$State.f4624c = (Integer) parcel.readSerializable();
                badgeState$State.d = parcel.readInt();
                badgeState$State.f4625e = parcel.readInt();
                badgeState$State.f = parcel.readInt();
                badgeState$State.f4627h = parcel.readString();
                badgeState$State.f4628i = parcel.readInt();
                badgeState$State.f4630k = (Integer) parcel.readSerializable();
                badgeState$State.f4632m = (Integer) parcel.readSerializable();
                badgeState$State.f4633n = (Integer) parcel.readSerializable();
                badgeState$State.f4634o = (Integer) parcel.readSerializable();
                badgeState$State.f4635p = (Integer) parcel.readSerializable();
                badgeState$State.f4636q = (Integer) parcel.readSerializable();
                badgeState$State.f4637r = (Integer) parcel.readSerializable();
                badgeState$State.f4631l = (Boolean) parcel.readSerializable();
                badgeState$State.f4626g = (Locale) parcel.readSerializable();
                return badgeState$State;
            default:
                return new PlugInBean(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i6) {
        switch (this.f11017a) {
            case 0:
                return new zzs[i6];
            case 1:
                return new UserInfoBean[i6];
            case 2:
                return new BadgeState$State[i6];
            default:
                return new PlugInBean[i6];
        }
    }
}
