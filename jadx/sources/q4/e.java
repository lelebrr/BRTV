package q4;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.google.android.gms.internal.cast.d0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: b, reason: collision with root package name */
    public static final v4.b f9223b = new v4.b(RtspHeaders.SESSION, null);

    /* renamed from: a, reason: collision with root package name */
    public final u f9224a;

    public e(Context context, String str, String str2) {
        u uVarB;
        try {
            uVarB = com.google.android.gms.internal.cast.i.b(context).B(str, str2, new w(this));
        } catch (RemoteException | c e5) {
            com.google.android.gms.internal.cast.i.f4216a.a(e5, "Unable to call %s on %s.", "newSessionImpl", com.google.android.gms.internal.cast.k.class.getSimpleName());
            uVarB = null;
        }
        this.f9224a = uVarB;
    }

    public final boolean a() {
        b5.l.b("Must be called from the main thread.");
        u uVar = this.f9224a;
        if (uVar != null) {
            try {
                s sVar = (s) uVar;
                Parcel parcelW = sVar.w(sVar.l(), 5);
                int i6 = d0.f4128a;
                boolean z7 = parcelW.readInt() != 0;
                parcelW.recycle();
                return z7;
            } catch (RemoteException e5) {
                f9223b.a(e5, "Unable to call %s on %s.", "isConnected", u.class.getSimpleName());
            }
        }
        return false;
    }

    public final void b(int i6) {
        u uVar = this.f9224a;
        if (uVar == null) {
            return;
        }
        try {
            s sVar = (s) uVar;
            Parcel parcelL = sVar.l();
            parcelL.writeInt(i6);
            sVar.x(parcelL, 13);
        } catch (RemoteException e5) {
            f9223b.a(e5, "Unable to call %s on %s.", "notifySessionEnded", u.class.getSimpleName());
        }
    }

    public final int c() {
        b5.l.b("Must be called from the main thread.");
        u uVar = this.f9224a;
        if (uVar != null) {
            try {
                s sVar = (s) uVar;
                Parcel parcelW = sVar.w(sVar.l(), 17);
                int i6 = parcelW.readInt();
                parcelW.recycle();
                if (i6 >= 211100000) {
                    s sVar2 = (s) uVar;
                    Parcel parcelW2 = sVar2.w(sVar2.l(), 18);
                    int i10 = parcelW2.readInt();
                    parcelW2.recycle();
                    return i10;
                }
            } catch (RemoteException e5) {
                f9223b.a(e5, "Unable to call %s on %s.", "getSessionStartType", u.class.getSimpleName());
            }
        }
        return 0;
    }

    public final m5.a d() {
        u uVar = this.f9224a;
        if (uVar != null) {
            try {
                s sVar = (s) uVar;
                Parcel parcelW = sVar.w(sVar.l(), 1);
                m5.a aVarX = m5.b.x(parcelW.readStrongBinder());
                parcelW.recycle();
                return aVarX;
            } catch (RemoteException e5) {
                f9223b.a(e5, "Unable to call %s on %s.", "getWrappedObject", u.class.getSimpleName());
            }
        }
        return null;
    }
}
