package android.support.v4.media;

import android.app.Notification;
import android.media.AudioRouting;
import android.media.MediaCodec;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* bridge */ /* synthetic */ Class C() {
        return Notification.DecoratedCustomViewStyle.class;
    }

    public static /* bridge */ /* synthetic */ Notification.MessagingStyle a(Object obj) {
        return (Notification.MessagingStyle) obj;
    }

    public static /* bridge */ /* synthetic */ AudioRouting.OnRoutingChangedListener c(Object obj) {
        return (AudioRouting.OnRoutingChangedListener) obj;
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern d() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern e(int i6, int i10) {
        return new MediaCodec.CryptoInfo.Pattern(i6, i10);
    }

    public static /* bridge */ /* synthetic */ Class h() {
        return Notification.MessagingStyle.class;
    }

    public static /* synthetic */ void m() {
    }
}
