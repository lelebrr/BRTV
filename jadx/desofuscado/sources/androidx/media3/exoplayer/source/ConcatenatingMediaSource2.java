package androidx.media3.exoplayer.source;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import d7.s1;
import d7.u1;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ConcatenatingMediaSource2 extends CompositeMediaSource<Integer> {
    private static final int MSG_UPDATE_TIMELINE = 1;
    private MediaItem mediaItem;
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod;
    private final u1 mediaSourceHolders;
    private Handler playbackThreadHandler;
    private boolean timelineUpdateScheduled;

    /* compiled from: MyApplication */
    public static final class Builder {
        private int index;
        private MediaItem mediaItem;
        private MediaSource.Factory mediaSourceFactory;
        private final s1 mediaSourceHoldersBuilder = u1.k();

        public Builder add(MediaItem mediaItem) {
            return add(mediaItem, C.TIME_UNSET);
        }

        public ConcatenatingMediaSource2 build() {
            Assertions.checkArgument(this.index > 0, "Must add at least one source to the concatenation.");
            if (this.mediaItem == null) {
                this.mediaItem = MediaItem.fromUri(Uri.EMPTY);
            }
            return new ConcatenatingMediaSource2(this.mediaItem, this.mediaSourceHoldersBuilder.g());
        }

        public Builder setMediaItem(MediaItem mediaItem) {
            this.mediaItem = mediaItem;
            return this;
        }

        public Builder setMediaSourceFactory(MediaSource.Factory factory) {
            this.mediaSourceFactory = (MediaSource.Factory) Assertions.checkNotNull(factory);
            return this;
        }

        public Builder useDefaultMediaSourceFactory(Context context) {
            return setMediaSourceFactory(new DefaultMediaSourceFactory(context));
        }

        public Builder add(MediaItem mediaItem, long j10) {
            Assertions.checkNotNull(mediaItem);
            if (j10 == C.TIME_UNSET) {
                MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
                if (clippingConfiguration.endPositionMs != Long.MIN_VALUE) {
                    j10 = Util.usToMs(clippingConfiguration.endPositionUs - clippingConfiguration.startPositionUs);
                }
            }
            Assertions.checkStateNotNull(this.mediaSourceFactory, "Must use useDefaultMediaSourceFactory or setMediaSourceFactory first.");
            return add(this.mediaSourceFactory.createMediaSource(mediaItem), j10);
        }

        public Builder add(MediaSource mediaSource) {
            return add(mediaSource, C.TIME_UNSET);
        }

        public Builder add(MediaSource mediaSource, long j10) {
            Assertions.checkNotNull(mediaSource);
            Assertions.checkState(((mediaSource instanceof ProgressiveMediaSource) && j10 == C.TIME_UNSET) ? false : true, "Progressive media source must define an initial placeholder duration.");
            s1 s1Var = this.mediaSourceHoldersBuilder;
            int i6 = this.index;
            this.index = i6 + 1;
            s1Var.a(new MediaSourceHolder(mediaSource, i6, Util.msToUs(j10)));
            return this;
        }
    }

    /* compiled from: MyApplication */
    public static final class ConcatenatedTimeline extends Timeline {
        private final long defaultPositionUs;
        private final long durationUs;
        private final u1 firstPeriodIndices;
        private final boolean isDynamic;
        private final boolean isSeekable;
        private final Object manifest;
        private final MediaItem mediaItem;
        private final u1 periodOffsetsInWindowUs;
        private final u1 timelines;

        public ConcatenatedTimeline(MediaItem mediaItem, u1 u1Var, u1 u1Var2, u1 u1Var3, boolean z7, boolean z10, long j10, long j11, Object obj) {
            this.mediaItem = mediaItem;
            this.timelines = u1Var;
            this.firstPeriodIndices = u1Var2;
            this.periodOffsetsInWindowUs = u1Var3;
            this.isSeekable = z7;
            this.isDynamic = z10;
            this.durationUs = j10;
            this.defaultPositionUs = j11;
            this.manifest = obj;
        }

        private int getChildIndexByPeriodIndex(int i6) {
            return Util.binarySearchFloor((List<? extends Comparable<? super Integer>>) this.firstPeriodIndices, Integer.valueOf(i6 + 1), false, false);
        }

        private long getPeriodDurationUs(Timeline.Period period, int i6) {
            if (period.durationUs == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            return (i6 == this.periodOffsetsInWindowUs.size() + (-1) ? this.durationUs : ((Long) this.periodOffsetsInWindowUs.get(i6 + 1)).longValue()) - ((Long) this.periodOffsetsInWindowUs.get(i6)).longValue();
        }

        @Override // androidx.media3.common.Timeline
        public int getIndexOfPeriod(Object obj) {
            if (!(obj instanceof Pair) || !(((Pair) obj).first instanceof Integer)) {
                return -1;
            }
            int childIndex = ConcatenatingMediaSource2.getChildIndex(obj);
            int indexOfPeriod = ((Timeline) this.timelines.get(childIndex)).getIndexOfPeriod(ConcatenatingMediaSource2.getChildPeriodUid(obj));
            if (indexOfPeriod == -1) {
                return -1;
            }
            return ((Integer) this.firstPeriodIndices.get(childIndex)).intValue() + indexOfPeriod;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i6, Timeline.Period period, boolean z7) {
            int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i6);
            ((Timeline) this.timelines.get(childIndexByPeriodIndex)).getPeriod(i6 - ((Integer) this.firstPeriodIndices.get(childIndexByPeriodIndex)).intValue(), period, z7);
            period.windowIndex = 0;
            period.positionInWindowUs = ((Long) this.periodOffsetsInWindowUs.get(i6)).longValue();
            period.durationUs = getPeriodDurationUs(period, i6);
            if (z7) {
                period.uid = ConcatenatingMediaSource2.getPeriodUid(childIndexByPeriodIndex, Assertions.checkNotNull(period.uid));
            }
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
            int childIndex = ConcatenatingMediaSource2.getChildIndex(obj);
            Object childPeriodUid = ConcatenatingMediaSource2.getChildPeriodUid(obj);
            Timeline timeline = (Timeline) this.timelines.get(childIndex);
            int indexOfPeriod = timeline.getIndexOfPeriod(childPeriodUid) + ((Integer) this.firstPeriodIndices.get(childIndex)).intValue();
            timeline.getPeriodByUid(childPeriodUid, period);
            period.windowIndex = 0;
            period.positionInWindowUs = ((Long) this.periodOffsetsInWindowUs.get(indexOfPeriod)).longValue();
            period.durationUs = getPeriodDurationUs(period, indexOfPeriod);
            period.uid = obj;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.periodOffsetsInWindowUs.size();
        }

        @Override // androidx.media3.common.Timeline
        public Object getUidOfPeriod(int i6) {
            int childIndexByPeriodIndex = getChildIndexByPeriodIndex(i6);
            return ConcatenatingMediaSource2.getPeriodUid(childIndexByPeriodIndex, ((Timeline) this.timelines.get(childIndexByPeriodIndex)).getUidOfPeriod(i6 - ((Integer) this.firstPeriodIndices.get(childIndexByPeriodIndex)).intValue()));
        }

        @Override // androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i6, Timeline.Window window, long j10) {
            return window.set(Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, this.manifest, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, this.isSeekable, this.isDynamic, null, this.defaultPositionUs, this.durationUs, 0, getPeriodCount() - 1, -((Long) this.periodOffsetsInWindowUs.get(0)).longValue());
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    /* compiled from: MyApplication */
    public static final class MediaSourceHolder {
        public int activeMediaPeriods;
        public final int index;
        public final long initialPlaceholderDurationUs;
        public final MaskingMediaSource mediaSource;
        public final HashMap<Object, Long> periodTimeOffsetsByUid = new HashMap<>();

        public MediaSourceHolder(MediaSource mediaSource, int i6, long j10) {
            this.mediaSource = new MaskingMediaSource(mediaSource, false);
            this.index = i6;
            this.initialPlaceholderDurationUs = j10;
        }
    }

    private void disableUnusedMediaSources() {
        for (int i6 = 0; i6 < this.mediaSourceHolders.size(); i6++) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) this.mediaSourceHolders.get(i6);
            if (mediaSourceHolder.activeMediaPeriods == 0) {
                disableChildSource(Integer.valueOf(mediaSourceHolder.index));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getChildIndex(Object obj) {
        return ((Integer) ((Pair) obj).first).intValue();
    }

    private static int getChildIndexFromChildWindowSequenceNumber(long j10, int i6) {
        return (int) (j10 % i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getChildPeriodUid(Object obj) {
        return ((Pair) obj).second;
    }

    private static long getChildWindowSequenceNumber(long j10, int i6, int i10) {
        return (j10 * i6) + i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object getPeriodUid(int i6, Object obj) {
        return Pair.create(Integer.valueOf(i6), obj);
    }

    private static long getWindowSequenceNumberFromChildWindowSequenceNumber(long j10, int i6) {
        return j10 / i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            updateTimeline();
        }
        return true;
    }

    private ConcatenatedTimeline maybeCreateConcatenatedTimeline() {
        int i6;
        boolean z7;
        boolean z10;
        Object obj;
        Object obj2;
        Timeline timeline;
        long j10;
        Timeline.Period period;
        boolean z11;
        ConcatenatingMediaSource2 concatenatingMediaSource2 = this;
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period2 = new Timeline.Period();
        s1 s1VarK = u1.k();
        s1 s1VarK2 = u1.k();
        s1 s1VarK3 = u1.k();
        int size = concatenatingMediaSource2.mediaSourceHolders.size();
        boolean z12 = true;
        int i10 = 0;
        boolean z13 = true;
        Object obj3 = null;
        int periodCount = 0;
        boolean z14 = false;
        boolean z15 = true;
        boolean z16 = false;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        while (i10 < size) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) concatenatingMediaSource2.mediaSourceHolders.get(i10);
            Timeline timeline2 = mediaSourceHolder.mediaSource.getTimeline();
            Assertions.checkArgument(timeline2.isEmpty() ^ z12, "Can't concatenate empty child Timeline.");
            s1VarK.c(timeline2);
            s1VarK2.c(Integer.valueOf(periodCount));
            periodCount += timeline2.getPeriodCount();
            int i11 = 0;
            while (i11 < timeline2.getWindowCount()) {
                timeline2.getWindow(i11, window);
                if (!z14) {
                    obj3 = window.manifest;
                    z14 = true;
                }
                if (z13 && Objects.equals(obj3, window.manifest)) {
                    i6 = i10;
                    z7 = true;
                } else {
                    i6 = i10;
                    z7 = false;
                }
                long j14 = window.durationUs;
                if (j14 == C.TIME_UNSET) {
                    j14 = mediaSourceHolder.initialPlaceholderDurationUs;
                    if (j14 == C.TIME_UNSET) {
                        return null;
                    }
                }
                j11 += j14;
                if (mediaSourceHolder.index == 0 && i11 == 0) {
                    z10 = z7;
                    obj = obj3;
                    j12 = window.defaultPositionUs;
                    j13 = -window.positionInFirstPeriodUs;
                } else {
                    z10 = z7;
                    obj = obj3;
                }
                z15 &= window.isSeekable || window.isPlaceholder;
                z16 |= window.isDynamic;
                int i12 = window.firstPeriodIndex;
                while (i12 <= window.lastPeriodIndex) {
                    s1VarK3.c(Long.valueOf(j13));
                    timeline2.getPeriod(i12, period2, true);
                    int i13 = periodCount;
                    long j15 = period2.durationUs;
                    if (j15 == C.TIME_UNSET) {
                        Assertions.checkArgument(window.firstPeriodIndex == window.lastPeriodIndex, "Can't apply placeholder duration to multiple periods with unknown duration in a single window.");
                        j15 = window.positionInFirstPeriodUs + j14;
                    }
                    if (i12 != window.firstPeriodIndex || ((mediaSourceHolder.index == 0 && i11 == 0) || j15 == C.TIME_UNSET)) {
                        obj2 = obj;
                        timeline = timeline2;
                        j10 = 0;
                    } else {
                        Timeline timeline3 = timeline2;
                        obj2 = obj;
                        j10 = -window.positionInFirstPeriodUs;
                        j15 += j10;
                        timeline = timeline3;
                    }
                    Object objCheckNotNull = Assertions.checkNotNull(period2.uid);
                    Timeline.Window window2 = window;
                    if (mediaSourceHolder.activeMediaPeriods == 0 || !mediaSourceHolder.periodTimeOffsetsByUid.containsKey(objCheckNotNull)) {
                        period = period2;
                    } else {
                        period = period2;
                        if (!mediaSourceHolder.periodTimeOffsetsByUid.get(objCheckNotNull).equals(Long.valueOf(j10))) {
                            z11 = false;
                        }
                        Assertions.checkArgument(z11, "Can't handle windows with changing offset in first period.");
                        mediaSourceHolder.periodTimeOffsetsByUid.put(objCheckNotNull, Long.valueOf(j10));
                        j13 += j15;
                        i12++;
                        periodCount = i13;
                        obj = obj2;
                        timeline2 = timeline;
                        window = window2;
                        period2 = period;
                    }
                    z11 = true;
                    Assertions.checkArgument(z11, "Can't handle windows with changing offset in first period.");
                    mediaSourceHolder.periodTimeOffsetsByUid.put(objCheckNotNull, Long.valueOf(j10));
                    j13 += j15;
                    i12++;
                    periodCount = i13;
                    obj = obj2;
                    timeline2 = timeline;
                    window = window2;
                    period2 = period;
                }
                i11++;
                i10 = i6;
                z13 = z10;
                obj3 = obj;
            }
            i10++;
            z12 = true;
            concatenatingMediaSource2 = this;
        }
        return new ConcatenatedTimeline(getMediaItem(), s1VarK.g(), s1VarK2.g(), s1VarK3.g(), z15, z16, j11, j12, z13 ? obj3 : null);
    }

    private void scheduleTimelineUpdate() {
        if (this.timelineUpdateScheduled) {
            return;
        }
        ((Handler) Assertions.checkNotNull(this.playbackThreadHandler)).obtainMessage(1).sendToTarget();
        this.timelineUpdateScheduled = true;
    }

    private void updateTimeline() {
        this.timelineUpdateScheduled = false;
        ConcatenatedTimeline concatenatedTimelineMaybeCreateConcatenatedTimeline = maybeCreateConcatenatedTimeline();
        if (concatenatedTimelineMaybeCreateConcatenatedTimeline != null) {
            refreshSourceInfo(concatenatedTimelineMaybeCreateConcatenatedTimeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return true;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j10) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) this.mediaSourceHolders.get(getChildIndex(mediaPeriodId.periodUid));
        MediaSource.MediaPeriodId mediaPeriodIdCopyWithWindowSequenceNumber = mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaPeriodId.periodUid)).copyWithWindowSequenceNumber(getChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size(), mediaSourceHolder.index));
        enableChildSource(Integer.valueOf(mediaSourceHolder.index));
        mediaSourceHolder.activeMediaPeriods++;
        long jLongValue = mediaPeriodId.isAd() ? 0L : ((Long) Assertions.checkNotNull(mediaSourceHolder.periodTimeOffsetsByUid.get(mediaPeriodIdCopyWithWindowSequenceNumber.periodUid))).longValue();
        TimeOffsetMediaPeriod timeOffsetMediaPeriod = new TimeOffsetMediaPeriod(mediaSourceHolder.mediaSource.createPeriod(mediaPeriodIdCopyWithWindowSequenceNumber, allocator, j10 - jLongValue), jLongValue);
        this.mediaSourceByMediaPeriod.put(timeOffsetMediaPeriod, mediaSourceHolder);
        disableUnusedMediaSources();
        return timeOffsetMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public Timeline getInitialTimeline() {
        return maybeCreateConcatenatedTimeline();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public synchronized MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public int getWindowIndexForChildWindowIndex(Integer num, int i6) {
        return 0;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void prepareSourceInternal(TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        this.playbackThreadHandler = new Handler(new b(this, 1));
        for (int i6 = 0; i6 < this.mediaSourceHolders.size(); i6++) {
            prepareChildSource(Integer.valueOf(i6), ((MediaSourceHolder) this.mediaSourceHolders.get(i6)).mediaSource);
        }
        scheduleTimelineUpdate();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((MediaSourceHolder) Assertions.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod))).mediaSource.releasePeriod(((TimeOffsetMediaPeriod) mediaPeriod).getWrappedMediaPeriod());
        r0.activeMediaPeriods--;
        if (this.mediaSourceByMediaPeriod.isEmpty()) {
            return;
        }
        disableUnusedMediaSources();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        Handler handler = this.playbackThreadHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.playbackThreadHandler = null;
        }
        this.timelineUpdateScheduled = false;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource, androidx.media3.exoplayer.source.MediaSource
    public synchronized void updateMediaItem(MediaItem mediaItem) {
        this.mediaItem = mediaItem;
    }

    private ConcatenatingMediaSource2(MediaItem mediaItem, u1 u1Var) {
        this.mediaItem = mediaItem;
        this.mediaSourceHolders = u1Var;
        this.mediaSourceByMediaPeriod = new IdentityHashMap<>();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Integer num, MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() != getChildIndexFromChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size())) {
            return null;
        }
        return mediaPeriodId.copyWithPeriodUid(getPeriodUid(num.intValue(), mediaPeriodId.periodUid)).copyWithWindowSequenceNumber(getWindowSequenceNumberFromChildWindowSequenceNumber(mediaPeriodId.windowSequenceNumber, this.mediaSourceHolders.size()));
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public long getMediaTimeForChildMediaTime(Integer num, long j10, MediaSource.MediaPeriodId mediaPeriodId) {
        Long l9;
        return (j10 == C.TIME_UNSET || mediaPeriodId == null || mediaPeriodId.isAd() || (l9 = ((MediaSourceHolder) this.mediaSourceHolders.get(num.intValue())).periodTimeOffsetsByUid.get(mediaPeriodId.periodUid)) == null) ? j10 : Util.usToMs(l9.longValue()) + j10;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void lambda$prepareChildSource$0(Integer num, MediaSource mediaSource, Timeline timeline) {
        scheduleTimelineUpdate();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void enableInternal() {
    }
}
