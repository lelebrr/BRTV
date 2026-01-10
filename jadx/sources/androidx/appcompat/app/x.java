package androidx.appcompat.app;

import android.app.NotificationChannel;
import android.media.AudioFocusRequest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class x {
    public static /* synthetic */ NotificationChannel c(int i6, String str, String str2) {
        return new NotificationChannel(str, str2, i6);
    }

    public static /* synthetic */ AudioFocusRequest.Builder h(int i6) {
        return new AudioFocusRequest.Builder(i6);
    }

    public static /* bridge */ /* synthetic */ AudioFocusRequest m(Object obj) {
        return (AudioFocusRequest) obj;
    }

    public static /* synthetic */ void s() {
    }
}
