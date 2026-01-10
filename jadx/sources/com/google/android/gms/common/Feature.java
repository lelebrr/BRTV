package com.google.android.gms.common;

import a7.f;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.lzy.okgo.cookie.SerializableCookie;
import java.util.Arrays;
import o9.d;
import p4.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new p(27);

    /* renamed from: a, reason: collision with root package name */
    public final String f3908a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3909b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3910c;

    public Feature(String str) {
        this.f3908a = str;
        this.f3910c = 1L;
        this.f3909b = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            String str = this.f3908a;
            if (((str != null && str.equals(feature.f3908a)) || (str == null && feature.f3908a == null)) && j() == feature.j()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3908a, Long.valueOf(j())});
    }

    public final long j() {
        long j10 = this.f3910c;
        return j10 == -1 ? this.f3909b : j10;
    }

    public final String toString() {
        f fVar = new f(this);
        fVar.c(this.f3908a, SerializableCookie.NAME);
        fVar.c(Long.valueOf(j()), "version");
        return fVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 1, this.f3908a);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3909b);
        long j10 = j();
        d.X(parcel, 3, 8);
        parcel.writeLong(j10);
        d.W(parcel, iV);
    }

    public Feature(String str, int i6, long j10) {
        this.f3908a = str;
        this.f3909b = i6;
        this.f3910c = j10;
    }
}
