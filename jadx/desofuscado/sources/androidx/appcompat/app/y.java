package androidx.appcompat.app;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.media3.common.PlaybackException;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class y {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, g0 g0Var) {
        Objects.requireNonNull(g0Var);
        a.m mVar = new a.m(1, g0Var);
        a.k.e(obj).registerOnBackInvokedCallback(PlaybackException.CUSTOM_ERROR_CODE_BASE, mVar);
        return mVar;
    }

    public static void c(Object obj, Object obj2) {
        a.k.e(obj).unregisterOnBackInvokedCallback(a.k.b(obj2));
    }
}
