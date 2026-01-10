package androidx.core.app;

import android.app.Notification;
import android.app.Person;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f0 {
    public static Notification.MessagingStyle a(Person person) {
        return new Notification.MessagingStyle(person);
    }

    public static Notification.MessagingStyle b(Notification.MessagingStyle messagingStyle, boolean z7) {
        return messagingStyle.setGroupConversation(z7);
    }
}
