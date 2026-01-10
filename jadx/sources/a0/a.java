package a0;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.session.MediaSession;
import android.os.Bundle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint b(int i6, int i10, int i11) {
        return new MediaCodecInfo.VideoCapabilities.PerformancePoint(i6, i10, i11);
    }

    public static /* bridge */ /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint c(Object obj) {
        return (MediaCodecInfo.VideoCapabilities.PerformancePoint) obj;
    }

    public static /* synthetic */ MediaSession d(Context context, String str, Bundle bundle) {
        return new MediaSession(context, str, bundle);
    }

    public static /* synthetic */ void i() {
    }
}
