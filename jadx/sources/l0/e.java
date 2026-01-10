package l0;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f7935a;

    static {
        if (Build.VERSION.SDK_INT < 24) {
            try {
                f7935a = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e5) {
                throw new IllegalStateException(e5);
            }
        }
    }

    public static String a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return d.c(d.a(d.b(locale)));
        }
        try {
            return c.a((Locale) f7935a.invoke(null, locale));
        } catch (IllegalAccessException e5) {
            Log.w("ICUCompat", e5);
            return c.a(locale);
        } catch (InvocationTargetException e10) {
            Log.w("ICUCompat", e10);
            return c.a(locale);
        }
    }
}
