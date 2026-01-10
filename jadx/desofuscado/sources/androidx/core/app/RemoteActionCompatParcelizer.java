package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a2.b bVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        a2.d dVarH = remoteActionCompat.f1141a;
        if (bVar.e(1)) {
            dVarH = bVar.h();
        }
        remoteActionCompat.f1141a = (IconCompat) dVarH;
        CharSequence charSequence = remoteActionCompat.f1142b;
        if (bVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((a2.c) bVar).f84e);
        }
        remoteActionCompat.f1142b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f1143c;
        if (bVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((a2.c) bVar).f84e);
        }
        remoteActionCompat.f1143c = charSequence2;
        remoteActionCompat.d = (PendingIntent) bVar.g(remoteActionCompat.d, 4);
        boolean z7 = remoteActionCompat.f1144e;
        if (bVar.e(5)) {
            z7 = ((a2.c) bVar).f84e.readInt() != 0;
        }
        remoteActionCompat.f1144e = z7;
        boolean z10 = remoteActionCompat.f;
        if (bVar.e(6)) {
            z10 = ((a2.c) bVar).f84e.readInt() != 0;
        }
        remoteActionCompat.f = z10;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a2.b bVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        bVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f1141a;
        bVar.i(1);
        bVar.l(iconCompat);
        CharSequence charSequence = remoteActionCompat.f1142b;
        bVar.i(2);
        Parcel parcel = ((a2.c) bVar).f84e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f1143c;
        bVar.i(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        bVar.k(remoteActionCompat.d, 4);
        boolean z7 = remoteActionCompat.f1144e;
        bVar.i(5);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z10 = remoteActionCompat.f;
        bVar.i(6);
        parcel.writeInt(z10 ? 1 : 0);
    }
}
