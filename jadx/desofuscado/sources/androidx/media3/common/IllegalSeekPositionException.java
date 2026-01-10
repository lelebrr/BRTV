package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final Timeline timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(Timeline timeline, int i6, long j10) {
        this.timeline = timeline;
        this.windowIndex = i6;
        this.positionMs = j10;
    }
}
