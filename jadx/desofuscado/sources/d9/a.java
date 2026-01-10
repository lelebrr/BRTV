package d9;

import j9.i;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f6336a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        i.c(methods);
        int length = methods.length;
        int i6 = 0;
        while (true) {
            method = null;
            if (i6 >= length) {
                break;
            }
            Method method2 = methods[i6];
            if (i.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                i.e(parameterTypes, "getParameterTypes(...)");
                if (i.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i6++;
        }
        f6336a = method;
        int length2 = methods.length;
        for (int i10 = 0; i10 < length2 && !i.a(methods[i10].getName(), "getSuppressed"); i10++) {
        }
    }
}
