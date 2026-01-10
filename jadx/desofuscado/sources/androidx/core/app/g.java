package androidx.core.app;

import android.app.AppOpsManager;
import android.content.Context;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {
    public static int a(AppOpsManager appOpsManager, String str, int i6, String str2) {
        if (appOpsManager == null) {
            return 1;
        }
        return appOpsManager.checkOpNoThrow(str, i6, str2);
    }

    public static String b(Context context) {
        return context.getOpPackageName();
    }

    public static AppOpsManager c(Context context) {
        return (AppOpsManager) context.getSystemService(AppOpsManager.class);
    }
}
