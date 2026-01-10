package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.List;
import o9.d;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaTrack> CREATOR = new a(27);

    /* renamed from: a, reason: collision with root package name */
    public final long f3760a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3761b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3762c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3763e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3764g;

    /* renamed from: h, reason: collision with root package name */
    public final AbstractCollection f3765h;

    /* renamed from: i, reason: collision with root package name */
    public String f3766i;

    /* renamed from: j, reason: collision with root package name */
    public final JSONObject f3767j;

    /* JADX WARN: Multi-variable type inference failed */
    public MediaTrack(long j10, int i6, String str, String str2, String str3, String str4, int i10, List list, JSONObject jSONObject) {
        this.f3760a = j10;
        this.f3761b = i6;
        this.f3762c = str;
        this.d = str2;
        this.f3763e = str3;
        this.f = str4;
        this.f3764g = i10;
        this.f3765h = (AbstractCollection) list;
        this.f3767j = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        JSONObject jSONObject = this.f3767j;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = mediaTrack.f3767j;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || k5.a.a(jSONObject, jSONObject2)) && this.f3760a == mediaTrack.f3760a && this.f3761b == mediaTrack.f3761b && v4.a.e(this.f3762c, mediaTrack.f3762c) && v4.a.e(this.d, mediaTrack.d) && v4.a.e(this.f3763e, mediaTrack.f3763e) && v4.a.e(this.f, mediaTrack.f) && this.f3764g == mediaTrack.f3764g && v4.a.e(this.f3765h, mediaTrack.f3765h);
    }

    public final int hashCode() {
        Long lValueOf = Long.valueOf(this.f3760a);
        Integer numValueOf = Integer.valueOf(this.f3761b);
        Integer numValueOf2 = Integer.valueOf(this.f3764g);
        String strValueOf = String.valueOf(this.f3767j);
        return Arrays.hashCode(new Object[]{lValueOf, numValueOf, this.f3762c, this.d, this.f3763e, this.f, numValueOf2, this.f3765h, strValueOf});
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.AbstractCollection, java.util.List] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3767j;
        this.f3766i = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 8);
        parcel.writeLong(this.f3760a);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3761b);
        d.R(parcel, 4, this.f3762c);
        d.R(parcel, 5, this.d);
        d.R(parcel, 6, this.f3763e);
        d.R(parcel, 7, this.f);
        d.X(parcel, 8, 4);
        parcel.writeInt(this.f3764g);
        d.S(parcel, 9, this.f3765h);
        d.R(parcel, 10, this.f3766i);
        d.W(parcel, iV);
    }
}
