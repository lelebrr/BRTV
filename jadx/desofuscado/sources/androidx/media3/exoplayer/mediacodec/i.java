package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import android.view.SurfaceControl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class i {
    public static /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint f() {
        return new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60);
    }

    public static /* synthetic */ SurfaceControl.Transaction h() {
        return new SurfaceControl.Transaction();
    }
}
