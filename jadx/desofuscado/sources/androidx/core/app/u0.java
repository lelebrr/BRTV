package androidx.core.app;

import android.app.NotificationManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class u0 {
    public static boolean a(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static int b(NotificationManager notificationManager) {
        return notificationManager.getImportance();
    }
}
