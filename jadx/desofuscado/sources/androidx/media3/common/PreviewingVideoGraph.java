package androidx.media3.common;

import android.content.Context;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.util.UnstableApi;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface PreviewingVideoGraph extends VideoGraph {

    /* compiled from: MyApplication */
    public interface Factory {
        PreviewingVideoGraph create(Context context, ColorInfo colorInfo, DebugViewProvider debugViewProvider, VideoGraph.Listener listener, Executor executor, VideoCompositorSettings videoCompositorSettings, List<Effect> list, long j10) throws VideoFrameProcessingException;

        boolean supportsMultipleInputs();
    }

    void renderOutputFrame(long j10);
}
