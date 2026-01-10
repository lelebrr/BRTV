package b5;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y extends com.google.android.gms.internal.cast.a implements j {
    @Override // b5.j
    public final int b() {
        Parcel parcelG = g(l(), 2);
        int i6 = parcelG.readInt();
        parcelG.recycle();
        return i6;
    }

    @Override // b5.j
    public final m5.a f() {
        Parcel parcelG = g(l(), 1);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }
}
