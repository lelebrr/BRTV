package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
class AppCompatDelegateImpl$PanelFeatureState$SavedState implements Parcelable {
    public static final Parcelable.Creator<AppCompatDelegateImpl$PanelFeatureState$SavedState> CREATOR = new e0();

    /* renamed from: a, reason: collision with root package name */
    public int f217a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f218b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f219c;

    public static AppCompatDelegateImpl$PanelFeatureState$SavedState h(Parcel parcel, ClassLoader classLoader) {
        AppCompatDelegateImpl$PanelFeatureState$SavedState appCompatDelegateImpl$PanelFeatureState$SavedState = new AppCompatDelegateImpl$PanelFeatureState$SavedState();
        appCompatDelegateImpl$PanelFeatureState$SavedState.f217a = parcel.readInt();
        boolean z7 = parcel.readInt() == 1;
        appCompatDelegateImpl$PanelFeatureState$SavedState.f218b = z7;
        if (z7) {
            appCompatDelegateImpl$PanelFeatureState$SavedState.f219c = parcel.readBundle(classLoader);
        }
        return appCompatDelegateImpl$PanelFeatureState$SavedState;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f217a);
        parcel.writeInt(this.f218b ? 1 : 0);
        if (this.f218b) {
            parcel.writeBundle(this.f219c);
        }
    }
}
