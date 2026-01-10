package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface PreloadManagerListener {
    void onCompleted(MediaItem mediaItem);

    void onError(PreloadException preloadException);
}
