package androidx.core.app;

import android.app.Notification;
import android.graphics.drawable.Icon;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class r {
    public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
        bigPictureStyle.bigPicture(icon);
    }

    public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
        bigPictureStyle.setContentDescription(charSequence);
    }

    public static void c(Notification.BigPictureStyle bigPictureStyle, boolean z7) {
        bigPictureStyle.showBigPictureWhenCollapsed(z7);
    }
}
