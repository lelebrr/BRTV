package androidx.core.app;

import android.app.Notification;
import android.app.Person;
import android.os.Parcelable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class y {
    public static Notification.Builder a(Notification.Builder builder, Person person) {
        return builder.addPerson(person);
    }

    public static Parcelable b(Person person) {
        return person;
    }
}
