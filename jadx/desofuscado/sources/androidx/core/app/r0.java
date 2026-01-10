package androidx.core.app;

import android.app.Notification;
import android.content.LocusId;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class r0 {
    public static Notification.Builder a(Notification.Builder builder, boolean z7) {
        return builder.setAllowSystemGeneratedContextualActions(z7);
    }

    public static Notification.Builder b(Notification.Builder builder, Notification.BubbleMetadata bubbleMetadata) {
        return builder.setBubbleMetadata(bubbleMetadata);
    }

    public static Notification.Action.Builder c(Notification.Action.Builder builder, boolean z7) {
        return builder.setContextual(z7);
    }

    public static Notification.Builder d(Notification.Builder builder, Object obj) {
        return builder.setLocusId((LocusId) obj);
    }
}
