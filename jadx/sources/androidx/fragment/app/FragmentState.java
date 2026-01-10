package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new b(3);

    /* renamed from: a, reason: collision with root package name */
    public final String f1395a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1396b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1397c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1398e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1399g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f1400h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f1401i;

    /* renamed from: j, reason: collision with root package name */
    public final Bundle f1402j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f1403k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1404l;

    /* renamed from: m, reason: collision with root package name */
    public Bundle f1405m;

    public FragmentState(s sVar) {
        this.f1395a = sVar.getClass().getName();
        this.f1396b = sVar.f;
        this.f1397c = sVar.f1531n;
        this.d = sVar.f1540w;
        this.f1398e = sVar.f1541x;
        this.f = sVar.f1542y;
        this.f1399g = sVar.B;
        this.f1400h = sVar.f1530m;
        this.f1401i = sVar.A;
        this.f1402j = sVar.f1524g;
        this.f1403k = sVar.f1543z;
        this.f1404l = sVar.L.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1395a);
        sb.append(" (");
        sb.append(this.f1396b);
        sb.append(")}:");
        if (this.f1397c) {
            sb.append(" fromLayout");
        }
        int i6 = this.f1398e;
        if (i6 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i6));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f1399g) {
            sb.append(" retainInstance");
        }
        if (this.f1400h) {
            sb.append(" removing");
        }
        if (this.f1401i) {
            sb.append(" detached");
        }
        if (this.f1403k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.f1395a);
        parcel.writeString(this.f1396b);
        parcel.writeInt(this.f1397c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f1398e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1399g ? 1 : 0);
        parcel.writeInt(this.f1400h ? 1 : 0);
        parcel.writeInt(this.f1401i ? 1 : 0);
        parcel.writeBundle(this.f1402j);
        parcel.writeInt(this.f1403k ? 1 : 0);
        parcel.writeBundle(this.f1405m);
        parcel.writeInt(this.f1404l);
    }

    public FragmentState(Parcel parcel) {
        this.f1395a = parcel.readString();
        this.f1396b = parcel.readString();
        this.f1397c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.f1398e = parcel.readInt();
        this.f = parcel.readString();
        this.f1399g = parcel.readInt() != 0;
        this.f1400h = parcel.readInt() != 0;
        this.f1401i = parcel.readInt() != 0;
        this.f1402j = parcel.readBundle();
        this.f1403k = parcel.readInt() != 0;
        this.f1405m = parcel.readBundle();
        this.f1404l = parcel.readInt();
    }
}
