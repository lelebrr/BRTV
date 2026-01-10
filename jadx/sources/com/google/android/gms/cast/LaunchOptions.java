package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import h5.a;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import o9.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class LaunchOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new a(16);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3676a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3677b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3678c;
    public CredentialsData d;

    public LaunchOptions(boolean z7, String str, boolean z10, CredentialsData credentialsData) {
        this.f3676a = z7;
        this.f3677b = str;
        this.f3678c = z10;
        this.d = credentialsData;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.f3676a == launchOptions.f3676a && v4.a.e(this.f3677b, launchOptions.f3677b) && this.f3678c == launchOptions.f3678c && v4.a.e(this.d, launchOptions.d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f3676a), this.f3677b, Boolean.valueOf(this.f3678c), this.d});
    }

    public final String toString() {
        return "LaunchOptions(relaunchIfRunning=" + this.f3676a + ", language=" + this.f3677b + ", androidReceiverCompatible: " + this.f3678c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 2, 4);
        parcel.writeInt(this.f3676a ? 1 : 0);
        d.R(parcel, 3, this.f3677b);
        boolean z7 = this.f3678c;
        d.X(parcel, 4, 4);
        parcel.writeInt(z7 ? 1 : 0);
        d.Q(parcel, 5, this.d, i6);
        d.W(parcel, iV);
    }

    public LaunchOptions() {
        Locale locale = Locale.getDefault();
        Pattern pattern = v4.a.f10669a;
        StringBuilder sb = new StringBuilder(20);
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (!TextUtils.isEmpty(country)) {
            sb.append('-');
            sb.append(country);
        }
        String variant = locale.getVariant();
        if (!TextUtils.isEmpty(variant)) {
            sb.append('-');
            sb.append(variant);
        }
        this(false, sb.toString(), false, null);
    }
}
