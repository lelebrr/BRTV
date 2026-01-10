package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaLiveSeekableRange extends AbstractSafeParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final long f3701a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3702b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3703c;
    public final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static final b f3700e = new b("MediaLiveSeekableRange", null);
    public static final Parcelable.Creator<MediaLiveSeekableRange> CREATOR = new a(19);

    public MediaLiveSeekableRange(long j10, long j11, boolean z7, boolean z10) {
        this.f3701a = Math.max(j10, 0L);
        this.f3702b = Math.max(j11, 0L);
        this.f3703c = z7;
        this.d = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLiveSeekableRange)) {
            return false;
        }
        MediaLiveSeekableRange mediaLiveSeekableRange = (MediaLiveSeekableRange) obj;
        return this.f3701a == mediaLiveSeekableRange.f3701a && this.f3702b == mediaLiveSeekableRange.f3702b && this.f3703c == mediaLiveSeekableRange.f3703c && this.d == mediaLiveSeekableRange.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f3701a), Long.valueOf(this.f3702b), Boolean.valueOf(this.f3703c), Boolean.valueOf(this.d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 8);
        parcel.writeLong(this.f3701a);
        d.X(parcel, 3, 8);
        parcel.writeLong(this.f3702b);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3703c ? 1 : 0);
        d.X(parcel, 5, 4);
        parcel.writeInt(this.d ? 1 : 0);
        d.W(parcel, iV);
    }
}
