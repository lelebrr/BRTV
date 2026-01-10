package o5;

import android.os.IBinder;
import android.os.IInterface;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b extends s5.a implements c {
    public static c asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.flags.IFlagProvider");
        return iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new a(iBinder);
    }
}
