package n5;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends com.google.android.gms.internal.cast.a {
    public final m5.a A(m5.b bVar, int i6, m5.b bVar2) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString("com.google.android.gms.cast.framework.dynamite");
        parcelL.writeInt(i6);
        r5.a.c(parcelL, bVar2);
        Parcel parcelG = g(parcelL, 8);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }

    public final m5.a B(m5.b bVar, int i6) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString("com.google.android.gms.cast.framework.dynamite");
        parcelL.writeInt(i6);
        Parcel parcelG = g(parcelL, 4);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }

    public final m5.a C(m5.b bVar, String str, boolean z7, long j10) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString(str);
        parcelL.writeInt(z7 ? 1 : 0);
        parcelL.writeLong(j10);
        Parcel parcelG = g(parcelL, 7);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }

    public final m5.a z(m5.b bVar, int i6) {
        Parcel parcelL = l();
        r5.a.c(parcelL, bVar);
        parcelL.writeString("com.google.android.gms.cast.framework.dynamite");
        parcelL.writeInt(i6);
        Parcel parcelG = g(parcelL, 2);
        m5.a aVarX = m5.b.x(parcelG.readStrongBinder());
        parcelG.recycle();
        return aVarX;
    }
}
