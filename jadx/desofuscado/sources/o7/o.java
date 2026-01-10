package o7;

import java.lang.reflect.Field;
import java.security.PrivilegedAction;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements PrivilegedAction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Field f8606a;

    public o(Field field) {
        this.f8606a = field;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() throws SecurityException {
        this.f8606a.setAccessible(true);
        return null;
    }
}
