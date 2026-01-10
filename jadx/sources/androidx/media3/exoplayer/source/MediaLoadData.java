package androidx.media3.exoplayer.source;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class MediaLoadData {
    public final int dataType;
    public final long mediaEndTimeMs;
    public final long mediaStartTimeMs;
    public final Format trackFormat;
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int trackType;

    public MediaLoadData(int i6) {
        this(i6, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET);
    }

    public MediaLoadData(int i6, int i10, Format format, int i11, Object obj, long j10, long j11) {
        this.dataType = i6;
        this.trackType = i10;
        this.trackFormat = format;
        this.trackSelectionReason = i11;
        this.trackSelectionData = obj;
        this.mediaStartTimeMs = j10;
        this.mediaEndTimeMs = j11;
    }
}
