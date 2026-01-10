package androidx.media3.exoplayer.video;

import androidx.media3.common.C;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class VideoFrameRenderControl {
    private final FrameRenderer frameRenderer;
    private long outputStreamStartPositionUs;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    private final TimedValueQueue<VideoSize> videoSizes = new TimedValueQueue<>();
    private final TimedValueQueue<Long> streamStartPositionsUs = new TimedValueQueue<>();
    private final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    private long latestInputPresentationTimeUs = C.TIME_UNSET;
    private VideoSize outputVideoSize = VideoSize.UNKNOWN;
    private long latestOutputPresentationTimeUs = C.TIME_UNSET;
    private long lastPresentationTimeUs = C.TIME_UNSET;

    /* compiled from: MyApplication */
    public interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j10, long j11, boolean z7);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
    }

    private void dropFrame() {
        this.presentationTimestampsUs.remove();
        this.frameRenderer.dropFrame();
    }

    private static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        Assertions.checkArgument(timedValueQueue.size() > 0);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) Assertions.checkNotNull(timedValueQueue.pollFirst());
    }

    private boolean maybeUpdateOutputStreamStartPosition(long j10) {
        Long lPollFloor = this.streamStartPositionsUs.pollFloor(j10);
        if (lPollFloor == null || lPollFloor.longValue() == this.outputStreamStartPositionUs) {
            return false;
        }
        this.outputStreamStartPositionUs = lPollFloor.longValue();
        return true;
    }

    private boolean maybeUpdateOutputVideoSize(long j10) {
        VideoSize videoSizePollFloor = this.videoSizes.pollFloor(j10);
        if (videoSizePollFloor == null || videoSizePollFloor.equals(VideoSize.UNKNOWN) || videoSizePollFloor.equals(this.outputVideoSize)) {
            return false;
        }
        this.outputVideoSize = videoSizePollFloor;
        return true;
    }

    private void renderFrame(boolean z7) {
        long jRemove = this.presentationTimestampsUs.remove();
        if (maybeUpdateOutputVideoSize(jRemove)) {
            this.frameRenderer.onVideoSizeChanged(this.outputVideoSize);
        }
        this.frameRenderer.renderFrame(z7 ? -1L : this.videoFrameReleaseInfo.getReleaseTimeNs(), jRemove, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.latestInputPresentationTimeUs = C.TIME_UNSET;
        this.latestOutputPresentationTimeUs = C.TIME_UNSET;
        this.lastPresentationTimeUs = C.TIME_UNSET;
        if (this.streamStartPositionsUs.size() > 0) {
            Long l9 = (Long) getLastAndClear(this.streamStartPositionsUs);
            l9.longValue();
            this.streamStartPositionsUs.add(0L, l9);
        }
        if (this.videoSizes.size() > 0) {
            this.videoSizes.add(0L, (VideoSize) getLastAndClear(this.videoSizes));
        }
    }

    public boolean isEnded() {
        long j10 = this.lastPresentationTimeUs;
        return j10 != C.TIME_UNSET && this.latestOutputPresentationTimeUs == j10;
    }

    public void onFrameAvailableForRendering(long j10) {
        this.presentationTimestampsUs.add(j10);
        this.latestInputPresentationTimeUs = j10;
        this.lastPresentationTimeUs = C.TIME_UNSET;
    }

    public void onStreamStartPositionChanged(long j10) {
        TimedValueQueue<Long> timedValueQueue = this.streamStartPositionsUs;
        long j11 = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j11 == C.TIME_UNSET ? 0L : j11 + 1, Long.valueOf(j10));
    }

    public void onVideoSizeChanged(int i6, int i10) {
        TimedValueQueue<VideoSize> timedValueQueue = this.videoSizes;
        long j10 = this.latestInputPresentationTimeUs;
        timedValueQueue.add(j10 == C.TIME_UNSET ? 0L : j10 + 1, new VideoSize(i6, i10));
    }

    public void render(long j10, long j11) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long jElement = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStreamStartPosition(jElement)) {
                this.videoFrameReleaseControl.onProcessedStreamChange();
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(jElement, j10, j11, this.outputStreamStartPositionUs, false, false, this.videoFrameReleaseInfo);
            if (frameReleaseAction == 0 || frameReleaseAction == 1) {
                this.latestOutputPresentationTimeUs = jElement;
                renderFrame(frameReleaseAction == 0);
            } else if (frameReleaseAction == 2 || frameReleaseAction == 3) {
                this.latestOutputPresentationTimeUs = jElement;
                dropFrame();
            } else {
                if (frameReleaseAction != 4) {
                    if (frameReleaseAction != 5) {
                        throw new IllegalStateException(String.valueOf(frameReleaseAction));
                    }
                    return;
                }
                this.latestOutputPresentationTimeUs = jElement;
            }
        }
    }

    public void signalEndOfInput() {
        this.lastPresentationTimeUs = this.latestInputPresentationTimeUs;
    }
}
