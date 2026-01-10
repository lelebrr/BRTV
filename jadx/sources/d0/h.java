package d0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.core.content.UnusedAppRestrictionsBackportService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends Binder implements c0.c {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UnusedAppRestrictionsBackportService f5995c;

    public h(UnusedAppRestrictionsBackportService unusedAppRestrictionsBackportService) {
        this.f5995c = unusedAppRestrictionsBackportService;
        attachInterface(this, c0.c.f3333b);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i6, Parcel parcel, Parcel parcel2, int i10) {
        c0.b bVar;
        String str = c0.c.f3333b;
        if (i6 >= 1 && i6 <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i6 == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        if (i6 != 1) {
            return super.onTransact(i6, parcel, parcel2, i10);
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            bVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(c0.b.f3332a);
            if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c0.b)) {
                c0.a aVar = new c0.a();
                aVar.f3331c = strongBinder;
                bVar = aVar;
            } else {
                bVar = (c0.b) iInterfaceQueryLocalInterface;
            }
        }
        if (bVar != null) {
            this.f5995c.a();
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
