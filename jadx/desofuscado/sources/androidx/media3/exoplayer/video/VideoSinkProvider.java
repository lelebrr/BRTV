package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.util.Size;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
interface VideoSinkProvider {
    void clearOutputSurfaceInfo();

    VideoSink getSink(int i6);

    void release();

    void setOutputSurfaceInfo(Surface surface, Size size);
}
