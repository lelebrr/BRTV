package androidx.media3.exoplayer.offline;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class Download {
    public static final int FAILURE_REASON_NONE = 0;
    public static final int FAILURE_REASON_UNKNOWN = 1;
    public static final int STATE_COMPLETED = 3;
    public static final int STATE_DOWNLOADING = 2;
    public static final int STATE_FAILED = 4;
    public static final int STATE_QUEUED = 0;
    public static final int STATE_REMOVING = 5;
    public static final int STATE_RESTARTING = 7;
    public static final int STATE_STOPPED = 1;
    public static final int STOP_REASON_NONE = 0;
    public final long contentLength;
    public final int failureReason;
    final DownloadProgress progress;
    public final DownloadRequest request;
    public final long startTimeMs;
    public final int state;
    public final int stopReason;
    public final long updateTimeMs;

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FailureReason {
    }

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public Download(DownloadRequest downloadRequest, int i6, long j10, long j11, long j12, int i10, int i11) {
        this(downloadRequest, i6, j10, j11, j12, i10, i11, new DownloadProgress());
    }

    public long getBytesDownloaded() {
        return this.progress.bytesDownloaded;
    }

    public float getPercentDownloaded() {
        return this.progress.percentDownloaded;
    }

    public boolean isTerminalState() {
        int i6 = this.state;
        return i6 == 3 || i6 == 4;
    }

    public Download(DownloadRequest downloadRequest, int i6, long j10, long j11, long j12, int i10, int i11, DownloadProgress downloadProgress) {
        Assertions.checkNotNull(downloadProgress);
        boolean z7 = false;
        Assertions.checkArgument((i11 == 0) == (i6 != 4));
        if (i10 != 0) {
            if (i6 != 2 && i6 != 0) {
                z7 = true;
            }
            Assertions.checkArgument(z7);
        }
        this.request = downloadRequest;
        this.state = i6;
        this.startTimeMs = j10;
        this.updateTimeMs = j11;
        this.contentLength = j12;
        this.stopReason = i10;
        this.failureReason = i11;
        this.progress = downloadProgress;
    }
}
