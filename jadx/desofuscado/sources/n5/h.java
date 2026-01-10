package n5;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends com.google.android.gms.internal.cast.a {
    public final m5.a A(m5.b bVar, int i6, m5.b bVar2) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString("com.google.android.gms.cast.framework.dynamite");
        parcelL.writeInt(i6);
        r5.a.c(parcelL, bVar2);
        Parcel parcelG = g(parcelL, 3);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }

    public final m5.a z(m5.b bVar, int i6, m5.b bVar2) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString("com.google.android.gms.cast.framework.dynamite");
        parcelL.writeInt(i6);
        r5.a.c(parcelL, bVar2);
        Parcel parcelG = g(parcelL, 2);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }
}
