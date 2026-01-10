package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super(a.e.r("Unable to bind a sample queue to TrackGroup with MIME type ", str, "."));
    }
}
