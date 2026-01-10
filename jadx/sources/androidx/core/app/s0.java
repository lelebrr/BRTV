package androidx.core.app;

import android.app.Notification;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s0 {
    public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z7) {
        return builder.setAuthenticationRequired(z7);
    }

    public static Notification.Builder b(Notification.Builder builder, int i6) {
        return builder.setForegroundServiceBehavior(i6);
    }
}
