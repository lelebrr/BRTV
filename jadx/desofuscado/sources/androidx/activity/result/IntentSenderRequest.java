package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import w0.d;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new d(19);

    /* renamed from: a, reason: collision with root package name */
    public final IntentSender f210a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f211b;

    /* renamed from: c, reason: collision with root package name */
    public final int f212c;
    public final int d;

    public IntentSenderRequest(Parcel parcel) {
        this.f210a = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f211b = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f212c = parcel.readInt();
        this.d = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeParcelable(this.f210a, i6);
        parcel.writeParcelable(this.f211b, i6);
        parcel.writeInt(this.f212c);
        parcel.writeInt(this.d);
    }
}
