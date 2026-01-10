package com.google.android.gms.internal.cast;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.signin.internal.zak;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s extends Binder implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4408c;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        int i6 = this.f4408c;
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i6, Parcel parcel, Parcel parcel2, int i10) {
        switch (this.f4408c) {
            case 0:
                if (i6 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i6, parcel, parcel2, i10)) {
                    return true;
                }
                return w(i6, parcel, parcel2);
            case 1:
                if (i6 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i6, parcel, parcel2, i10)) {
                    return true;
                }
                return w(i6, parcel, parcel2);
            default:
                if (i6 <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i6, parcel, parcel2, i10)) {
                    return true;
                }
                switch (i6) {
                    case 3:
                        q5.a.b(parcel);
                        break;
                    case 4:
                        q5.a.b(parcel);
                        break;
                    case 5:
                    default:
                        return false;
                    case 6:
                        q5.a.b(parcel);
                        break;
                    case 7:
                        q5.a.b(parcel);
                        break;
                    case 8:
                        zak zakVar = (zak) q5.a.a(parcel, zak.CREATOR);
                        q5.a.b(parcel);
                        z4.w wVar = (z4.w) this;
                        wVar.f11645e.post(new ua.a(9, wVar, zakVar, false));
                        break;
                    case 9:
                        q5.a.b(parcel);
                        break;
                }
                parcel2.writeNoException();
                return true;
        }
    }

    public boolean w(int i6, Parcel parcel, Parcel parcel2) {
        return false;
    }

    public s(String str, int i6) {
        this.f4408c = i6;
        switch (i6) {
            case 1:
                attachInterface(this, str);
                break;
            default:
                attachInterface(this, str);
                break;
        }
    }
}
