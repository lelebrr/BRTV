package androidx.media3.decoder.ffmpeg;

import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.u0;
import androidx.media3.exoplayer.video.DecoderVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ExperimentalFfmpegVideoRenderer extends DecoderVideoRenderer {
    private static final String TAG = "ExperimentalFfmpegVideoRenderer";

    public ExperimentalFfmpegVideoRenderer(long j10, Handler handler, VideoRendererEventListener videoRendererEventListener, int i6) {
        super(j10, handler, videoRendererEventListener, i6);
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        boolean zEquals = Objects.equals(format.sampleMimeType, format2.sampleMimeType);
        return new DecoderReuseEvaluation(str, format, format2, zEquals ? 3 : 0, zEquals ? 0 : 8);
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public Decoder<DecoderInputBuffer, VideoDecoderOutputBuffer, FfmpegDecoderException> createDecoder(Format format, CryptoConfig cryptoConfig) throws FfmpegDecoderException {
        TraceUtil.beginSection("createFfmpegVideoDecoder");
        TraceUtil.endSection();
        return null;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int supportsFormat(Format format) {
        return u0.c(0);
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public void setDecoderOutputMode(int i6) {
    }

    @Override // androidx.media3.exoplayer.video.DecoderVideoRenderer
    public void renderOutputBufferToSurface(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws FfmpegDecoderException {
    }
}
