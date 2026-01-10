package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import p4.p;
import w0.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ObservableLong extends a implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableLong> CREATOR = new p(24);

    /* renamed from: b, reason: collision with root package name */
    public long f1330b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeLong(this.f1330b);
    }
}
