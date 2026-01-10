package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import java.util.Locale;
import o9.d;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AdBreakClipInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdBreakClipInfo> CREATOR = new a(10);

    /* renamed from: a, reason: collision with root package name */
    public final String f3625a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3626b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3627c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3628e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3629g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3630h;

    /* renamed from: i, reason: collision with root package name */
    public final String f3631i;

    /* renamed from: j, reason: collision with root package name */
    public final long f3632j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3633k;

    /* renamed from: l, reason: collision with root package name */
    public final VastAdsRequest f3634l;

    public AdBreakClipInfo(String str, String str2, long j10, String str3, String str4, String str5, String str6, String str7, String str8, long j11, String str9, VastAdsRequest vastAdsRequest) {
        this.f3625a = str;
        this.f3626b = str2;
        this.f3627c = j10;
        this.d = str3;
        this.f3628e = str4;
        this.f = str5;
        this.f3629g = str6;
        this.f3630h = str7;
        this.f3631i = str8;
        this.f3632j = j11;
        this.f3633k = str9;
        this.f3634l = vastAdsRequest;
        if (TextUtils.isEmpty(str6)) {
            new JSONObject();
            return;
        }
        try {
            new JSONObject(str6);
        } catch (JSONException e5) {
            Locale locale = Locale.ROOT;
            Log.w("AdBreakClipInfo", "Error creating AdBreakClipInfo: " + e5.getMessage());
            this.f3629g = null;
            new JSONObject();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return v4.a.e(this.f3625a, adBreakClipInfo.f3625a) && v4.a.e(this.f3626b, adBreakClipInfo.f3626b) && this.f3627c == adBreakClipInfo.f3627c && v4.a.e(this.d, adBreakClipInfo.d) && v4.a.e(this.f3628e, adBreakClipInfo.f3628e) && v4.a.e(this.f, adBreakClipInfo.f) && v4.a.e(this.f3629g, adBreakClipInfo.f3629g) && v4.a.e(this.f3630h, adBreakClipInfo.f3630h) && v4.a.e(this.f3631i, adBreakClipInfo.f3631i) && this.f3632j == adBreakClipInfo.f3632j && v4.a.e(this.f3633k, adBreakClipInfo.f3633k) && v4.a.e(this.f3634l, adBreakClipInfo.f3634l);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3625a, this.f3626b, Long.valueOf(this.f3627c), this.d, this.f3628e, this.f, this.f3629g, this.f3630h, this.f3631i, Long.valueOf(this.f3632j), this.f3633k, this.f3634l});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3625a);
        d.R(parcel, 3, this.f3626b);
        d.X(parcel, 4, 8);
        parcel.writeLong(this.f3627c);
        d.R(parcel, 5, this.d);
        d.R(parcel, 6, this.f3628e);
        d.R(parcel, 7, this.f);
        d.R(parcel, 8, this.f3629g);
        d.R(parcel, 9, this.f3630h);
        d.R(parcel, 10, this.f3631i);
        d.X(parcel, 11, 8);
        parcel.writeLong(this.f3632j);
        d.R(parcel, 12, this.f3633k);
        d.Q(parcel, 13, this.f3634l, i6);
        d.W(parcel, iV);
    }
}
