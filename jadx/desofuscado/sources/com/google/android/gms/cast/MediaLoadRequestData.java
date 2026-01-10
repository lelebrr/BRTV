package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;
import org.json.JSONObject;
import v4.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaLoadRequestData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaLoadRequestData> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public final MediaInfo f3704a;

    /* renamed from: b, reason: collision with root package name */
    public final MediaQueueData f3705b;

    /* renamed from: c, reason: collision with root package name */
    public final Boolean f3706c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final double f3707e;
    public final long[] f;

    /* renamed from: g, reason: collision with root package name */
    public String f3708g;

    /* renamed from: h, reason: collision with root package name */
    public final JSONObject f3709h;

    /* renamed from: i, reason: collision with root package name */
    public final String f3710i;

    /* renamed from: j, reason: collision with root package name */
    public final String f3711j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3712k;

    /* renamed from: l, reason: collision with root package name */
    public final String f3713l;

    /* renamed from: m, reason: collision with root package name */
    public final long f3714m;

    static {
        new b("MediaLoadRequestData", null);
        CREATOR = new a(21);
    }

    public MediaLoadRequestData(MediaInfo mediaInfo, MediaQueueData mediaQueueData, Boolean bool, long j10, double d, long[] jArr, JSONObject jSONObject, String str, String str2, String str3, String str4, long j11) {
        this.f3704a = mediaInfo;
        this.f3705b = mediaQueueData;
        this.f3706c = bool;
        this.d = j10;
        this.f3707e = d;
        this.f = jArr;
        this.f3709h = jSONObject;
        this.f3710i = str;
        this.f3711j = str2;
        this.f3712k = str3;
        this.f3713l = str4;
        this.f3714m = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLoadRequestData)) {
            return false;
        }
        MediaLoadRequestData mediaLoadRequestData = (MediaLoadRequestData) obj;
        return k5.a.a(this.f3709h, mediaLoadRequestData.f3709h) && l.h(this.f3704a, mediaLoadRequestData.f3704a) && l.h(this.f3705b, mediaLoadRequestData.f3705b) && l.h(this.f3706c, mediaLoadRequestData.f3706c) && this.d == mediaLoadRequestData.d && this.f3707e == mediaLoadRequestData.f3707e && Arrays.equals(this.f, mediaLoadRequestData.f) && l.h(this.f3710i, mediaLoadRequestData.f3710i) && l.h(this.f3711j, mediaLoadRequestData.f3711j) && l.h(this.f3712k, mediaLoadRequestData.f3712k) && l.h(this.f3713l, mediaLoadRequestData.f3713l) && this.f3714m == mediaLoadRequestData.f3714m;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3704a, this.f3705b, this.f3706c, Long.valueOf(this.d), Double.valueOf(this.f3707e), this.f, String.valueOf(this.f3709h), this.f3710i, this.f3711j, this.f3712k, this.f3713l, Long.valueOf(this.f3714m)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3709h;
        this.f3708g = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 2, this.f3704a, i6);
        d.Q(parcel, 3, this.f3705b, i6);
        d.L(parcel, 4, this.f3706c);
        d.X(parcel, 5, 8);
        parcel.writeLong(this.d);
        d.X(parcel, 6, 8);
        parcel.writeDouble(this.f3707e);
        d.P(parcel, 7, this.f);
        d.R(parcel, 8, this.f3708g);
        d.R(parcel, 9, this.f3710i);
        d.R(parcel, 10, this.f3711j);
        d.R(parcel, 11, this.f3712k);
        d.R(parcel, 12, this.f3713l);
        d.X(parcel, 13, 8);
        parcel.writeLong(this.f3714m);
        d.W(parcel, iV);
    }
}
