package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import b5.l;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.ArrayList;
import java.util.HashSet;
import o9.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a(7);

    /* renamed from: a, reason: collision with root package name */
    public final int f3603a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3604b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3605c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3606e;
    public final Uri f;

    /* renamed from: g, reason: collision with root package name */
    public String f3607g;

    /* renamed from: h, reason: collision with root package name */
    public final long f3608h;

    /* renamed from: i, reason: collision with root package name */
    public final String f3609i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f3610j;

    /* renamed from: k, reason: collision with root package name */
    public final String f3611k;

    /* renamed from: l, reason: collision with root package name */
    public final String f3612l;

    /* renamed from: m, reason: collision with root package name */
    public final HashSet f3613m = new HashSet();

    public GoogleSignInAccount(int i6, String str, String str2, String str3, String str4, Uri uri, String str5, long j10, String str6, ArrayList arrayList, String str7, String str8) {
        this.f3603a = i6;
        this.f3604b = str;
        this.f3605c = str2;
        this.d = str3;
        this.f3606e = str4;
        this.f = uri;
        this.f3607g = str5;
        this.f3608h = j10;
        this.f3609i = str6;
        this.f3610j = arrayList;
        this.f3611k = str7;
        this.f3612l = str8;
    }

    public static GoogleSignInAccount j(String str) throws JSONException, NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j10 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            hashSet.add(new Scope(1, jSONArray.getString(i6)));
        }
        String strOptString2 = jSONObject.optString(TtmlNode.ATTR_ID);
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        l.c(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j10, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.f3607g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (googleSignInAccount.f3609i.equals(this.f3609i)) {
            HashSet hashSet = new HashSet(googleSignInAccount.f3610j);
            hashSet.addAll(googleSignInAccount.f3613m);
            HashSet hashSet2 = new HashSet(this.f3610j);
            hashSet2.addAll(this.f3613m);
            if (hashSet.equals(hashSet2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f3609i.hashCode() + 527;
        HashSet hashSet = new HashSet(this.f3610j);
        hashSet.addAll(this.f3613m);
        return (iHashCode * 31) + hashSet.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3603a);
        d.R(parcel, 2, this.f3604b);
        d.R(parcel, 3, this.f3605c);
        d.R(parcel, 4, this.d);
        d.R(parcel, 5, this.f3606e);
        d.Q(parcel, 6, this.f, i6);
        d.R(parcel, 7, this.f3607g);
        d.X(parcel, 8, 8);
        parcel.writeLong(this.f3608h);
        d.R(parcel, 9, this.f3609i);
        d.U(parcel, 10, this.f3610j);
        d.R(parcel, 11, this.f3611k);
        d.R(parcel, 12, this.f3612l);
        d.W(parcel, iV);
    }
}
