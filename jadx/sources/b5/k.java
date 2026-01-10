package b5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.GetServiceRequest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f3256c;

    public k(IBinder iBinder) {
        this.f3256c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f3256c;
    }

    public final void g(o oVar, GetServiceRequest getServiceRequest) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(oVar);
            parcelObtain.writeInt(1);
            w0.d.a(getServiceRequest, parcelObtain, 0);
            this.f3256c.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
