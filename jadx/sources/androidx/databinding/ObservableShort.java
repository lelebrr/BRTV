package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import p4.p;
import w0.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ObservableShort extends a implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableShort> CREATOR = new p(25);

    /* renamed from: b, reason: collision with root package name */
    public short f1332b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f1332b);
    }
}
