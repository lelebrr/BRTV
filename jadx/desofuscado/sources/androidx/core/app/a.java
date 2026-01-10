package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {
    public static void a(Object obj) {
        ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
    }

    public static void b(Activity activity, String[] strArr, int i6) {
        activity.requestPermissions(strArr, i6);
    }

    public static boolean c(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }
}
