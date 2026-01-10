package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import b5.l;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import o9.d;
import y4.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new n(2);

    /* renamed from: a, reason: collision with root package name */
    public final int f3921a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3922b;

    public Scope(int i6, String str) {
        l.d(str, "scopeUri must not be null or empty");
        this.f3921a = i6;
        this.f3922b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f3922b.equals(((Scope) obj).f3922b);
    }

    public final int hashCode() {
        return this.f3922b.hashCode();
    }

    public final String toString() {
        return this.f3922b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f3921a);
        d.R(parcel, 2, this.f3922b);
        d.W(parcel, iV);
    }
}
