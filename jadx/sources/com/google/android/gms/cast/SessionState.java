package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import o9.d;
import org.json.JSONObject;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SessionState extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SessionState> CREATOR = new a(29);

    /* renamed from: a, reason: collision with root package name */
    public final MediaLoadRequestData f3768a;

    /* renamed from: b, reason: collision with root package name */
    public String f3769b;

    /* renamed from: c, reason: collision with root package name */
    public final JSONObject f3770c;

    public SessionState(MediaLoadRequestData mediaLoadRequestData, JSONObject jSONObject) {
        this.f3768a = mediaLoadRequestData;
        this.f3770c = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionState)) {
            return false;
        }
        SessionState sessionState = (SessionState) obj;
        if (k5.a.a(this.f3770c, sessionState.f3770c)) {
            return l.h(this.f3768a, sessionState.f3768a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3768a, String.valueOf(this.f3770c)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        JSONObject jSONObject = this.f3770c;
        this.f3769b = jSONObject == null ? null : jSONObject.toString();
        int iV = d.V(parcel, 20293);
        d.Q(parcel, 2, this.f3768a, i6);
        d.R(parcel, 3, this.f3769b);
        d.W(parcel, iV);
    }
}
