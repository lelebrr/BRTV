package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.lzy.okgo.model.Progress;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new d(20);

    /* renamed from: a, reason: collision with root package name */
    public final int f3950a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f3951b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3952c;
    public final int d;

    public WebImage(int i6, Uri uri, int i10, int i11) {
        this.f3950a = i6;
        this.f3951b = uri;
        this.f3952c = i10;
        this.d = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (l.h(this.f3951b, webImage.f3951b) && this.f3952c == webImage.f3952c && this.d == webImage.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3951b, Integer.valueOf(this.f3952c), Integer.valueOf(this.d)});
    }

    public final String toString() {
        Locale locale = Locale.US;
        return "Image " + this.f3952c + "x" + this.d + " " + this.f3951b.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = o9.d.V(parcel, 20293);
        o9.d.X(parcel, 1, 4);
        parcel.writeInt(this.f3950a);
        o9.d.Q(parcel, 2, this.f3951b, i6);
        o9.d.X(parcel, 3, 4);
        parcel.writeInt(this.f3952c);
        o9.d.X(parcel, 4, 4);
        parcel.writeInt(this.d);
        o9.d.W(parcel, iV);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public WebImage(JSONObject jSONObject) {
        Uri uri = Uri.EMPTY;
        if (jSONObject.has(Progress.URL)) {
            try {
                uri = Uri.parse(jSONObject.getString(Progress.URL));
            } catch (JSONException unused) {
            }
        }
        int iOptInt = jSONObject.optInt("width", 0);
        int iOptInt2 = jSONObject.optInt("height", 0);
        this(1, uri, iOptInt, iOptInt2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (iOptInt < 0 || iOptInt2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }
}
