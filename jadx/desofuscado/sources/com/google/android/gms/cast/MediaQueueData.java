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
public class MediaQueueData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueData> CREATOR = new a(24);

    /* renamed from: a, reason: collision with root package name */
    public String f3723a;

    /* renamed from: b, reason: collision with root package name */
    public String f3724b;

    /* renamed from: c, reason: collision with root package name */
    public int f3725c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public MediaQueueContainerMetadata f3726e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f3727g;

    /* renamed from: h, reason: collision with root package name */
    public int f3728h;

    /* renamed from: i, reason: collision with root package name */
    public long f3729i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3730j;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueData)) {
            return false;
        }
        MediaQueueData mediaQueueData = (MediaQueueData) obj;
        return TextUtils.equals(this.f3723a, mediaQueueData.f3723a) && TextUtils.equals(this.f3724b, mediaQueueData.f3724b) && this.f3725c == mediaQueueData.f3725c && TextUtils.equals(this.d, mediaQueueData.d) && l.h(this.f3726e, mediaQueueData.f3726e) && this.f == mediaQueueData.f && l.h(this.f3727g, mediaQueueData.f3727g) && this.f3728h == mediaQueueData.f3728h && this.f3729i == mediaQueueData.f3729i && this.f3730j == mediaQueueData.f3730j;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3723a, this.f3724b, Integer.valueOf(this.f3725c), this.d, this.f3726e, Integer.valueOf(this.f), this.f3727g, Integer.valueOf(this.f3728h), Long.valueOf(this.f3729i), Boolean.valueOf(this.f3730j)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3723a);
        d.R(parcel, 3, this.f3724b);
        int i10 = this.f3725c;
        d.X(parcel, 4, 4);
        parcel.writeInt(i10);
        d.R(parcel, 5, this.d);
        d.Q(parcel, 6, this.f3726e, i6);
        int i11 = this.f;
        d.X(parcel, 7, 4);
        parcel.writeInt(i11);
        ArrayList arrayList = this.f3727g;
        d.U(parcel, 8, arrayList == null ? null : Collections.unmodifiableList(arrayList));
        int i12 = this.f3728h;
        d.X(parcel, 9, 4);
        parcel.writeInt(i12);
        long j10 = this.f3729i;
        d.X(parcel, 10, 8);
        parcel.writeLong(j10);
        boolean z7 = this.f3730j;
        d.X(parcel, 11, 4);
        parcel.writeInt(z7 ? 1 : 0);
        d.W(parcel, iV);
    }
}
