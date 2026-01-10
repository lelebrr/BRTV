package androidx.core.app;

import android.app.Notification;
import android.app.Person;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h0 {
    public static Notification.MessagingStyle.Message b(CharSequence charSequence, long j10, Person person) {
        return new Notification.MessagingStyle.Message(charSequence, j10, person);
    }

    public static Parcelable a(Person person) {
        return person;
    }
}
