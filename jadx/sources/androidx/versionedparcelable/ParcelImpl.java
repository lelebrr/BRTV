package androidx.versionedparcelable;

import a2.c;
import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import w0.d;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new d(1);

    /* renamed from: a, reason: collision with root package name */
    public final a2.d f3037a;

    public ParcelImpl(a2.d dVar) {
        this.f3037a = dVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        new c(parcel).l(this.f3037a);
    }

    public ParcelImpl(Parcel parcel) {
        this.f3037a = new c(parcel).h();
    }
}
