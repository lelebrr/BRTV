package androidx.core.app;

import android.app.Notification;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e0 {
    public static Notification.MessagingStyle a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
        return messagingStyle.addHistoricMessage(message);
    }
}
