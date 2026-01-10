package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import o9.d;
import p4.p;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class VideoInfo extends AbstractSafeParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final int f3784a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3785b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3786c;
    public static final b d = new b("VideoInfo", null);
    public static final Parcelable.Creator<VideoInfo> CREATOR = new p(2);

    public VideoInfo(int i6, int i10, int i11) {
        this.f3784a = i6;
        this.f3785b = i10;
        this.f3786c = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        return this.f3785b == videoInfo.f3785b && this.f3784a == videoInfo.f3784a && this.f3786c == videoInfo.f3786c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3785b), Integer.valueOf(this.f3784a), Integer.valueOf(this.f3786c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3784a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3785b);
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3786c);
        d.W(parcel, iV);
    }
}
