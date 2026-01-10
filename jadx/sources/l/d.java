package l;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final Object f7924r = new Object();

    /* renamed from: s, reason: collision with root package name */
    public final ExecutorService f7925s = Executors.newFixedThreadPool(4, new b(0));

    /* renamed from: t, reason: collision with root package name */
    public volatile Handler f7926t;

    public static Handler V(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return c.a(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }
}
