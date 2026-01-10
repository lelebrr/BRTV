package androidx.media3.exoplayer.source.preload;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface TargetPreloadStatusControl<T> {

    /* compiled from: MyApplication */
    public interface PreloadStatus {
        int getStage();

        long getValue();
    }

    PreloadStatus getTargetPreloadStatus(T t5);
}
