package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.regex.Pattern;
import o9.d;
import org.json.JSONException;
import org.json.JSONObject;
import v4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaInfo extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaInfo> CREATOR;

    /* renamed from: s, reason: collision with root package name */
    public static final long f3683s;

    /* renamed from: a, reason: collision with root package name */
    public final String f3684a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3685b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3686c;
    public final MediaMetadata d;

    /* renamed from: e, reason: collision with root package name */
    public final long f3687e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final TextTrackStyle f3688g;

    /* renamed from: h, reason: collision with root package name */
    public String f3689h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f3690i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f3691j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3692k;

    /* renamed from: l, reason: collision with root package name */
    public final VastAdsRequest f3693l;

    /* renamed from: m, reason: collision with root package name */
    public final long f3694m;

    /* renamed from: n, reason: collision with root package name */
    public final String f3695n;

    /* renamed from: o, reason: collision with root package name */
    public final String f3696o;

    /* renamed from: p, reason: collision with root package name */
    public final String f3697p;

    /* renamed from: q, reason: collision with root package name */
    public final String f3698q;

    /* renamed from: r, reason: collision with root package name */
    public final JSONObject f3699r;

    static {
        Pattern pattern = a.f10669a;
        f3683s = -1000L;
        CREATOR = new h5.a(18);
    }

    public MediaInfo(String str, int i6, String str2, MediaMetadata mediaMetadata, long j10, ArrayList arrayList, TextTrackStyle textTrackStyle, String str3, ArrayList arrayList2, ArrayList arrayList3, String str4, VastAdsRequest vastAdsRequest, long j11, String str5, String str6, String str7, String str8) {
        this.f3684a = str;
        this.f3685b = i6;
        this.f3686c = str2;
        this.d = mediaMetadata;
        this.f3687e = j10;
        this.f = arrayList;
        this.f3688g = textTrackStyle;
        this.f3689h = str3;
        if (str3 != null) {
            try {
                this.f3699r = new JSONObject(this.f3689h);
            } catch (JSONException unused) {
                this.f3699r = null;
                this.f3689h = null;
            }
        } else {
            this.f3699r = null;
        }
        this.f3690i = arrayList2;
        this.f3691j = arrayList3;
        this.f3692k = str4;
        this.f3693l = vastAdsRequest;
        this.f3694m = j11;
        this.f3695n = str5;
        this.f3696o = str6;
        this.f3697p = str7;
        this.f3698q = str8;
        if (this.f3684a == null && str6 == null && str4 == null) {
            throw new IllegalArgumentException("Either contentID or contentUrl or entity should be set");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        JSONObject jSONObject = this.f3699r;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = mediaInfo.f3699r;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || k5.a.a(jSONObject, jSONObject2)) && a.e(this.f3684a, mediaInfo.f3684a) && this.f3685b == mediaInfo.f3685b && a.e(this.f3686c, mediaInfo.f3686c) && a.e(this.d, mediaInfo.d) && this.f3687e == mediaInfo.f3687e && a.e(this.f, mediaInfo.f) && a.e(this.f3688g, mediaInfo.f3688g) && a.e(this.f3690i, mediaInfo.f3690i) && a.e(this.f3691j, mediaInfo.f3691j) && a.e(this.f3692k, mediaInfo.f3692k) && a.e(this.f3693l, mediaInfo.f3693l) && this.f3694m == mediaInfo.f3694m && a.e(this.f3695n, mediaInfo.f3695n) && a.e(this.f3696o, mediaInfo.f3696o) && a.e(this.f3697p, mediaInfo.f3697p) && a.e(this.f3698q, mediaInfo.f3698q);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3684a, Integer.valueOf(this.f3685b), this.f3686c, this.d, Long.valueOf(this.f3687e), String.valueOf(this.f3699r), this.f, this.f3688g, this.f3690i, this.f3691j, this.f3692k, this.f3693l, Long.valueOf(this.f3694m), this.f3695n, this.f3697p, this.f3698q});
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac A[LOOP:0: B:5:0x0023->B:27:0x00ac, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01a2 A[LOOP:2: B:33:0x00d4->B:66:0x01a2, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j(org.json.JSONObject r28) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaInfo.j(org.json.JSONObject):void");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3699r;
        this.f3689h = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        String str = this.f3684a;
        if (str == null) {
            str = "";
        }
        d.R(parcel, 2, str);
        d.X(parcel, 3, 4);
        parcel.writeInt(this.f3685b);
        d.R(parcel, 4, this.f3686c);
        d.Q(parcel, 5, this.d, i6);
        d.X(parcel, 6, 8);
        parcel.writeLong(this.f3687e);
        d.U(parcel, 7, this.f);
        d.Q(parcel, 8, this.f3688g, i6);
        d.R(parcel, 9, this.f3689h);
        ArrayList arrayList = this.f3690i;
        d.U(parcel, 10, arrayList == null ? null : Collections.unmodifiableList(arrayList));
        ArrayList arrayList2 = this.f3691j;
        d.U(parcel, 11, arrayList2 != null ? Collections.unmodifiableList(arrayList2) : null);
        d.R(parcel, 12, this.f3692k);
        d.Q(parcel, 13, this.f3693l, i6);
        d.X(parcel, 14, 8);
        parcel.writeLong(this.f3694m);
        d.R(parcel, 15, this.f3695n);
        d.R(parcel, 16, this.f3696o);
        d.R(parcel, 17, this.f3697p);
        d.R(parcel, 18, this.f3698q);
        d.W(parcel, iV);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0317  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public MediaInfo(org.json.JSONObject r45) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 984
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaInfo.<init>(org.json.JSONObject):void");
    }
}
