package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class ForwardingRenderer implements Renderer {
    private final Renderer renderer;

    public ForwardingRenderer(Renderer renderer) {
        this.renderer = renderer;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void disable() {
        this.renderer.disable();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j10, boolean z7, boolean z10, long j11, long j12, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.enable(rendererConfiguration, formatArr, sampleStream, j10, z7, z10, j11, j12, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void enableMayRenderStartOfStream() {
        this.renderer.enableMayRenderStartOfStream();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public RendererCapabilities getCapabilities() {
        return this.renderer.getCapabilities();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long getDurationToProgressUs(long j10, long j11) {
        return this.renderer.getDurationToProgressUs(j10, j11);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public MediaClock getMediaClock() {
        return this.renderer.getMediaClock();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return this.renderer.getName();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public long getReadingPositionUs() {
        return this.renderer.getReadingPositionUs();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public int getState() {
        return this.renderer.getState();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public SampleStream getStream() {
        return this.renderer.getStream();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public int getTrackType() {
        return this.renderer.getTrackType();
    }

    @Override // androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i6, Object obj) throws ExoPlaybackException {
        this.renderer.handleMessage(i6, obj);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean hasReadStreamToEnd() {
        return this.renderer.hasReadStreamToEnd();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void init(int i6, PlayerId playerId, Clock clock) {
        this.renderer.init(i6, playerId, clock);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isCurrentStreamFinal() {
        return this.renderer.isCurrentStreamFinal();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.renderer.isEnded();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.renderer.isReady();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void maybeThrowStreamError() throws IOException {
        this.renderer.maybeThrowStreamError();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void release() {
        this.renderer.release();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j10, long j11) throws ExoPlaybackException {
        this.renderer.render(j10, j11);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void replaceStream(Format[] formatArr, SampleStream sampleStream, long j10, long j11, MediaSource.MediaPeriodId mediaPeriodId) throws ExoPlaybackException {
        this.renderer.replaceStream(formatArr, sampleStream, j10, j11, mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void reset() {
        this.renderer.reset();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void resetPosition(long j10) throws ExoPlaybackException {
        this.renderer.resetPosition(j10);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setCurrentStreamFinal() {
        this.renderer.setCurrentStreamFinal();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setPlaybackSpeed(float f, float f3) throws ExoPlaybackException {
        this.renderer.setPlaybackSpeed(f, f3);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void setTimeline(Timeline timeline) {
        this.renderer.setTimeline(timeline);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void start() throws ExoPlaybackException {
        this.renderer.start();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void stop() {
        this.renderer.stop();
    }
}
