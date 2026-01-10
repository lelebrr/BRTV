package androidx.customview.view;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public final Parcelable f1319a;

    /* renamed from: b, reason: collision with root package name */
    public static final AbsSavedState f1318b = new AnonymousClass1();
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new a(0);

    /* compiled from: MyApplication */
    /* renamed from: androidx.customview.view.AbsSavedState$1, reason: invalid class name */
    public class AnonymousClass1 extends AbsSavedState {
    }

    public AbsSavedState() {
        this.f1319a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeParcelable(this.f1319a, i6);
    }

    public AbsSavedState(Parcelable parcelable) {
        if (parcelable != null) {
            this.f1319a = parcelable == f1318b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public AbsSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f1319a = parcelable == null ? f1318b : parcelable;
    }
}
