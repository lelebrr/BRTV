package androidx.media3.exoplayer.source;

import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ClippingMediaSource extends WrappingMediaSource {
    private final boolean allowDynamicClippingUpdates;
    private final boolean allowUnseekableMedia;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    /* compiled from: MyApplication */
    public static final class Builder {
        private boolean allowDynamicClippingUpdates;
        private boolean allowUnseekableMedia;
        private boolean buildCalled;
        private boolean enableInitialDiscontinuity = true;
        private long endPositionUs = Long.MIN_VALUE;
        private final MediaSource mediaSource;
        private boolean relativeToDefaultPosition;
        private long startPositionUs;

        public Builder(MediaSource mediaSource) {
            this.mediaSource = (MediaSource) Assertions.checkNotNull(mediaSource);
        }

        public ClippingMediaSource build() {
            this.buildCalled = true;
            return new ClippingMediaSource(this);
        }

        public Builder setAllowDynamicClippingUpdates(boolean z7) {
            Assertions.checkState(!this.buildCalled);
            this.allowDynamicClippingUpdates = z7;
            return this;
        }

        public Builder setAllowUnseekableMedia(boolean z7) {
            Assertions.checkState(!this.buildCalled);
            this.allowUnseekableMedia = z7;
            return this;
        }

        public Builder setEnableInitialDiscontinuity(boolean z7) {
            Assertions.checkState(!this.buildCalled);
            this.enableInitialDiscontinuity = z7;
            return this;
        }

        public Builder setEndPositionMs(long j10) {
            return setEndPositionUs(Util.msToUs(j10));
        }

        public Builder setEndPositionUs(long j10) {
            Assertions.checkState(!this.buildCalled);
            this.endPositionUs = j10;
            return this;
        }

        public Builder setRelativeToDefaultPosition(boolean z7) {
            Assertions.checkState(!this.buildCalled);
            this.relativeToDefaultPosition = z7;
            return this;
        }

        public Builder setStartPositionMs(long j10) {
            return setStartPositionUs(Util.msToUs(j10));
        }

        public Builder setStartPositionUs(long j10) {
            Assertions.checkArgument(j10 >= 0);
            Assertions.checkState(!this.buildCalled);
            this.startPositionUs = j10;
            return this;
        }
    }

    /* compiled from: MyApplication */
    public static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        public ClippingTimeline(Timeline timeline, long j10, long j11, boolean z7) throws IllegalClippingException {
            super(timeline);
            if (j11 != Long.MIN_VALUE && j11 < j10) {
                throw new IllegalClippingException(2, j10, j11);
            }
            boolean z10 = false;
            if (timeline.getPeriodCount() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
            long jMax = Math.max(0L, j10);
            if (!z7 && !window.isPlaceholder && jMax != 0 && !window.isSeekable) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j11 == Long.MIN_VALUE ? window.durationUs : Math.max(0L, j11);
            long j12 = window.durationUs;
            if (j12 != C.TIME_UNSET) {
                jMax2 = jMax2 > j12 ? j12 : jMax2;
                if (jMax > jMax2) {
                    jMax = jMax2;
                }
            }
            this.startUs = jMax;
            this.endUs = jMax2;
            this.durationUs = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (window.isDynamic && (jMax2 == C.TIME_UNSET || (j12 != C.TIME_UNSET && jMax2 == j12))) {
                z10 = true;
            }
            this.isDynamic = z10;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i6, Timeline.Period period, boolean z7) {
            this.timeline.getPeriod(0, period, z7);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j10 = this.durationUs;
            return period.set(period.id, period.uid, 0, j10 == C.TIME_UNSET ? -9223372036854775807L : j10 - positionInWindowUs, positionInWindowUs);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i6, Timeline.Window window, long j10) {
            this.timeline.getWindow(0, window, 0L);
            long j11 = window.positionInFirstPeriodUs;
            long j12 = this.startUs;
            window.positionInFirstPeriodUs = j11 + j12;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j13 = window.defaultPositionUs;
            if (j13 != C.TIME_UNSET) {
                long jMax = Math.max(j13, j12);
                window.defaultPositionUs = jMax;
                long j14 = this.endUs;
                if (j14 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j14);
                }
                window.defaultPositionUs = jMax - this.startUs;
            }
            long jUsToMs = Util.usToMs(this.startUs);
            long j15 = window.presentationStartTimeMs;
            if (j15 != C.TIME_UNSET) {
                window.presentationStartTimeMs = j15 + jUsToMs;
            }
            long j16 = window.windowStartTimeMs;
            if (j16 != C.TIME_UNSET) {
                window.windowStartTimeMs = j16 + jUsToMs;
            }
            return window;
        }
    }

    /* compiled from: MyApplication */
    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        /* compiled from: MyApplication */
        @Target({ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalClippingException(int i6) {
            this(i6, C.TIME_UNSET, C.TIME_UNSET);
        }

        private static String getReasonDescription(int i6, long j10, long j11) {
            if (i6 == 0) {
                return "invalid period count";
            }
            if (i6 == 1) {
                return "not seekable to start";
            }
            if (i6 != 2) {
                return "unknown";
            }
            Assertions.checkState((j10 == C.TIME_UNSET || j11 == C.TIME_UNSET) ? false : true);
            return "start exceeds end. Start time: " + j10 + ", End time: " + j11;
        }

        public IllegalClippingException(int i6, long j10, long j11) {
            super("Illegal clipping: " + getReasonDescription(i6, j10, j11));
            this.reason = i6;
        }
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long j10;
        long j11;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            long j12 = this.startUs;
            long j13 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j12 += defaultPositionUs;
                j13 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j12;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? positionInFirstPeriodUs + j13 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i6 = 0; i6 < size; i6++) {
                this.mediaPeriods.get(i6).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            j10 = j12;
            j11 = j13;
        } else {
            long j14 = this.periodStartUs - positionInFirstPeriodUs;
            j11 = this.endUs != Long.MIN_VALUE ? this.periodEndUs - positionInFirstPeriodUs : Long.MIN_VALUE;
            j10 = j14;
        }
        try {
            ClippingTimeline clippingTimeline = new ClippingTimeline(timeline, j10, j11, this.allowUnseekableMedia);
            this.clippingTimeline = clippingTimeline;
            refreshSourceInfo(clippingTimeline);
        } catch (IllegalClippingException e5) {
            this.clippingError = e5;
            for (int i10 = 0; i10 < this.mediaPeriods.size(); i10++) {
                this.mediaPeriods.get(i10).setClippingError(this.clippingError);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return getMediaItem().clippingConfiguration.equals(mediaItem.clippingConfiguration) && this.mediaSource.canUpdateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j10) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j10), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void onChildSourceInfoRefreshed(Timeline timeline) {
        if (this.clippingError != null) {
            return;
        }
        refreshClippedTimeline(timeline);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Assertions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        refreshClippedTimeline(((ClippingTimeline) Assertions.checkNotNull(this.clippingTimeline)).timeline);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j10, long j11) {
        this(new Builder(mediaSource).setStartPositionUs(j10).setEndPositionUs(j11));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j10) {
        this(new Builder(mediaSource).setEndPositionUs(j10).setRelativeToDefaultPosition(true));
    }

    @Deprecated
    public ClippingMediaSource(MediaSource mediaSource, long j10, long j11, boolean z7, boolean z10, boolean z11) {
        this(new Builder(mediaSource).setStartPositionUs(j10).setEndPositionUs(j11).setEnableInitialDiscontinuity(z7).setAllowDynamicClippingUpdates(z10).setRelativeToDefaultPosition(z11));
    }

    private ClippingMediaSource(Builder builder) {
        super(builder.mediaSource);
        this.startUs = builder.startPositionUs;
        this.endUs = builder.endPositionUs;
        this.enableInitialDiscontinuity = builder.enableInitialDiscontinuity;
        this.allowDynamicClippingUpdates = builder.allowDynamicClippingUpdates;
        this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
        this.allowUnseekableMedia = builder.allowUnseekableMedia;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }
}
