package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import p4.p;
import w0.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ObservableChar extends a implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableChar> CREATOR = new p(20);

    /* renamed from: b, reason: collision with root package name */
    public char f1326b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f1326b);
    }
}
