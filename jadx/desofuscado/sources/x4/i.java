package x4;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.cast.s;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class i extends s implements b5.j {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f11012e = 0;
    public final int d;

    public i(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData", 1);
        if (bArr.length != 25) {
            throw new IllegalArgumentException();
        }
        this.d = Arrays.hashCode(bArr);
    }

    public static byte[] x(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e5) {
            throw new AssertionError(e5);
        }
    }

    @Override // b5.j
    public final int b() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        m5.a aVarF;
        if (obj != null && (obj instanceof b5.j)) {
            try {
                b5.j jVar = (b5.j) obj;
                if (jVar.b() == this.d && (aVarF = jVar.f()) != null) {
                    return Arrays.equals(y(), (byte[]) m5.b.y(aVarF));
                }
                return false;
            } catch (RemoteException e5) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e5);
            }
        }
        return false;
    }

    @Override // b5.j
    public final m5.a f() {
        return new m5.b(y());
    }

    public final int hashCode() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.cast.s
    public final boolean w(int i6, Parcel parcel, Parcel parcel2) {
        if (i6 == 1) {
            m5.a aVarF = f();
            parcel2.writeNoException();
            r5.a.c(parcel2, aVarF);
        } else {
            if (i6 != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(this.d);
        }
        return true;
    }

    public abstract byte[] y();
}
