package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilitiesList;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DefaultRendererCapabilitiesList implements RendererCapabilitiesList {
    private final Renderer[] renderers;

    /* compiled from: MyApplication */
    public static final class Factory implements RendererCapabilitiesList.Factory {
        private final RenderersFactory renderersFactory;

        public Factory(Context context) {
            this.renderersFactory = new DefaultRenderersFactory(context);
        }

        @Override // androidx.media3.exoplayer.RendererCapabilitiesList.Factory
        public DefaultRendererCapabilitiesList createRendererCapabilitiesList() {
            return new DefaultRendererCapabilitiesList(this.renderersFactory.createRenderers(Util.createHandlerForCurrentOrMainLooper(), new VideoRendererEventListener() { // from class: androidx.media3.exoplayer.DefaultRendererCapabilitiesList.Factory.1
                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onDroppedFrames(int i6, long j10) {
                    androidx.media3.exoplayer.video.i.a(this, i6, j10);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onRenderedFirstFrame(Object obj, long j10) {
                    androidx.media3.exoplayer.video.i.b(this, obj, j10);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoCodecError(Exception exc) {
                    androidx.media3.exoplayer.video.i.c(this, exc);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoDecoderInitialized(String str, long j10, long j11) {
                    androidx.media3.exoplayer.video.i.d(this, str, j10, j11);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoDecoderReleased(String str) {
                    androidx.media3.exoplayer.video.i.e(this, str);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoDisabled(DecoderCounters decoderCounters) {
                    androidx.media3.exoplayer.video.i.f(this, decoderCounters);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoEnabled(DecoderCounters decoderCounters) {
                    androidx.media3.exoplayer.video.i.g(this, decoderCounters);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoFrameProcessingOffset(long j10, int i6) {
                    androidx.media3.exoplayer.video.i.h(this, j10, i6);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
                    androidx.media3.exoplayer.video.i.i(this, format, decoderReuseEvaluation);
                }

                @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
                public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                    androidx.media3.exoplayer.video.i.j(this, videoSize);
                }
            }, new AudioRendererEventListener() { // from class: androidx.media3.exoplayer.DefaultRendererCapabilitiesList.Factory.2
                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioCodecError(Exception exc) {
                    androidx.media3.exoplayer.audio.b.a(this, exc);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioDecoderInitialized(String str, long j10, long j11) {
                    androidx.media3.exoplayer.audio.b.b(this, str, j10, j11);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioDecoderReleased(String str) {
                    androidx.media3.exoplayer.audio.b.c(this, str);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioDisabled(DecoderCounters decoderCounters) {
                    androidx.media3.exoplayer.audio.b.d(this, decoderCounters);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioEnabled(DecoderCounters decoderCounters) {
                    androidx.media3.exoplayer.audio.b.e(this, decoderCounters);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
                    androidx.media3.exoplayer.audio.b.f(this, format, decoderReuseEvaluation);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioPositionAdvancing(long j10) {
                    androidx.media3.exoplayer.audio.b.g(this, j10);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioSinkError(Exception exc) {
                    androidx.media3.exoplayer.audio.b.h(this, exc);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig) {
                    androidx.media3.exoplayer.audio.b.i(this, audioTrackConfig);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig) {
                    androidx.media3.exoplayer.audio.b.j(this, audioTrackConfig);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onAudioUnderrun(int i6, long j10, long j11) {
                    androidx.media3.exoplayer.audio.b.k(this, i6, j10, j11);
                }

                @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
                public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z7) {
                    androidx.media3.exoplayer.audio.b.l(this, z7);
                }
            }, new e(), new f()));
        }

        public Factory(RenderersFactory renderersFactory) {
            this.renderersFactory = renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createRendererCapabilitiesList$0(CueGroup cueGroup) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$createRendererCapabilitiesList$1(Metadata metadata) {
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilitiesList
    public RendererCapabilities[] getRendererCapabilities() {
        RendererCapabilities[] rendererCapabilitiesArr = new RendererCapabilities[this.renderers.length];
        int i6 = 0;
        while (true) {
            Renderer[] rendererArr = this.renderers;
            if (i6 >= rendererArr.length) {
                return rendererCapabilitiesArr;
            }
            rendererCapabilitiesArr[i6] = rendererArr[i6].getCapabilities();
            i6++;
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilitiesList
    public void release() {
        for (Renderer renderer : this.renderers) {
            renderer.release();
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilitiesList
    public int size() {
        return this.renderers.length;
    }

    private DefaultRendererCapabilitiesList(Renderer[] rendererArr) {
        this.renderers = (Renderer[]) Arrays.copyOf(rendererArr, rendererArr.length);
        for (int i6 = 0; i6 < rendererArr.length; i6++) {
            this.renderers[i6].init(i6, PlayerId.UNSET, Clock.DEFAULT);
        }
    }
}
