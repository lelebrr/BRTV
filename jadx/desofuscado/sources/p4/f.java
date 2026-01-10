package p4;

import android.app.NotificationChannel;
import java.lang.invoke.MethodHandles;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class f {
    public static /* synthetic */ NotificationChannel b(String str) {
        return new NotificationChannel("cast_remote_display_local_service", str, 2);
    }

    public static /* bridge */ /* synthetic */ Class f() {
        return MethodHandles.Lookup.class;
    }

    public static /* bridge */ /* synthetic */ MethodHandles.Lookup k(Object obj) {
        return (MethodHandles.Lookup) obj;
    }

    public static /* synthetic */ NotificationChannel n(String str) {
        return new NotificationChannel("cast_media_notification", str, 2);
    }

    public static /* synthetic */ NotificationChannel o(String str) {
        return new NotificationChannel("com.google.android.gms.availability", str, 4);
    }
}
