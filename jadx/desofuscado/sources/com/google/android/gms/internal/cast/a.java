package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements IInterface {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4095c;
    public final IBinder d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4096e;

    public /* synthetic */ a(IBinder iBinder, String str, int i6) {
        this.f4095c = i6;
        this.d = iBinder;
        this.f4096e = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        switch (this.f4095c) {
        }
        return this.d;
    }

    public Parcel g(Parcel parcel, int i6) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.d.transact(i6, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e5) {
                parcelObtain.recycle();
                throw e5;
            }
        } finally {
            parcel.recycle();
        }
    }

    public Parcel l() {
        switch (this.f4095c) {
            case 0:
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(this.f4096e);
                return parcelObtain;
            default:
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken(this.f4096e);
                return parcelObtain2;
        }
    }

    public Parcel w(Parcel parcel, int i6) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.d.transact(i6, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e5) {
                parcelObtain.recycle();
                throw e5;
            }
        } finally {
            parcel.recycle();
        }
    }

    public void x(Parcel parcel, int i6) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.d.transact(i6, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }

    public void y(Parcel parcel, int i6) {
        try {
            this.d.transact(i6, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
