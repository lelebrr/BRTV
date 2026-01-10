package androidx.databinding;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import w0.a;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ObservableParcelable<T extends Parcelable> extends a implements Parcelable, Serializable {
    public static final Parcelable.Creator<ObservableParcelable> CREATOR = new d(0);

    /* renamed from: b, reason: collision with root package name */
    public Parcelable f1331b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeParcelable(this.f1331b, 0);
    }
}
