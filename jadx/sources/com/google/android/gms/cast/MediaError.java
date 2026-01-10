package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import o9.d;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaError extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaError> CREATOR = new a(17);

    /* renamed from: a, reason: collision with root package name */
    public final String f3679a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3680b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f3681c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public String f3682e;
    public final JSONObject f;

    public MediaError(String str, long j10, Integer num, String str2, JSONObject jSONObject) {
        this.f3679a = str;
        this.f3680b = j10;
        this.f3681c = num;
        this.d = str2;
        this.f = jSONObject;
    }

    public static MediaError j(JSONObject jSONObject) {
        return new MediaError(jSONObject.optString(SessionDescription.ATTR_TYPE, "ERROR"), jSONObject.optLong("requestId"), jSONObject.has("detailedErrorCode") ? Integer.valueOf(jSONObject.optInt("detailedErrorCode")) : null, v4.a.b(jSONObject, "reason"), jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f;
        this.f3682e = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3679a);
        d.X(parcel, 3, 8);
        parcel.writeLong(this.f3680b);
        Integer num = this.f3681c;
        if (num != null) {
            d.X(parcel, 4, 4);
            parcel.writeInt(num.intValue());
        }
        d.R(parcel, 5, this.d);
        d.R(parcel, 6, this.f3682e);
        d.W(parcel, iV);
    }
}
