package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {

    @UnstableApi
    public static final int TYPE_REMOTE = 3;

    @UnstableApi
    public static final int TYPE_RENDERER = 1;

    @UnstableApi
    public static final int TYPE_SOURCE = 0;

    @UnstableApi
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @UnstableApi
    public final MediaSource.MediaPeriodId mediaPeriodId;

    @UnstableApi
    public final Format rendererFormat;

    @UnstableApi
    public final int rendererFormatSupport;

    @UnstableApi
    public final int rendererIndex;

    @UnstableApi
    public final String rendererName;

    @UnstableApi
    public final int type;

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface Type {
    }

    private ExoPlaybackException(int i6, Throwable th, int i10) {
        this(i6, th, null, i10, null, -1, null, 4, false);
    }

    @UnstableApi
    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    @UnstableApi
    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i6, Format format, int i10, boolean z7, int i11) {
        return new ExoPlaybackException(1, th, null, i11, str, i6, format, format == null ? 4 : i10, z7);
    }

    @UnstableApi
    public static ExoPlaybackException createForSource(IOException iOException, int i6) {
        return new ExoPlaybackException(0, iOException, i6);
    }

    @UnstableApi
    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    private static String deriveMessage(int i6, String str, String str2, int i10, Format format, int i11) {
        String str3;
        if (i6 == 0) {
            str3 = "Source error";
        } else if (i6 != 1) {
            str3 = i6 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i10 + ", format=" + format + ", format_supported=" + Util.getFormatSupportString(i11);
        }
        return !TextUtils.isEmpty(str) ? ea.q.i(str3, ": ", str) : str3;
    }

    public ExoPlaybackException copyWithMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return new ExoPlaybackException((String) Util.castNonNull(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, mediaPeriodId, this.timestampMs, this.isRecoverable);
    }

    @Override // androidx.media3.common.PlaybackException
    public boolean errorInfoEquals(PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) Util.castNonNull(playbackException);
        return this.type == exoPlaybackException.type && Objects.equals(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && Objects.equals(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && Objects.equals(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    @UnstableApi
    public Exception getRendererException() {
        Assertions.checkState(this.type == 1);
        return (Exception) Assertions.checkNotNull(getCause());
    }

    @UnstableApi
    public IOException getSourceException() {
        Assertions.checkState(this.type == 0);
        return (IOException) Assertions.checkNotNull(getCause());
    }

    @UnstableApi
    public RuntimeException getUnexpectedException() {
        Assertions.checkState(this.type == 2);
        return (RuntimeException) Assertions.checkNotNull(getCause());
    }

    private ExoPlaybackException(int i6, Throwable th, String str, int i10, String str2, int i11, Format format, int i12, boolean z7) {
        this(deriveMessage(i6, str, str2, i11, format, i12), th, i10, i6, str2, i11, format, i12, null, SystemClock.elapsedRealtime(), z7);
    }

    @UnstableApi
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i6) {
        return new ExoPlaybackException(2, runtimeException, i6);
    }

    private ExoPlaybackException(String str, Throwable th, int i6, int i10, String str2, int i11, Format format, int i12, MediaSource.MediaPeriodId mediaPeriodId, long j10, boolean z7) {
        super(str, th, i6, Bundle.EMPTY, j10);
        Assertions.checkArgument(!z7 || i10 == 1);
        Assertions.checkArgument(th != null || i10 == 3);
        this.type = i10;
        this.rendererName = str2;
        this.rendererIndex = i11;
        this.rendererFormat = format;
        this.rendererFormatSupport = i12;
        this.mediaPeriodId = mediaPeriodId;
        this.isRecoverable = z7;
    }
}
