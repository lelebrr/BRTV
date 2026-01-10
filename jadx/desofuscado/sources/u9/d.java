package u9;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import j9.i;
import java.lang.reflect.InvocationTargetException;
import w8.g;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class d {
    private static volatile Choreographer choreographer;

    static {
        Object objF;
        try {
            objF = new c(a(Looper.getMainLooper()));
        } catch (Throwable th) {
            objF = o9.d.f(th);
        }
        if (objF instanceof g) {
            objF = null;
        }
    }

    public static final Handler a(Looper looper) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        i.d(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }
}
