package a2;

import android.os.Parcel;
import android.util.SparseIntArray;
import p.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends b {
    public final SparseIntArray d;

    /* renamed from: e, reason: collision with root package name */
    public final Parcel f84e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f85g;

    /* renamed from: h, reason: collision with root package name */
    public final String f86h;

    /* renamed from: i, reason: collision with root package name */
    public int f87i;

    /* renamed from: j, reason: collision with root package name */
    public int f88j;

    /* renamed from: k, reason: collision with root package name */
    public int f89k;

    public c(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new e(0), new e(0), new e(0));
    }

    @Override // a2.b
    public final c a() {
        Parcel parcel = this.f84e;
        int iDataPosition = parcel.dataPosition();
        int i6 = this.f88j;
        if (i6 == this.f) {
            i6 = this.f85g;
        }
        return new c(parcel, iDataPosition, i6, a.e.t(new StringBuilder(), this.f86h, "  "), this.f81a, this.f82b, this.f83c);
    }

    @Override // a2.b
    public final boolean e(int i6) {
        while (this.f88j < this.f85g) {
            int i10 = this.f89k;
            if (i10 == i6) {
                return true;
            }
            if (String.valueOf(i10).compareTo(String.valueOf(i6)) > 0) {
                return false;
            }
            int i11 = this.f88j;
            Parcel parcel = this.f84e;
            parcel.setDataPosition(i11);
            int i12 = parcel.readInt();
            this.f89k = parcel.readInt();
            this.f88j += i12;
        }
        return this.f89k == i6;
    }

    @Override // a2.b
    public final void i(int i6) {
        int i10 = this.f87i;
        SparseIntArray sparseIntArray = this.d;
        Parcel parcel = this.f84e;
        if (i10 >= 0) {
            int i11 = sparseIntArray.get(i10);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i11);
            parcel.writeInt(iDataPosition - i11);
            parcel.setDataPosition(iDataPosition);
        }
        this.f87i = i6;
        sparseIntArray.put(i6, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i6);
    }

    public c(Parcel parcel, int i6, int i10, String str, e eVar, e eVar2, e eVar3) {
        super(eVar, eVar2, eVar3);
        this.d = new SparseIntArray();
        this.f87i = -1;
        this.f89k = -1;
        this.f84e = parcel;
        this.f = i6;
        this.f85g = i10;
        this.f88j = i6;
        this.f86h = str;
    }
}
