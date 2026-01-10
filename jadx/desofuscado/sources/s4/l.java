package s4;

import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.framework.media.NotificationAction;
import java.util.ArrayList;
import r4.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final v4.b f9818a = new v4.b("MediaSessionUtils", null);

    public static ArrayList a(t tVar) {
        try {
            Parcel parcelW = tVar.w(tVar.l(), 3);
            ArrayList arrayListCreateTypedArrayList = parcelW.createTypedArrayList(NotificationAction.CREATOR);
            parcelW.recycle();
            return arrayListCreateTypedArrayList;
        } catch (RemoteException e5) {
            Object[] objArr = {"getNotificationActions", t.class.getSimpleName()};
            v4.b bVar = f9818a;
            Log.e(bVar.f10671a, bVar.d("Unable to call %s on %s.", objArr), e5);
            return null;
        }
    }

    public static int[] b(t tVar) {
        try {
            Parcel parcelW = tVar.w(tVar.l(), 4);
            int[] iArrCreateIntArray = parcelW.createIntArray();
            parcelW.recycle();
            return iArrCreateIntArray;
        } catch (RemoteException e5) {
            Object[] objArr = {"getCompactViewActionIndices", t.class.getSimpleName()};
            v4.b bVar = f9818a;
            Log.e(bVar.f10671a, bVar.d("Unable to call %s on %s.", objArr), e5);
            return null;
        }
    }
}
