package m5;

import a.e;
import android.os.IBinder;
import android.os.IInterface;
import b5.l;
import com.google.android.gms.internal.cast.s;
import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends s implements a {
    public final Object d;

    public b(Object obj) {
        super("com.google.android.gms.dynamic.IObjectWrapper", 1);
        this.d = obj;
    }

    public static a x(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new d(iBinder, "com.google.android.gms.dynamic.IObjectWrapper", 2);
    }

    public static Object y(a aVar) throws SecurityException {
        if (aVar instanceof b) {
            return ((b) aVar).d;
        }
        IBinder iBinderAsBinder = aVar.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        Field field = null;
        int i6 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i6++;
                field = field2;
            }
        }
        if (i6 != 1) {
            throw new IllegalArgumentException(e.n(declaredFields.length, "Unexpected number of IObjectWrapper declared fields: "));
        }
        l.e(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        field.setAccessible(true);
        try {
            return field.get(iBinderAsBinder);
        } catch (IllegalAccessException e5) {
            throw new IllegalArgumentException("Could not access the field in remoteBinder.", e5);
        } catch (NullPointerException e10) {
            throw new IllegalArgumentException("Binder object is null.", e10);
        }
    }
}
