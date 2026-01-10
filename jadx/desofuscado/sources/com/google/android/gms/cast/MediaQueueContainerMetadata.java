package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaQueueContainerMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueContainerMetadata> CREATOR = new a(23);

    /* renamed from: a, reason: collision with root package name */
    public int f3719a;

    /* renamed from: b, reason: collision with root package name */
    public String f3720b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f3721c;
    public ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public double f3722e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueContainerMetadata)) {
            return false;
        }
        MediaQueueContainerMetadata mediaQueueContainerMetadata = (MediaQueueContainerMetadata) obj;
        return this.f3719a == mediaQueueContainerMetadata.f3719a && TextUtils.equals(this.f3720b, mediaQueueContainerMetadata.f3720b) && l.h(this.f3721c, mediaQueueContainerMetadata.f3721c) && l.h(this.d, mediaQueueContainerMetadata.d) && this.f3722e == mediaQueueContainerMetadata.f3722e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3719a), this.f3720b, this.f3721c, this.d, Double.valueOf(this.f3722e)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        int i10 = this.f3719a;
        d.X(parcel, 2, 4);
        parcel.writeInt(i10);
        d.R(parcel, 3, this.f3720b);
        ArrayList arrayList = this.f3721c;
        d.U(parcel, 4, arrayList == null ? null : Collections.unmodifiableList(arrayList));
        ArrayList arrayList2 = this.d;
        d.U(parcel, 5, arrayList2 != null ? Collections.unmodifiableList(arrayList2) : null);
        double d = this.f3722e;
        d.X(parcel, 6, 8);
        parcel.writeDouble(d);
        d.W(parcel, iV);
    }
}
