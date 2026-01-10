package com.google.android.gms.cast;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import k5.a;
import o9.d;
import org.json.JSONException;
import org.json.JSONObject;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class TextTrackStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new p(0);

    /* renamed from: a, reason: collision with root package name */
    public float f3771a;

    /* renamed from: b, reason: collision with root package name */
    public int f3772b;

    /* renamed from: c, reason: collision with root package name */
    public int f3773c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f3774e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f3775g;

    /* renamed from: h, reason: collision with root package name */
    public int f3776h;

    /* renamed from: i, reason: collision with root package name */
    public String f3777i;

    /* renamed from: j, reason: collision with root package name */
    public int f3778j;

    /* renamed from: k, reason: collision with root package name */
    public int f3779k;

    /* renamed from: l, reason: collision with root package name */
    public String f3780l;

    /* renamed from: m, reason: collision with root package name */
    public JSONObject f3781m;

    public TextTrackStyle(float f, int i6, int i10, int i11, int i12, int i13, int i14, int i15, String str, int i16, int i17, String str2) {
        this.f3771a = f;
        this.f3772b = i6;
        this.f3773c = i10;
        this.d = i11;
        this.f3774e = i12;
        this.f = i13;
        this.f3775g = i14;
        this.f3776h = i15;
        this.f3777i = str;
        this.f3778j = i16;
        this.f3779k = i17;
        this.f3780l = str2;
        if (str2 == null) {
            this.f3781m = null;
            return;
        }
        try {
            this.f3781m = new JSONObject(this.f3780l);
        } catch (JSONException unused) {
            this.f3781m = null;
            this.f3780l = null;
        }
    }

    public static final int j(String str) throws NumberFormatException {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        JSONObject jSONObject = this.f3781m;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = textTrackStyle.f3781m;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || a.a(jSONObject, jSONObject2)) && this.f3771a == textTrackStyle.f3771a && this.f3772b == textTrackStyle.f3772b && this.f3773c == textTrackStyle.f3773c && this.d == textTrackStyle.d && this.f3774e == textTrackStyle.f3774e && this.f == textTrackStyle.f && this.f3775g == textTrackStyle.f3775g && this.f3776h == textTrackStyle.f3776h && v4.a.e(this.f3777i, textTrackStyle.f3777i) && this.f3778j == textTrackStyle.f3778j && this.f3779k == textTrackStyle.f3779k;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f3771a), Integer.valueOf(this.f3772b), Integer.valueOf(this.f3773c), Integer.valueOf(this.d), Integer.valueOf(this.f3774e), Integer.valueOf(this.f), Integer.valueOf(this.f3775g), Integer.valueOf(this.f3776h), this.f3777i, Integer.valueOf(this.f3778j), Integer.valueOf(this.f3779k), String.valueOf(this.f3781m)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3781m;
        this.f3780l = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        float f = this.f3771a;
        d.X(parcel, 2, 4);
        parcel.writeFloat(f);
        int i10 = this.f3772b;
        d.X(parcel, 3, 4);
        parcel.writeInt(i10);
        int i11 = this.f3773c;
        d.X(parcel, 4, 4);
        parcel.writeInt(i11);
        int i12 = this.d;
        d.X(parcel, 5, 4);
        parcel.writeInt(i12);
        int i13 = this.f3774e;
        d.X(parcel, 6, 4);
        parcel.writeInt(i13);
        int i14 = this.f;
        d.X(parcel, 7, 4);
        parcel.writeInt(i14);
        int i15 = this.f3775g;
        d.X(parcel, 8, 4);
        parcel.writeInt(i15);
        int i16 = this.f3776h;
        d.X(parcel, 9, 4);
        parcel.writeInt(i16);
        d.R(parcel, 10, this.f3777i);
        int i17 = this.f3778j;
        d.X(parcel, 11, 4);
        parcel.writeInt(i17);
        int i18 = this.f3779k;
        d.X(parcel, 12, 4);
        parcel.writeInt(i18);
        d.R(parcel, 13, this.f3780l);
        d.W(parcel, iV);
    }
}
