package androidx.core.app;

import android.app.Notification;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w {
    public static Notification.Builder a(Notification.Builder builder, String str) {
        return builder.addPerson(str);
    }

    public static Notification.Builder b(Notification.Builder builder, String str) {
        return builder.setCategory(str);
    }
}
