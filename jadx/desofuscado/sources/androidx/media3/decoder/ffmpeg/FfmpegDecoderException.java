package androidx.media3.decoder.ffmpeg;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.DecoderException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class FfmpegDecoderException extends DecoderException {
    public FfmpegDecoderException(String str) {
        super(str);
    }

    public FfmpegDecoderException(String str, Throwable th) {
        super(str, th);
    }
}
