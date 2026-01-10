package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new b(2);

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1389a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1390b;

    /* renamed from: c, reason: collision with root package name */
    public BackStackState[] f1391c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public String f1392e;
    public ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f1393g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f1394h;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeTypedList(this.f1389a);
        parcel.writeStringList(this.f1390b);
        parcel.writeTypedArray(this.f1391c, i6);
        parcel.writeInt(this.d);
        parcel.writeString(this.f1392e);
        parcel.writeStringList(this.f);
        parcel.writeTypedList(this.f1393g);
        parcel.writeTypedList(this.f1394h);
    }
}
