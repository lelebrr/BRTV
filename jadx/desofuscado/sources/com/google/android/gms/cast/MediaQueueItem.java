package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaQueueItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new a(25);

    /* renamed from: a, reason: collision with root package name */
    public MediaInfo f3731a;

    /* renamed from: b, reason: collision with root package name */
    public int f3732b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3733c;
    public double d;

    /* renamed from: e, reason: collision with root package name */
    public double f3734e;
    public double f;

    /* renamed from: g, reason: collision with root package name */
    public long[] f3735g;

    /* renamed from: h, reason: collision with root package name */
    public String f3736h;

    /* renamed from: i, reason: collision with root package name */
    public JSONObject f3737i;

    public MediaQueueItem(MediaInfo mediaInfo, int i6, boolean z7, double d, double d10, double d11, long[] jArr, String str) {
        this.f3731a = mediaInfo;
        this.f3732b = i6;
        this.f3733c = z7;
        this.d = d;
        this.f3734e = d10;
        this.f = d11;
        this.f3735g = jArr;
        this.f3736h = str;
        if (str == null) {
            this.f3737i = null;
            return;
        }
        try {
            this.f3737i = new JSONObject(this.f3736h);
        } catch (JSONException unused) {
            this.f3737i = null;
            this.f3736h = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        JSONObject jSONObject = this.f3737i;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = mediaQueueItem.f3737i;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || k5.a.a(jSONObject, jSONObject2)) && v4.a.e(this.f3731a, mediaQueueItem.f3731a) && this.f3732b == mediaQueueItem.f3732b && this.f3733c == mediaQueueItem.f3733c && ((Double.isNaN(this.d) && Double.isNaN(mediaQueueItem.d)) || this.d == mediaQueueItem.d) && this.f3734e == mediaQueueItem.f3734e && this.f == mediaQueueItem.f && Arrays.equals(this.f3735g, mediaQueueItem.f3735g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3731a, Integer.valueOf(this.f3732b), Boolean.valueOf(this.f3733c), Double.valueOf(this.d), Double.valueOf(this.f3734e), Double.valueOf(this.f), Integer.valueOf(Arrays.hashCode(this.f3735g)), String.valueOf(this.f3737i)});
    }

    public final boolean j(JSONObject jSONObject) {
        boolean z7;
        long[] jArr;
        boolean z10;
        int i6;
        boolean z11 = false;
        if (jSONObject.has("media")) {
            this.f3731a = new MediaInfo(jSONObject.getJSONObject("media"));
            z7 = true;
        } else {
            z7 = false;
        }
        if (jSONObject.has("itemId") && this.f3732b != (i6 = jSONObject.getInt("itemId"))) {
            this.f3732b = i6;
            z7 = true;
        }
        if (jSONObject.has("autoplay") && this.f3733c != (z10 = jSONObject.getBoolean("autoplay"))) {
            this.f3733c = z10;
            z7 = true;
        }
        double dOptDouble = jSONObject.optDouble("startTime");
        if (Double.isNaN(dOptDouble) != Double.isNaN(this.d) || (!Double.isNaN(dOptDouble) && Math.abs(dOptDouble - this.d) > 1.0E-7d)) {
            this.d = dOptDouble;
            z7 = true;
        }
        if (jSONObject.has("playbackDuration")) {
            double d = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d - this.f3734e) > 1.0E-7d) {
                this.f3734e = d;
                z7 = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d10 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d10 - this.f) > 1.0E-7d) {
                this.f = d10;
                z7 = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i10 = 0; i10 < length; i10++) {
                jArr[i10] = jSONArray.getLong(i10);
            }
            long[] jArr2 = this.f3735g;
            if (jArr2 == null || jArr2.length != length) {
                z11 = true;
                break;
            }
            for (int i11 = 0; i11 < length; i11++) {
                if (this.f3735g[i11] != jArr[i11]) {
                    z11 = true;
                    break;
                }
            }
        } else {
            jArr = null;
        }
        if (z11) {
            this.f3735g = jArr;
            z7 = true;
        }
        if (!jSONObject.has("customData")) {
            return z7;
        }
        this.f3737i = jSONObject.getJSONObject("customData");
        return true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3737i;
        this.f3736h = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 2, this.f3731a, i6);
        int i10 = this.f3732b;
        d.X(parcel, 3, 4);
        parcel.writeInt(i10);
        boolean z7 = this.f3733c;
        d.X(parcel, 4, 4);
        parcel.writeInt(z7 ? 1 : 0);
        double d = this.d;
        d.X(parcel, 5, 8);
        parcel.writeDouble(d);
        double d10 = this.f3734e;
        d.X(parcel, 6, 8);
        parcel.writeDouble(d10);
        double d11 = this.f;
        d.X(parcel, 7, 8);
        parcel.writeDouble(d11);
        d.P(parcel, 8, this.f3735g);
        d.R(parcel, 9, this.f3736h);
        d.W(parcel, iV);
    }

    public MediaQueueItem(JSONObject jSONObject) {
        this(null, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        j(jSONObject);
    }
}
