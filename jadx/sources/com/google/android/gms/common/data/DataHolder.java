package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import w0.d;

/* compiled from: MyApplication */
@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new d(3);

    /* renamed from: a, reason: collision with root package name */
    public final int f3944a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f3945b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f3946c;
    public final CursorWindow[] d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3947e;
    public final Bundle f;

    /* renamed from: g, reason: collision with root package name */
    public int[] f3948g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f3949h = false;

    static {
        new ArrayList();
        new HashMap();
    }

    public DataHolder(int i6, String[] strArr, CursorWindow[] cursorWindowArr, int i10, Bundle bundle) {
        this.f3944a = i6;
        this.f3945b = strArr;
        this.d = cursorWindowArr;
        this.f3947e = i10;
        this.f = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            try {
                if (!this.f3949h) {
                    this.f3949h = true;
                    int i6 = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.d;
                        if (i6 >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i6].close();
                        i6++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finalize() throws Throwable {
        boolean z7;
        try {
            if (this.d.length > 0) {
                synchronized (this) {
                    z7 = this.f3949h;
                }
                if (!z7) {
                    close();
                    Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + toString() + ")");
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        String[] strArr = this.f3945b;
        if (strArr != null) {
            int iV2 = o9.d.V(parcel, 1);
            parcel.writeStringArray(strArr);
            o9.d.W(parcel, iV2);
        }
        o9.d.T(parcel, 2, this.d, i6);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3947e);
        o9.d.M(parcel, 4, this.f);
        o9.d.X(parcel, 1000, 4);
        parcel.writeInt(this.f3944a);
        o9.d.W(parcel, iV);
        if ((i6 & 1) != 0) {
            close();
        }
    }
}
