package androidx.media3.exoplayer.video;

import android.media.MediaFormat;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface VideoFrameMetadataListener {
    void onVideoFrameAboutToBeRendered(long j10, long j11, Format format, MediaFormat mediaFormat);
}
