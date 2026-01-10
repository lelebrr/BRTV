package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.chunk.MediaChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import d7.a5;
import d7.c5;
import d7.d0;
import d7.g1;
import d7.q4;
import d7.r4;
import d7.s1;
import d7.u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.TreeMap;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.7f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MAX_HEIGHT_TO_DISCARD = 719;
    public static final int DEFAULT_MAX_WIDTH_TO_DISCARD = 1279;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    private static final long MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 1000;
    private static final String TAG = "AdaptiveTrackSelection";
    private final u1 adaptationCheckpoints;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;
    private MediaChunk lastBufferEvaluationMediaChunk;
    private long lastBufferEvaluationMs;
    private long latestBitrateEstimate;
    private final long maxDurationForQualityDecreaseUs;
    private final int maxHeightToDiscard;
    private final int maxWidthToDiscard;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    /* compiled from: MyApplication */
    public static final class AdaptationCheckpoint {
        public final long allocatedBandwidth;
        public final long totalBandwidth;

        public AdaptationCheckpoint(long j10, long j11) {
            this.totalBandwidth = j10;
            this.allocatedBandwidth = j11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdaptationCheckpoint)) {
                return false;
            }
            AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) obj;
            return this.totalBandwidth == adaptationCheckpoint.totalBandwidth && this.allocatedBandwidth == adaptationCheckpoint.allocatedBandwidth;
        }

        public int hashCode() {
            return (((int) this.totalBandwidth) * 31) + ((int) this.allocatedBandwidth);
        }
    }

    /* compiled from: MyApplication */
    public static class Factory implements ExoTrackSelection.Factory {
        private final float bandwidthFraction;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int maxHeightToDiscard;
        private final int maxWidthToDiscard;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;

        public Factory() {
            this(10000, 25000, 25000, 0.7f);
        }

        public AdaptiveTrackSelection createAdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i6, BandwidthMeter bandwidthMeter, u1 u1Var) {
            return new AdaptiveTrackSelection(trackGroup, iArr, i6, bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.maxWidthToDiscard, this.maxHeightToDiscard, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, u1Var, this.clock);
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection.Factory
        public final ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            u1 adaptationCheckpoints = AdaptiveTrackSelection.getAdaptationCheckpoints(definitionArr);
            ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
            for (int i6 = 0; i6 < definitionArr.length; i6++) {
                ExoTrackSelection.Definition definition = definitionArr[i6];
                if (definition != null) {
                    int[] iArr = definition.tracks;
                    if (iArr.length != 0) {
                        exoTrackSelectionArr[i6] = iArr.length == 1 ? new FixedTrackSelection(definition.group, iArr[0], definition.type) : createAdaptiveTrackSelection(definition.group, iArr, definition.type, bandwidthMeter, (u1) adaptationCheckpoints.get(i6));
                    }
                }
            }
            return exoTrackSelectionArr;
        }

        public Factory(int i6, int i10, int i11, float f) {
            this(i6, i10, i11, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i6, int i10, int i11, int i12, int i13, float f) {
            this(i6, i10, i11, i12, i13, f, 0.75f, Clock.DEFAULT);
        }

        public Factory(int i6, int i10, int i11, float f, float f3, Clock clock) {
            this(i6, i10, i11, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, f3, clock);
        }

        public Factory(int i6, int i10, int i11, int i12, int i13, float f, float f3, Clock clock) {
            this.minDurationForQualityIncreaseMs = i6;
            this.maxDurationForQualityDecreaseMs = i10;
            this.minDurationToRetainAfterDiscardMs = i11;
            this.maxWidthToDiscard = i12;
            this.maxHeightToDiscard = i13;
            this.bandwidthFraction = f;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
            this.clock = clock;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, 0, bandwidthMeter, Renderer.DEFAULT_DURATION_TO_PROGRESS_US, 25000L, 25000L, DEFAULT_MAX_WIDTH_TO_DISCARD, DEFAULT_MAX_HEIGHT_TO_DISCARD, 0.7f, 0.75f, c5.f6115e, Clock.DEFAULT);
        g1 g1Var = u1.f6276b;
    }

    private static void addCheckpoint(List<s1> list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i6 = 0; i6 < list.size(); i6++) {
            s1 s1Var = list.get(i6);
            if (s1Var != null) {
                s1Var.a(new AdaptationCheckpoint(j10, jArr[i6]));
            }
        }
    }

    private int determineIdealSelectedIndex(long j10, long j11) {
        long allocatedBandwidth = getAllocatedBandwidth(j11);
        int i6 = 0;
        for (int i10 = 0; i10 < this.length; i10++) {
            if (j10 == Long.MIN_VALUE || !isTrackExcluded(i10, j10)) {
                Format format = getFormat(i10);
                if (canSelectFormat(format, format.bitrate, allocatedBandwidth)) {
                    return i10;
                }
                i6 = i10;
            }
        }
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static u1 getAdaptationCheckpoints(ExoTrackSelection.Definition[] definitionArr) {
        ArrayList arrayList = new ArrayList();
        for (ExoTrackSelection.Definition definition : definitionArr) {
            if (definition == null || definition.tracks.length <= 1) {
                arrayList.add(null);
            } else {
                s1 s1VarK = u1.k();
                s1VarK.c(new AdaptationCheckpoint(0L, 0L));
                arrayList.add(s1VarK);
            }
        }
        long[][] sortedTrackBitrates = getSortedTrackBitrates(definitionArr);
        int[] iArr = new int[sortedTrackBitrates.length];
        long[] jArr = new long[sortedTrackBitrates.length];
        for (int i6 = 0; i6 < sortedTrackBitrates.length; i6++) {
            long[] jArr2 = sortedTrackBitrates[i6];
            jArr[i6] = jArr2.length == 0 ? 0L : jArr2[0];
        }
        addCheckpoint(arrayList, jArr);
        u1 switchOrder = getSwitchOrder(sortedTrackBitrates);
        for (int i10 = 0; i10 < switchOrder.size(); i10++) {
            int iIntValue = ((Integer) switchOrder.get(i10)).intValue();
            int i11 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i11;
            jArr[iIntValue] = sortedTrackBitrates[iIntValue][i11];
            addCheckpoint(arrayList, jArr);
        }
        for (int i12 = 0; i12 < definitionArr.length; i12++) {
            if (arrayList.get(i12) != null) {
                jArr[i12] = jArr[i12] * 2;
            }
        }
        addCheckpoint(arrayList, jArr);
        s1 s1VarK2 = u1.k();
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            s1 s1Var = (s1) arrayList.get(i13);
            s1VarK2.c(s1Var == null ? u1.q() : s1Var.g());
        }
        return s1VarK2.g();
    }

    private long getAllocatedBandwidth(long j10) {
        long totalAllocatableBandwidth = getTotalAllocatableBandwidth(j10);
        if (this.adaptationCheckpoints.isEmpty()) {
            return totalAllocatableBandwidth;
        }
        int i6 = 1;
        while (i6 < this.adaptationCheckpoints.size() - 1 && ((AdaptationCheckpoint) this.adaptationCheckpoints.get(i6)).totalBandwidth < totalAllocatableBandwidth) {
            i6++;
        }
        AdaptationCheckpoint adaptationCheckpoint = (AdaptationCheckpoint) this.adaptationCheckpoints.get(i6 - 1);
        AdaptationCheckpoint adaptationCheckpoint2 = (AdaptationCheckpoint) this.adaptationCheckpoints.get(i6);
        long j11 = adaptationCheckpoint.totalBandwidth;
        float f = (totalAllocatableBandwidth - j11) / (adaptationCheckpoint2.totalBandwidth - j11);
        return adaptationCheckpoint.allocatedBandwidth + ((long) (f * (adaptationCheckpoint2.allocatedBandwidth - r2)));
    }

    private long getLastChunkDurationUs(List<? extends MediaChunk> list) {
        if (list.isEmpty()) {
            return C.TIME_UNSET;
        }
        MediaChunk mediaChunk = (MediaChunk) d0.n(list);
        long j10 = mediaChunk.startTimeUs;
        if (j10 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j11 = mediaChunk.endTimeUs;
        return j11 != C.TIME_UNSET ? j11 - j10 : C.TIME_UNSET;
    }

    private long getNextChunkDurationUs(MediaChunkIterator[] mediaChunkIteratorArr, List<? extends MediaChunk> list) {
        int i6 = this.selectedIndex;
        if (i6 < mediaChunkIteratorArr.length && mediaChunkIteratorArr[i6].next()) {
            MediaChunkIterator mediaChunkIterator = mediaChunkIteratorArr[this.selectedIndex];
            return mediaChunkIterator.getChunkEndTimeUs() - mediaChunkIterator.getChunkStartTimeUs();
        }
        for (MediaChunkIterator mediaChunkIterator2 : mediaChunkIteratorArr) {
            if (mediaChunkIterator2.next()) {
                return mediaChunkIterator2.getChunkEndTimeUs() - mediaChunkIterator2.getChunkStartTimeUs();
            }
        }
        return getLastChunkDurationUs(list);
    }

    private static long[][] getSortedTrackBitrates(ExoTrackSelection.Definition[] definitionArr) {
        long[][] jArr = new long[definitionArr.length][];
        for (int i6 = 0; i6 < definitionArr.length; i6++) {
            ExoTrackSelection.Definition definition = definitionArr[i6];
            if (definition == null) {
                jArr[i6] = new long[0];
            } else {
                jArr[i6] = new long[definition.tracks.length];
                int i10 = 0;
                while (true) {
                    int[] iArr = definition.tracks;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    long j10 = definition.group.getFormat(iArr[i10]).bitrate;
                    long[] jArr2 = jArr[i6];
                    if (j10 == -1) {
                        j10 = 0;
                    }
                    jArr2[i10] = j10;
                    i10++;
                }
                Arrays.sort(jArr[i6]);
            }
        }
        return jArr;
    }

    private static u1 getSwitchOrder(long[][] jArr) {
        a5 a5Var = a5.f6089a;
        a5Var.getClass();
        d0.d(2, "expectedValuesPerKey");
        TreeMap treeMap = new TreeMap(a5Var);
        q4 q4Var = new q4(0);
        r4 r4Var = new r4(treeMap);
        r4Var.f6256h = q4Var;
        for (int i6 = 0; i6 < jArr.length; i6++) {
            long[] jArr2 = jArr[i6];
            if (jArr2.length > 1) {
                int length = jArr2.length;
                double[] dArr = new double[length];
                int i10 = 0;
                while (true) {
                    long[] jArr3 = jArr[i6];
                    double dLog = 0.0d;
                    if (i10 >= jArr3.length) {
                        break;
                    }
                    long j10 = jArr3[i10];
                    if (j10 != -1) {
                        dLog = Math.log(j10);
                    }
                    dArr[i10] = dLog;
                    i10++;
                }
                int i11 = length - 1;
                double d = dArr[i11] - dArr[0];
                int i12 = 0;
                while (i12 < i11) {
                    double d10 = dArr[i12];
                    i12++;
                    r4Var.put(Double.valueOf(d == 0.0d ? 1.0d : (((d10 + dArr[i12]) * 0.5d) - dArr[0]) / d), Integer.valueOf(i6));
                }
            }
        }
        return u1.n(r4Var.values());
    }

    private long getTotalAllocatableBandwidth(long j10) {
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        this.latestBitrateEstimate = bitrateEstimate;
        long j11 = (long) (bitrateEstimate * this.bandwidthFraction);
        long timeToFirstByteEstimateUs = this.bandwidthMeter.getTimeToFirstByteEstimateUs();
        if (timeToFirstByteEstimateUs == C.TIME_UNSET || j10 == C.TIME_UNSET) {
            return (long) (j11 / this.playbackSpeed);
        }
        float f = j10;
        return (long) ((j11 * Math.max((f / this.playbackSpeed) - timeToFirstByteEstimateUs, 0.0f)) / f);
    }

    private long minDurationForQualityIncreaseUs(long j10, long j11) {
        if (j10 == C.TIME_UNSET) {
            return this.minDurationForQualityIncreaseUs;
        }
        if (j11 != C.TIME_UNSET) {
            j10 -= j11;
        }
        return Math.min((long) (j10 * this.bufferedFractionToLiveEdgeForQualityIncrease), this.minDurationForQualityIncreaseUs);
    }

    public boolean canSelectFormat(Format format, int i6, long j10) {
        return ((long) i6) <= j10;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void disable() {
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.lastBufferEvaluationMediaChunk = null;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j10, List<? extends MediaChunk> list) {
        int i6;
        int i10;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        if (!shouldEvaluateQueueSize(jElapsedRealtime, list)) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        this.lastBufferEvaluationMediaChunk = list.isEmpty() ? null : (MediaChunk) d0.n(list);
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j10, this.playbackSpeed);
        long minDurationToRetainAfterDiscardUs = getMinDurationToRetainAfterDiscardUs();
        if (playoutDurationForMediaDuration < minDurationToRetainAfterDiscardUs) {
            return size;
        }
        Format format = getFormat(determineIdealSelectedIndex(jElapsedRealtime, getLastChunkDurationUs(list)));
        for (int i11 = 0; i11 < size; i11++) {
            MediaChunk mediaChunk = list.get(i11);
            Format format2 = mediaChunk.trackFormat;
            if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j10, this.playbackSpeed) >= minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i6 = format2.height) != -1 && i6 <= this.maxHeightToDiscard && (i10 = format2.width) != -1 && i10 <= this.maxWidthToDiscard && i6 < format.height) {
                return i11;
            }
        }
        return size;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public long getLatestBitrateEstimate() {
        return this.latestBitrateEstimate;
    }

    public long getMinDurationToRetainAfterDiscardUs() {
        return this.minDurationToRetainAfterDiscardUs;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public Object getSelectionData() {
        return null;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // androidx.media3.exoplayer.trackselection.BaseTrackSelection, androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
        this.playbackSpeed = f;
    }

    public boolean shouldEvaluateQueueSize(long j10, List<? extends MediaChunk> list) {
        long j11 = this.lastBufferEvaluationMs;
        return j11 == C.TIME_UNSET || j10 - j11 >= 1000 || !(list.isEmpty() || ((MediaChunk) d0.n(list)).equals(this.lastBufferEvaluationMediaChunk));
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j10, long j11, long j12, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long nextChunkDurationUs = getNextChunkDurationUs(mediaChunkIteratorArr, list);
        int i6 = this.reason;
        if (i6 == 0) {
            this.reason = 1;
            this.selectedIndex = determineIdealSelectedIndex(jElapsedRealtime, nextChunkDurationUs);
            return;
        }
        int i10 = this.selectedIndex;
        int iIndexOf = list.isEmpty() ? -1 : indexOf(((MediaChunk) d0.n(list)).trackFormat);
        if (iIndexOf != -1) {
            i6 = ((MediaChunk) d0.n(list)).trackSelectionReason;
            i10 = iIndexOf;
        }
        int iDetermineIdealSelectedIndex = determineIdealSelectedIndex(jElapsedRealtime, nextChunkDurationUs);
        if (iDetermineIdealSelectedIndex != i10 && !isTrackExcluded(i10, jElapsedRealtime)) {
            Format format = getFormat(i10);
            Format format2 = getFormat(iDetermineIdealSelectedIndex);
            long jMinDurationForQualityIncreaseUs = minDurationForQualityIncreaseUs(j12, nextChunkDurationUs);
            int i11 = format2.bitrate;
            int i12 = format.bitrate;
            if ((i11 > i12 && j11 < jMinDurationForQualityIncreaseUs) || (i11 < i12 && j11 >= this.maxDurationForQualityDecreaseUs)) {
                iDetermineIdealSelectedIndex = i10;
            }
        }
        if (iDetermineIdealSelectedIndex != i10) {
            i6 = 3;
        }
        this.reason = i6;
        this.selectedIndex = iDetermineIdealSelectedIndex;
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, int i6, BandwidthMeter bandwidthMeter, long j10, long j11, long j12, int i10, int i11, float f, float f3, List<AdaptationCheckpoint> list, Clock clock) {
        BandwidthMeter bandwidthMeter2;
        long j13;
        super(trackGroup, iArr, i6);
        if (j12 < j10) {
            Log.w(TAG, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            bandwidthMeter2 = bandwidthMeter;
            j13 = j10;
        } else {
            bandwidthMeter2 = bandwidthMeter;
            j13 = j12;
        }
        this.bandwidthMeter = bandwidthMeter2;
        this.minDurationForQualityIncreaseUs = j10 * 1000;
        this.maxDurationForQualityDecreaseUs = j11 * 1000;
        this.minDurationToRetainAfterDiscardUs = j13 * 1000;
        this.maxWidthToDiscard = i10;
        this.maxHeightToDiscard = i11;
        this.bandwidthFraction = f;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f3;
        this.adaptationCheckpoints = u1.n(list);
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 0;
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.latestBitrateEstimate = -2147483647L;
    }
}
