package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import java.io.IOException;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class RendererHolder {
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_PRIMARY = 0;
    static final int RENDERER_PREWARMING_STATE_NOT_PREWARMING_USING_SECONDARY = 1;
    static final int RENDERER_PREWARMING_STATE_PREWARMING_PRIMARY = 2;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_PRIMARY = 4;
    static final int RENDERER_PREWARMING_STATE_TRANSITIONING_TO_SECONDARY = 3;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_COMPLETED = 1;
    static final int REPLACE_STREAMS_DISABLE_RENDERERS_DISABLE_OFFLOAD_SCHEDULING = 2;
    private final int index;
    private final Renderer primaryRenderer;
    private final Renderer secondaryRenderer;
    private int prewarmingState = 0;
    private boolean primaryRequiresReset = false;
    private boolean secondaryRequiresReset = false;

    public RendererHolder(Renderer renderer, Renderer renderer2, int i6) {
        this.primaryRenderer = renderer;
        this.index = i6;
        this.secondaryRenderer = renderer2;
    }

    private void disableRenderer(Renderer renderer, DefaultMediaClock defaultMediaClock) {
        Assertions.checkState(this.primaryRenderer == renderer || this.secondaryRenderer == renderer);
        if (isRendererEnabled(renderer)) {
            defaultMediaClock.onRendererDisabled(renderer);
            ensureStopped(renderer);
            renderer.disable();
        }
    }

    private void ensureStopped(Renderer renderer) {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    private static Format[] getFormats(ExoTrackSelection exoTrackSelection) {
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i6 = 0; i6 < length; i6++) {
            formatArr[i6] = ((ExoTrackSelection) Assertions.checkNotNull(exoTrackSelection)).getFormat(i6);
        }
        return formatArr;
    }

    private Renderer getRendererReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder != null && mediaPeriodHolder.sampleStreams[this.index] != null) {
            if (this.primaryRenderer.getStream() == mediaPeriodHolder.sampleStreams[this.index]) {
                return this.primaryRenderer;
            }
            Renderer renderer = this.secondaryRenderer;
            if (renderer != null && renderer.getStream() == mediaPeriodHolder.sampleStreams[this.index]) {
                return this.secondaryRenderer;
            }
        }
        return null;
    }

    private boolean hasFinishedReadingFromPeriodInternal(MediaPeriodHolder mediaPeriodHolder, Renderer renderer) {
        if (renderer == null) {
            return true;
        }
        SampleStream sampleStream = mediaPeriodHolder.sampleStreams[this.index];
        if (renderer.getStream() == null) {
            return true;
        }
        if (renderer.getStream() == sampleStream && (sampleStream == null || renderer.hasReadStreamToEnd() || hasReachedServerSideInsertedAdsTransition(renderer, mediaPeriodHolder))) {
            return true;
        }
        MediaPeriodHolder next = mediaPeriodHolder.getNext();
        return next != null && next.sampleStreams[this.index] == renderer.getStream();
    }

    private boolean hasReachedServerSideInsertedAdsTransition(Renderer renderer, MediaPeriodHolder mediaPeriodHolder) {
        MediaPeriodHolder next = mediaPeriodHolder.getNext();
        return mediaPeriodHolder.info.isFollowedByTransitionToSameStream && next != null && next.prepared && ((renderer instanceof TextRenderer) || (renderer instanceof MetadataRenderer) || renderer.getReadingPositionUs() >= next.getStartPositionRendererTime());
    }

    private boolean isPrimaryRendererPrewarming() {
        int i6 = this.prewarmingState;
        return i6 == 2 || i6 == 4;
    }

    private boolean isSecondaryRendererPrewarming() {
        return this.prewarmingState == 3;
    }

    private void maybeDisableOrResetPositionInternal(Renderer renderer, SampleStream sampleStream, DefaultMediaClock defaultMediaClock, long j10, boolean z7) throws ExoPlaybackException {
        if (isRendererEnabled(renderer)) {
            if (sampleStream != renderer.getStream()) {
                disableRenderer(renderer, defaultMediaClock);
            } else if (z7) {
                renderer.resetPosition(j10);
            }
        }
    }

    private void maybeResetRenderer(boolean z7) {
        if (z7) {
            if (this.primaryRequiresReset) {
                this.primaryRenderer.reset();
                this.primaryRequiresReset = false;
                return;
            }
            return;
        }
        if (this.secondaryRequiresReset) {
            ((Renderer) Assertions.checkNotNull(this.secondaryRenderer)).reset();
            this.secondaryRequiresReset = false;
        }
    }

    private int replaceStreamsOrDisableRendererForTransitionInternal(Renderer renderer, MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        if (renderer == null || !isRendererEnabled(renderer) || ((renderer == this.primaryRenderer && isPrimaryRendererPrewarming()) || (renderer == this.secondaryRenderer && isSecondaryRendererPrewarming()))) {
            return 1;
        }
        SampleStream stream = renderer.getStream();
        SampleStream[] sampleStreamArr = mediaPeriodHolder.sampleStreams;
        int i6 = this.index;
        boolean z7 = stream != sampleStreamArr[i6];
        boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i6);
        if (zIsRendererEnabled && !z7) {
            return 1;
        }
        if (!renderer.isCurrentStreamFinal()) {
            renderer.replaceStream(getFormats(trackSelectorResult.selections[this.index]), (SampleStream) Assertions.checkNotNull(mediaPeriodHolder.sampleStreams[this.index]), mediaPeriodHolder.getStartPositionRendererTime(), mediaPeriodHolder.getRendererOffset(), mediaPeriodHolder.info.id);
            return 3;
        }
        if (!renderer.isEnded()) {
            return 0;
        }
        disableRenderer(renderer, defaultMediaClock);
        if (!zIsRendererEnabled || isPrewarming()) {
            maybeResetRenderer(renderer == this.primaryRenderer);
        }
        return 1;
    }

    private void setCurrentStreamFinalInternal(Renderer renderer, long j10) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof TextRenderer) {
            ((TextRenderer) renderer).setFinalStreamEndPositionUs(j10);
        }
    }

    private void transferResources(boolean z7) throws ExoPlaybackException {
        if (z7) {
            ((Renderer) Assertions.checkNotNull(this.secondaryRenderer)).handleMessage(17, this.primaryRenderer);
        } else {
            this.primaryRenderer.handleMessage(17, Assertions.checkNotNull(this.secondaryRenderer));
        }
    }

    public boolean allowsPlayback(MediaPeriodHolder mediaPeriodHolder) {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        return rendererReadingFromPeriod == null || rendererReadingFromPeriod.hasReadStreamToEnd() || rendererReadingFromPeriod.isReady() || rendererReadingFromPeriod.isEnded();
    }

    public void disable(DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        disableRenderer(this.primaryRenderer, defaultMediaClock);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            boolean z7 = isRendererEnabled(renderer) && this.prewarmingState != 3;
            disableRenderer(this.secondaryRenderer, defaultMediaClock);
            maybeResetRenderer(false);
            if (z7) {
                transferResources(true);
            }
        }
        this.prewarmingState = 0;
    }

    public void disablePrewarming(DefaultMediaClock defaultMediaClock) {
        if (isPrewarming()) {
            int i6 = this.prewarmingState;
            boolean z7 = i6 == 4 || i6 == 2;
            int i10 = i6 != 4 ? 0 : 1;
            disableRenderer(z7 ? this.primaryRenderer : (Renderer) Assertions.checkNotNull(this.secondaryRenderer), defaultMediaClock);
            maybeResetRenderer(z7);
            this.prewarmingState = i10;
        }
    }

    public void enable(RendererConfiguration rendererConfiguration, ExoTrackSelection exoTrackSelection, SampleStream sampleStream, long j10, boolean z7, boolean z10, long j11, long j12, MediaSource.MediaPeriodId mediaPeriodId, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        Format[] formats = getFormats(exoTrackSelection);
        int i6 = this.prewarmingState;
        if (i6 == 0 || i6 == 2 || i6 == 4) {
            this.primaryRequiresReset = true;
            this.primaryRenderer.enable(rendererConfiguration, formats, sampleStream, j10, z7, z10, j11, j12, mediaPeriodId);
            defaultMediaClock.onRendererEnabled(this.primaryRenderer);
        } else {
            this.secondaryRequiresReset = true;
            ((Renderer) Assertions.checkNotNull(this.secondaryRenderer)).enable(rendererConfiguration, formats, sampleStream, j10, z7, z10, j11, j12, mediaPeriodId);
            defaultMediaClock.onRendererEnabled(this.secondaryRenderer);
        }
    }

    public void enableMayRenderStartOfStream() {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.enableMayRenderStartOfStream();
            return;
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        this.secondaryRenderer.enableMayRenderStartOfStream();
    }

    public int getEnabledRendererCount() {
        boolean zIsRendererEnabled = isRendererEnabled(this.primaryRenderer);
        Renderer renderer = this.secondaryRenderer;
        return (zIsRendererEnabled ? 1 : 0) + ((renderer == null || !isRendererEnabled(renderer)) ? 0 : 1);
    }

    public long getMinDurationToProgressUs(long j10, long j11) {
        long durationToProgressUs = isRendererEnabled(this.primaryRenderer) ? this.primaryRenderer.getDurationToProgressUs(j10, j11) : Long.MAX_VALUE;
        Renderer renderer = this.secondaryRenderer;
        return (renderer == null || !isRendererEnabled(renderer)) ? durationToProgressUs : Math.min(durationToProgressUs, this.secondaryRenderer.getDurationToProgressUs(j10, j11));
    }

    public long getReadingPositionUs(MediaPeriodHolder mediaPeriodHolder) {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        Objects.requireNonNull(rendererReadingFromPeriod);
        return rendererReadingFromPeriod.getReadingPositionUs();
    }

    public int getTrackType() {
        return this.primaryRenderer.getTrackType();
    }

    public void handleMessage(int i6, Object obj, MediaPeriodHolder mediaPeriodHolder) throws ExoPlaybackException {
        ((Renderer) Assertions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).handleMessage(i6, obj);
    }

    public boolean hasFinishedReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        return hasFinishedReadingFromPeriodInternal(mediaPeriodHolder, this.primaryRenderer) && hasFinishedReadingFromPeriodInternal(mediaPeriodHolder, this.secondaryRenderer);
    }

    public boolean hasReadPeriodToEnd(MediaPeriodHolder mediaPeriodHolder) {
        return ((Renderer) Assertions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).hasReadStreamToEnd();
    }

    public boolean hasSecondary() {
        return this.secondaryRenderer != null;
    }

    public boolean isEnded() {
        boolean zIsEnded = isRendererEnabled(this.primaryRenderer) ? this.primaryRenderer.isEnded() : true;
        Renderer renderer = this.secondaryRenderer;
        return (renderer == null || !isRendererEnabled(renderer)) ? zIsEnded : zIsEnded & this.secondaryRenderer.isEnded();
    }

    public boolean isPrewarming() {
        return isPrimaryRendererPrewarming() || isSecondaryRendererPrewarming();
    }

    public boolean isReadingFromPeriod(MediaPeriodHolder mediaPeriodHolder) {
        return getRendererReadingFromPeriod(mediaPeriodHolder) != null;
    }

    public boolean isRendererEnabled() {
        int i6 = this.prewarmingState;
        return (i6 == 0 || i6 == 2 || i6 == 4) ? isRendererEnabled(this.primaryRenderer) : isRendererEnabled((Renderer) Assertions.checkNotNull(this.secondaryRenderer));
    }

    public boolean isRendererPrewarming(int i6) {
        return (isPrimaryRendererPrewarming() && i6 == this.index) || (isSecondaryRendererPrewarming() && i6 != this.index);
    }

    public void maybeDisableOrResetPosition(SampleStream sampleStream, DefaultMediaClock defaultMediaClock, long j10, boolean z7) throws ExoPlaybackException {
        maybeDisableOrResetPositionInternal(this.primaryRenderer, sampleStream, defaultMediaClock, j10, z7);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            maybeDisableOrResetPositionInternal(renderer, sampleStream, defaultMediaClock, j10, z7);
        }
    }

    public void maybeHandlePrewarmingTransition() throws ExoPlaybackException {
        int i6 = this.prewarmingState;
        if (i6 == 3 || i6 == 4) {
            transferResources(i6 == 4);
            this.prewarmingState = this.prewarmingState != 4 ? 1 : 0;
        } else if (i6 == 2) {
            this.prewarmingState = 0;
        }
    }

    public void maybeSetOldStreamToFinal(TrackSelectorResult trackSelectorResult, TrackSelectorResult trackSelectorResult2, long j10) {
        int i6;
        boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(this.index);
        boolean zIsRendererEnabled2 = trackSelectorResult2.isRendererEnabled(this.index);
        Renderer renderer = (this.secondaryRenderer == null || (i6 = this.prewarmingState) == 3 || (i6 == 0 && isRendererEnabled(this.primaryRenderer))) ? this.primaryRenderer : (Renderer) Assertions.checkNotNull(this.secondaryRenderer);
        if (!zIsRendererEnabled || renderer.isCurrentStreamFinal()) {
            return;
        }
        boolean z7 = getTrackType() == -2;
        RendererConfiguration[] rendererConfigurationArr = trackSelectorResult.rendererConfigurations;
        int i10 = this.index;
        RendererConfiguration rendererConfiguration = rendererConfigurationArr[i10];
        RendererConfiguration rendererConfiguration2 = trackSelectorResult2.rendererConfigurations[i10];
        if (!zIsRendererEnabled2 || !Objects.equals(rendererConfiguration2, rendererConfiguration) || z7 || isPrewarming()) {
            setCurrentStreamFinalInternal(renderer, j10);
        }
    }

    public void maybeThrowStreamError(MediaPeriodHolder mediaPeriodHolder) throws IOException {
        ((Renderer) Assertions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder))).maybeThrowStreamError();
    }

    public void release() {
        this.primaryRenderer.release();
        this.primaryRequiresReset = false;
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.release();
            this.secondaryRequiresReset = false;
        }
    }

    public void render(long j10, long j11) throws ExoPlaybackException {
        if (isRendererEnabled(this.primaryRenderer)) {
            this.primaryRenderer.render(j10, j11);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        this.secondaryRenderer.render(j10, j11);
    }

    public int replaceStreamsOrDisableRendererForTransition(MediaPeriodHolder mediaPeriodHolder, TrackSelectorResult trackSelectorResult, DefaultMediaClock defaultMediaClock) throws ExoPlaybackException {
        int iReplaceStreamsOrDisableRendererForTransitionInternal = replaceStreamsOrDisableRendererForTransitionInternal(this.primaryRenderer, mediaPeriodHolder, trackSelectorResult, defaultMediaClock);
        return iReplaceStreamsOrDisableRendererForTransitionInternal == 1 ? replaceStreamsOrDisableRendererForTransitionInternal(this.secondaryRenderer, mediaPeriodHolder, trackSelectorResult, defaultMediaClock) : iReplaceStreamsOrDisableRendererForTransitionInternal;
    }

    public void reset() {
        if (!isRendererEnabled(this.primaryRenderer)) {
            maybeResetRenderer(true);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || isRendererEnabled(renderer)) {
            return;
        }
        maybeResetRenderer(false);
    }

    public void resetPosition(MediaPeriodHolder mediaPeriodHolder, long j10) throws ExoPlaybackException {
        Renderer rendererReadingFromPeriod = getRendererReadingFromPeriod(mediaPeriodHolder);
        if (rendererReadingFromPeriod != null) {
            rendererReadingFromPeriod.resetPosition(j10);
        }
    }

    public void setAllNonPrewarmingRendererStreamsFinal(long j10) {
        int i6;
        if (isRendererEnabled(this.primaryRenderer) && (i6 = this.prewarmingState) != 4 && i6 != 2) {
            setCurrentStreamFinalInternal(this.primaryRenderer, j10);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer) || this.prewarmingState == 3) {
            return;
        }
        setCurrentStreamFinalInternal(this.secondaryRenderer, j10);
    }

    public void setCurrentStreamFinal(MediaPeriodHolder mediaPeriodHolder, long j10) {
        setCurrentStreamFinalInternal((Renderer) Assertions.checkNotNull(getRendererReadingFromPeriod(mediaPeriodHolder)), j10);
    }

    public void setPlaybackSpeed(float f, float f3) throws ExoPlaybackException {
        this.primaryRenderer.setPlaybackSpeed(f, f3);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.setPlaybackSpeed(f, f3);
        }
    }

    public void setTimeline(Timeline timeline) {
        this.primaryRenderer.setTimeline(timeline);
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.setTimeline(timeline);
        }
    }

    public void setVideoOutput(Object obj) throws ExoPlaybackException {
        if (getTrackType() != 2) {
            return;
        }
        int i6 = this.prewarmingState;
        if (i6 == 4 || i6 == 1) {
            ((Renderer) Assertions.checkNotNull(this.secondaryRenderer)).handleMessage(1, obj);
        } else {
            this.primaryRenderer.handleMessage(1, obj);
        }
    }

    public void setVolume(float f) throws ExoPlaybackException {
        if (getTrackType() != 1) {
            return;
        }
        this.primaryRenderer.handleMessage(2, Float.valueOf(f));
        Renderer renderer = this.secondaryRenderer;
        if (renderer != null) {
            renderer.handleMessage(2, Float.valueOf(f));
        }
    }

    public void start() throws ExoPlaybackException {
        if (this.primaryRenderer.getState() == 1 && this.prewarmingState != 4) {
            this.primaryRenderer.start();
            return;
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || renderer.getState() != 1 || this.prewarmingState == 3) {
            return;
        }
        this.secondaryRenderer.start();
    }

    public void startPrewarming() {
        int i6;
        Assertions.checkState(!isPrewarming());
        if (isRendererEnabled(this.primaryRenderer)) {
            i6 = 3;
        } else {
            Renderer renderer = this.secondaryRenderer;
            i6 = (renderer == null || !isRendererEnabled(renderer)) ? 2 : 4;
        }
        this.prewarmingState = i6;
    }

    public void stop() {
        if (isRendererEnabled(this.primaryRenderer)) {
            ensureStopped(this.primaryRenderer);
        }
        Renderer renderer = this.secondaryRenderer;
        if (renderer == null || !isRendererEnabled(renderer)) {
            return;
        }
        ensureStopped(this.secondaryRenderer);
    }

    private static boolean isRendererEnabled(Renderer renderer) {
        return renderer.getState() != 0;
    }
}
