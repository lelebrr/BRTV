package b5;

import android.os.Parcel;
import com.google.android.gms.common.internal.zax;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends com.google.android.gms.internal.cast.a {
    public final m5.a z(m5.b bVar, zax zaxVar) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f4096e);
        int i6 = q5.a.f9236a;
        parcelObtain.writeStrongBinder(bVar);
        parcelObtain.writeInt(1);
        zaxVar.writeToParcel(parcelObtain, 0);
        parcelObtain = Parcel.obtain();
        try {
            this.d.transact(2, parcelObtain, parcelObtain, 0);
            parcelObtain.readException();
            parcelObtain.recycle();
            return m5.b.x(parcelObtain.readStrongBinder());
        } catch (RuntimeException e5) {
            throw e5;
        } finally {
            parcelObtain.recycle();
        }
    }
}
