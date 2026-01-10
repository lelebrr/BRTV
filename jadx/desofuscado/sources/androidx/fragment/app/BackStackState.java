package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* compiled from: MyApplication */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new b(0);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f1366a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1367b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f1368c;
    public final int[] d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1369e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1370g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1371h;

    /* renamed from: i, reason: collision with root package name */
    public final CharSequence f1372i;

    /* renamed from: j, reason: collision with root package name */
    public final int f1373j;

    /* renamed from: k, reason: collision with root package name */
    public final CharSequence f1374k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f1375l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f1376m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f1377n;

    public BackStackState(a aVar) {
        int size = aVar.f1410a.size();
        this.f1366a = new int[size * 5];
        if (!aVar.f1414g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f1367b = new ArrayList(size);
        this.f1368c = new int[size];
        this.d = new int[size];
        int i6 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            r0 r0Var = (r0) aVar.f1410a.get(i10);
            int i11 = i6 + 1;
            this.f1366a[i6] = r0Var.f1514a;
            ArrayList arrayList = this.f1367b;
            s sVar = r0Var.f1515b;
            arrayList.add(sVar != null ? sVar.f : null);
            int[] iArr = this.f1366a;
            iArr[i11] = r0Var.f1516c;
            iArr[i6 + 2] = r0Var.d;
            int i12 = i6 + 4;
            iArr[i6 + 3] = r0Var.f1517e;
            i6 += 5;
            iArr[i12] = r0Var.f;
            this.f1368c[i10] = r0Var.f1518g.ordinal();
            this.d[i10] = r0Var.f1519h.ordinal();
        }
        this.f1369e = aVar.f;
        this.f = aVar.f1416i;
        this.f1370g = aVar.f1426s;
        this.f1371h = aVar.f1417j;
        this.f1372i = aVar.f1418k;
        this.f1373j = aVar.f1419l;
        this.f1374k = aVar.f1420m;
        this.f1375l = aVar.f1421n;
        this.f1376m = aVar.f1422o;
        this.f1377n = aVar.f1423p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeIntArray(this.f1366a);
        parcel.writeStringList(this.f1367b);
        parcel.writeIntArray(this.f1368c);
        parcel.writeIntArray(this.d);
        parcel.writeInt(this.f1369e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1370g);
        parcel.writeInt(this.f1371h);
        TextUtils.writeToParcel(this.f1372i, parcel, 0);
        parcel.writeInt(this.f1373j);
        TextUtils.writeToParcel(this.f1374k, parcel, 0);
        parcel.writeStringList(this.f1375l);
        parcel.writeStringList(this.f1376m);
        parcel.writeInt(this.f1377n ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f1366a = parcel.createIntArray();
        this.f1367b = parcel.createStringArrayList();
        this.f1368c = parcel.createIntArray();
        this.d = parcel.createIntArray();
        this.f1369e = parcel.readInt();
        this.f = parcel.readString();
        this.f1370g = parcel.readInt();
        this.f1371h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f1372i = (CharSequence) creator.createFromParcel(parcel);
        this.f1373j = parcel.readInt();
        this.f1374k = (CharSequence) creator.createFromParcel(parcel);
        this.f1375l = parcel.createStringArrayList();
        this.f1376m = parcel.createStringArrayList();
        this.f1377n = parcel.readInt() != 0;
    }
}
