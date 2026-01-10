package androidx.media3.exoplayer.analytics;

import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class PlaybackStats {
    public static final PlaybackStats EMPTY = merge(new PlaybackStats[0]);
    public static final int PLAYBACK_STATE_ABANDONED = 15;
    public static final int PLAYBACK_STATE_BUFFERING = 6;
    static final int PLAYBACK_STATE_COUNT = 16;
    public static final int PLAYBACK_STATE_ENDED = 11;
    public static final int PLAYBACK_STATE_FAILED = 13;
    public static final int PLAYBACK_STATE_INTERRUPTED_BY_AD = 14;
    public static final int PLAYBACK_STATE_JOINING_BACKGROUND = 1;
    public static final int PLAYBACK_STATE_JOINING_FOREGROUND = 2;
    public static final int PLAYBACK_STATE_NOT_STARTED = 0;
    public static final int PLAYBACK_STATE_PAUSED = 4;
    public static final int PLAYBACK_STATE_PAUSED_BUFFERING = 7;
    public static final int PLAYBACK_STATE_PLAYING = 3;
    public static final int PLAYBACK_STATE_SEEKING = 5;
    public static final int PLAYBACK_STATE_STOPPED = 12;
    public static final int PLAYBACK_STATE_SUPPRESSED = 9;
    public static final int PLAYBACK_STATE_SUPPRESSED_BUFFERING = 10;
    public final int abandonedBeforeReadyCount;
    public final int adPlaybackCount;
    public final List<EventTimeAndFormat> audioFormatHistory;
    public final int backgroundJoiningCount;
    public final int endedCount;
    public final int fatalErrorCount;
    public final List<EventTimeAndException> fatalErrorHistory;
    public final int fatalErrorPlaybackCount;
    public final long firstReportedTimeMs;
    public final int foregroundPlaybackCount;
    public final int initialAudioFormatBitrateCount;
    public final int initialVideoFormatBitrateCount;
    public final int initialVideoFormatHeightCount;
    public final long maxRebufferTimeMs;
    public final List<long[]> mediaTimeHistory;
    public final int nonFatalErrorCount;
    public final List<EventTimeAndException> nonFatalErrorHistory;
    public final int playbackCount;
    private final long[] playbackStateDurationsMs;
    public final List<EventTimeAndPlaybackState> playbackStateHistory;
    public final long totalAudioFormatBitrateTimeProduct;
    public final long totalAudioFormatTimeMs;
    public final long totalAudioUnderruns;
    public final long totalBandwidthBytes;
    public final long totalBandwidthTimeMs;
    public final long totalDroppedFrames;
    public final long totalInitialAudioFormatBitrate;
    public final long totalInitialVideoFormatBitrate;
    public final int totalInitialVideoFormatHeight;
    public final int totalPauseBufferCount;
    public final int totalPauseCount;
    public final int totalRebufferCount;
    public final int totalSeekCount;
    public final long totalValidJoinTimeMs;
    public final long totalVideoFormatBitrateTimeMs;
    public final long totalVideoFormatBitrateTimeProduct;
    public final long totalVideoFormatHeightTimeMs;
    public final long totalVideoFormatHeightTimeProduct;
    public final int validJoinTimeCount;
    public final List<EventTimeAndFormat> videoFormatHistory;

    /* compiled from: MyApplication */
    public static final class EventTimeAndException {
        public final AnalyticsListener.EventTime eventTime;
        public final Exception exception;

        public EventTimeAndException(AnalyticsListener.EventTime eventTime, Exception exc) {
            this.eventTime = eventTime;
            this.exception = exc;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndException.class != obj.getClass()) {
                return false;
            }
            EventTimeAndException eventTimeAndException = (EventTimeAndException) obj;
            if (this.eventTime.equals(eventTimeAndException.eventTime)) {
                return this.exception.equals(eventTimeAndException.exception);
            }
            return false;
        }

        public int hashCode() {
            return this.exception.hashCode() + (this.eventTime.hashCode() * 31);
        }
    }

    /* compiled from: MyApplication */
    public static final class EventTimeAndFormat {
        public final AnalyticsListener.EventTime eventTime;
        public final Format format;

        public EventTimeAndFormat(AnalyticsListener.EventTime eventTime, Format format) {
            this.eventTime = eventTime;
            this.format = format;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndFormat.class != obj.getClass()) {
                return false;
            }
            EventTimeAndFormat eventTimeAndFormat = (EventTimeAndFormat) obj;
            if (!this.eventTime.equals(eventTimeAndFormat.eventTime)) {
                return false;
            }
            Format format = this.format;
            Format format2 = eventTimeAndFormat.format;
            return format != null ? format.equals(format2) : format2 == null;
        }

        public int hashCode() {
            int iHashCode = this.eventTime.hashCode() * 31;
            Format format = this.format;
            return iHashCode + (format != null ? format.hashCode() : 0);
        }
    }

    /* compiled from: MyApplication */
    public static final class EventTimeAndPlaybackState {
        public final AnalyticsListener.EventTime eventTime;
        public final int playbackState;

        public EventTimeAndPlaybackState(AnalyticsListener.EventTime eventTime, int i6) {
            this.eventTime = eventTime;
            this.playbackState = i6;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTimeAndPlaybackState.class != obj.getClass()) {
                return false;
            }
            EventTimeAndPlaybackState eventTimeAndPlaybackState = (EventTimeAndPlaybackState) obj;
            if (this.playbackState != eventTimeAndPlaybackState.playbackState) {
                return false;
            }
            return this.eventTime.equals(eventTimeAndPlaybackState.eventTime);
        }

        public int hashCode() {
            return (this.eventTime.hashCode() * 31) + this.playbackState;
        }
    }

    public PlaybackStats(int i6, long[] jArr, List<EventTimeAndPlaybackState> list, List<long[]> list2, long j10, int i10, int i11, int i12, int i13, long j11, int i14, int i15, int i16, int i17, int i18, long j12, int i19, List<EventTimeAndFormat> list3, List<EventTimeAndFormat> list4, long j13, long j14, long j15, long j16, long j17, long j18, int i20, int i21, int i22, long j19, int i23, long j20, long j21, long j22, long j23, long j24, int i24, int i25, int i26, List<EventTimeAndException> list5, List<EventTimeAndException> list6) {
        this.playbackCount = i6;
        this.playbackStateDurationsMs = jArr;
        this.playbackStateHistory = Collections.unmodifiableList(list);
        this.mediaTimeHistory = Collections.unmodifiableList(list2);
        this.firstReportedTimeMs = j10;
        this.foregroundPlaybackCount = i10;
        this.abandonedBeforeReadyCount = i11;
        this.endedCount = i12;
        this.backgroundJoiningCount = i13;
        this.totalValidJoinTimeMs = j11;
        this.validJoinTimeCount = i14;
        this.totalPauseCount = i15;
        this.totalPauseBufferCount = i16;
        this.totalSeekCount = i17;
        this.totalRebufferCount = i18;
        this.maxRebufferTimeMs = j12;
        this.adPlaybackCount = i19;
        this.videoFormatHistory = Collections.unmodifiableList(list3);
        this.audioFormatHistory = Collections.unmodifiableList(list4);
        this.totalVideoFormatHeightTimeMs = j13;
        this.totalVideoFormatHeightTimeProduct = j14;
        this.totalVideoFormatBitrateTimeMs = j15;
        this.totalVideoFormatBitrateTimeProduct = j16;
        this.totalAudioFormatTimeMs = j17;
        this.totalAudioFormatBitrateTimeProduct = j18;
        this.initialVideoFormatHeightCount = i20;
        this.initialVideoFormatBitrateCount = i21;
        this.totalInitialVideoFormatHeight = i22;
        this.totalInitialVideoFormatBitrate = j19;
        this.initialAudioFormatBitrateCount = i23;
        this.totalInitialAudioFormatBitrate = j20;
        this.totalBandwidthTimeMs = j21;
        this.totalBandwidthBytes = j22;
        this.totalDroppedFrames = j23;
        this.totalAudioUnderruns = j24;
        this.fatalErrorPlaybackCount = i24;
        this.fatalErrorCount = i25;
        this.nonFatalErrorCount = i26;
        this.fatalErrorHistory = Collections.unmodifiableList(list5);
        this.nonFatalErrorHistory = Collections.unmodifiableList(list6);
    }

    public static PlaybackStats merge(PlaybackStats... playbackStatsArr) {
        int i6;
        int i10 = 16;
        long[] jArr = new long[16];
        int length = playbackStatsArr.length;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        long j15 = 0;
        long j16 = 0;
        long j17 = 0;
        long j18 = 0;
        long j19 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = -1;
        long jMax = C.TIME_UNSET;
        long jMin = C.TIME_UNSET;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        long j20 = C.TIME_UNSET;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        long j21 = -1;
        int i26 = 0;
        long j22 = -1;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        while (i11 < length) {
            PlaybackStats playbackStats = playbackStatsArr[i11];
            i12 += playbackStats.playbackCount;
            for (int i30 = 0; i30 < i10; i30++) {
                jArr[i30] = jArr[i30] + playbackStats.playbackStateDurationsMs[i30];
            }
            if (jMin == C.TIME_UNSET) {
                jMin = playbackStats.firstReportedTimeMs;
                i6 = length;
            } else {
                i6 = length;
                long j23 = playbackStats.firstReportedTimeMs;
                if (j23 != C.TIME_UNSET) {
                    jMin = Math.min(jMin, j23);
                }
            }
            i14 += playbackStats.foregroundPlaybackCount;
            i15 += playbackStats.abandonedBeforeReadyCount;
            i16 += playbackStats.endedCount;
            i17 += playbackStats.backgroundJoiningCount;
            if (j20 == C.TIME_UNSET) {
                j20 = playbackStats.totalValidJoinTimeMs;
            } else {
                long j24 = playbackStats.totalValidJoinTimeMs;
                if (j24 != C.TIME_UNSET) {
                    j20 += j24;
                }
            }
            i18 += playbackStats.validJoinTimeCount;
            i19 += playbackStats.totalPauseCount;
            i20 += playbackStats.totalPauseBufferCount;
            i21 += playbackStats.totalSeekCount;
            i22 += playbackStats.totalRebufferCount;
            if (jMax == C.TIME_UNSET) {
                jMax = playbackStats.maxRebufferTimeMs;
            } else {
                long j25 = playbackStats.maxRebufferTimeMs;
                if (j25 != C.TIME_UNSET) {
                    jMax = Math.max(jMax, j25);
                }
            }
            i23 += playbackStats.adPlaybackCount;
            j10 += playbackStats.totalVideoFormatHeightTimeMs;
            j11 += playbackStats.totalVideoFormatHeightTimeProduct;
            j12 += playbackStats.totalVideoFormatBitrateTimeMs;
            j13 += playbackStats.totalVideoFormatBitrateTimeProduct;
            j14 += playbackStats.totalAudioFormatTimeMs;
            j15 += playbackStats.totalAudioFormatBitrateTimeProduct;
            i24 += playbackStats.initialVideoFormatHeightCount;
            i25 += playbackStats.initialVideoFormatBitrateCount;
            if (i13 == -1) {
                i13 = playbackStats.totalInitialVideoFormatHeight;
            } else {
                int i31 = playbackStats.totalInitialVideoFormatHeight;
                if (i31 != -1) {
                    i13 += i31;
                }
            }
            if (j21 == -1) {
                j21 = playbackStats.totalInitialVideoFormatBitrate;
            } else {
                long j26 = playbackStats.totalInitialVideoFormatBitrate;
                if (j26 != -1) {
                    j21 += j26;
                }
            }
            i26 += playbackStats.initialAudioFormatBitrateCount;
            if (j22 == -1) {
                j22 = playbackStats.totalInitialAudioFormatBitrate;
            } else {
                long j27 = playbackStats.totalInitialAudioFormatBitrate;
                if (j27 != -1) {
                    j22 += j27;
                }
            }
            j16 += playbackStats.totalBandwidthTimeMs;
            j17 += playbackStats.totalBandwidthBytes;
            j18 += playbackStats.totalDroppedFrames;
            j19 += playbackStats.totalAudioUnderruns;
            i27 += playbackStats.fatalErrorPlaybackCount;
            i28 += playbackStats.fatalErrorCount;
            i29 += playbackStats.nonFatalErrorCount;
            i11++;
            length = i6;
            i10 = 16;
        }
        return new PlaybackStats(i12, jArr, Collections.emptyList(), Collections.emptyList(), jMin, i14, i15, i16, i17, j20, i18, i19, i20, i21, i22, jMax, i23, Collections.emptyList(), Collections.emptyList(), j10, j11, j12, j13, j14, j15, i24, i25, i13, j21, i26, j22, j16, j17, j18, j19, i27, i28, i29, Collections.emptyList(), Collections.emptyList());
    }

    public float getAbandonedBeforeReadyRatio() {
        int i6 = this.abandonedBeforeReadyCount;
        int i10 = this.playbackCount;
        int i11 = this.foregroundPlaybackCount;
        int i12 = i6 - (i10 - i11);
        if (i11 == 0) {
            return 0.0f;
        }
        return i12 / i11;
    }

    public float getAudioUnderrunRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalAudioUnderruns * 1000.0f) / totalPlayTimeMs;
    }

    public float getDroppedFramesRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalDroppedFrames * 1000.0f) / totalPlayTimeMs;
    }

    public float getEndedRatio() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.endedCount / i6;
    }

    public float getFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.fatalErrorCount * 1000.0f) / totalPlayTimeMs;
    }

    public float getFatalErrorRatio() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.fatalErrorPlaybackCount / i6;
    }

    public float getJoinTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalJoinTimeMs() / totalPlayAndWaitTimeMs;
    }

    public int getMeanAudioFormatBitrate() {
        long j10 = this.totalAudioFormatTimeMs;
        if (j10 == 0) {
            return -1;
        }
        return (int) (this.totalAudioFormatBitrateTimeProduct / j10);
    }

    public int getMeanBandwidth() {
        long j10 = this.totalBandwidthTimeMs;
        if (j10 == 0) {
            return -1;
        }
        return (int) ((this.totalBandwidthBytes * RtspMediaSource.DEFAULT_TIMEOUT_MS) / j10);
    }

    public long getMeanElapsedTimeMs() {
        return this.playbackCount == 0 ? C.TIME_UNSET : getTotalElapsedTimeMs() / this.playbackCount;
    }

    public int getMeanInitialAudioFormatBitrate() {
        int i6 = this.initialAudioFormatBitrateCount;
        if (i6 == 0) {
            return -1;
        }
        return (int) (this.totalInitialAudioFormatBitrate / i6);
    }

    public int getMeanInitialVideoFormatBitrate() {
        int i6 = this.initialVideoFormatBitrateCount;
        if (i6 == 0) {
            return -1;
        }
        return (int) (this.totalInitialVideoFormatBitrate / i6);
    }

    public int getMeanInitialVideoFormatHeight() {
        int i6 = this.initialVideoFormatHeightCount;
        if (i6 == 0) {
            return -1;
        }
        return this.totalInitialVideoFormatHeight / i6;
    }

    public long getMeanJoinTimeMs() {
        int i6 = this.validJoinTimeCount;
        return i6 == 0 ? C.TIME_UNSET : this.totalValidJoinTimeMs / i6;
    }

    public float getMeanNonFatalErrorCount() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.nonFatalErrorCount / i6;
    }

    public float getMeanPauseBufferCount() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.totalPauseBufferCount / i6;
    }

    public float getMeanPauseCount() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.totalPauseCount / i6;
    }

    public long getMeanPausedTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPausedTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanPlayAndWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPlayAndWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanPlayTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalPlayTimeMs() / this.foregroundPlaybackCount;
    }

    public float getMeanRebufferCount() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.totalRebufferCount / i6;
    }

    public long getMeanRebufferTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalRebufferTimeMs() / this.foregroundPlaybackCount;
    }

    public float getMeanSeekCount() {
        int i6 = this.foregroundPlaybackCount;
        if (i6 == 0) {
            return 0.0f;
        }
        return this.totalSeekCount / i6;
    }

    public long getMeanSeekTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalSeekTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMeanSingleRebufferTimeMs() {
        if (this.totalRebufferCount == 0) {
            return C.TIME_UNSET;
        }
        return (getPlaybackStateDurationMs(7) + getPlaybackStateDurationMs(6)) / this.totalRebufferCount;
    }

    public long getMeanSingleSeekTimeMs() {
        return this.totalSeekCount == 0 ? C.TIME_UNSET : getTotalSeekTimeMs() / this.totalSeekCount;
    }

    public float getMeanTimeBetweenFatalErrors() {
        return 1.0f / getFatalErrorRate();
    }

    public float getMeanTimeBetweenNonFatalErrors() {
        return 1.0f / getNonFatalErrorRate();
    }

    public float getMeanTimeBetweenRebuffers() {
        return 1.0f / getRebufferRate();
    }

    public int getMeanVideoFormatBitrate() {
        long j10 = this.totalVideoFormatBitrateTimeMs;
        if (j10 == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatBitrateTimeProduct / j10);
    }

    public int getMeanVideoFormatHeight() {
        long j10 = this.totalVideoFormatHeightTimeMs;
        if (j10 == 0) {
            return -1;
        }
        return (int) (this.totalVideoFormatHeightTimeProduct / j10);
    }

    public long getMeanWaitTimeMs() {
        return this.foregroundPlaybackCount == 0 ? C.TIME_UNSET : getTotalWaitTimeMs() / this.foregroundPlaybackCount;
    }

    public long getMediaTimeMsAtRealtimeMs(long j10) {
        if (this.mediaTimeHistory.isEmpty()) {
            return C.TIME_UNSET;
        }
        int i6 = 0;
        while (i6 < this.mediaTimeHistory.size() && this.mediaTimeHistory.get(i6)[0] <= j10) {
            i6++;
        }
        if (i6 == 0) {
            return this.mediaTimeHistory.get(0)[1];
        }
        if (i6 == this.mediaTimeHistory.size()) {
            List<long[]> list = this.mediaTimeHistory;
            return list.get(list.size() - 1)[1];
        }
        int i10 = i6 - 1;
        long j11 = this.mediaTimeHistory.get(i10)[0];
        long j12 = this.mediaTimeHistory.get(i10)[1];
        long j13 = this.mediaTimeHistory.get(i6)[0];
        long j14 = this.mediaTimeHistory.get(i6)[1];
        long j15 = j13 - j11;
        if (j15 == 0) {
            return j12;
        }
        return j12 + ((long) ((j14 - j12) * ((j10 - j11) / j15)));
    }

    public float getNonFatalErrorRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.nonFatalErrorCount * 1000.0f) / totalPlayTimeMs;
    }

    public int getPlaybackStateAtTime(long j10) {
        int i6 = 0;
        for (EventTimeAndPlaybackState eventTimeAndPlaybackState : this.playbackStateHistory) {
            if (eventTimeAndPlaybackState.eventTime.realtimeMs > j10) {
                break;
            }
            i6 = eventTimeAndPlaybackState.playbackState;
        }
        return i6;
    }

    public long getPlaybackStateDurationMs(int i6) {
        return this.playbackStateDurationsMs[i6];
    }

    public float getRebufferRate() {
        long totalPlayTimeMs = getTotalPlayTimeMs();
        if (totalPlayTimeMs == 0) {
            return 0.0f;
        }
        return (this.totalRebufferCount * 1000.0f) / totalPlayTimeMs;
    }

    public float getRebufferTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalRebufferTimeMs() / totalPlayAndWaitTimeMs;
    }

    public float getSeekTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalSeekTimeMs() / totalPlayAndWaitTimeMs;
    }

    public long getTotalElapsedTimeMs() {
        long j10 = 0;
        for (int i6 = 0; i6 < 16; i6++) {
            j10 += this.playbackStateDurationsMs[i6];
        }
        return j10;
    }

    public long getTotalJoinTimeMs() {
        return getPlaybackStateDurationMs(2);
    }

    public long getTotalPausedTimeMs() {
        return getPlaybackStateDurationMs(7) + getPlaybackStateDurationMs(4);
    }

    public long getTotalPlayAndWaitTimeMs() {
        return getTotalWaitTimeMs() + getTotalPlayTimeMs();
    }

    public long getTotalPlayTimeMs() {
        return getPlaybackStateDurationMs(3);
    }

    public long getTotalRebufferTimeMs() {
        return getPlaybackStateDurationMs(6);
    }

    public long getTotalSeekTimeMs() {
        return getPlaybackStateDurationMs(5);
    }

    public long getTotalWaitTimeMs() {
        return getPlaybackStateDurationMs(5) + getPlaybackStateDurationMs(6) + getPlaybackStateDurationMs(2);
    }

    public float getWaitTimeRatio() {
        long totalPlayAndWaitTimeMs = getTotalPlayAndWaitTimeMs();
        if (totalPlayAndWaitTimeMs == 0) {
            return 0.0f;
        }
        return getTotalWaitTimeMs() / totalPlayAndWaitTimeMs;
    }
}
