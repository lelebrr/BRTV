package androidx.media3.exoplayer.analytics;

import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface AnalyticsListener {

    @UnstableApi
    public static final int EVENT_AUDIO_ATTRIBUTES_CHANGED = 20;

    @UnstableApi
    public static final int EVENT_AUDIO_CODEC_ERROR = 1029;

    @UnstableApi
    public static final int EVENT_AUDIO_DECODER_INITIALIZED = 1008;

    @UnstableApi
    public static final int EVENT_AUDIO_DECODER_RELEASED = 1012;

    @UnstableApi
    public static final int EVENT_AUDIO_DISABLED = 1013;

    @UnstableApi
    public static final int EVENT_AUDIO_ENABLED = 1007;

    @UnstableApi
    public static final int EVENT_AUDIO_INPUT_FORMAT_CHANGED = 1009;

    @UnstableApi
    public static final int EVENT_AUDIO_POSITION_ADVANCING = 1010;

    @UnstableApi
    public static final int EVENT_AUDIO_SESSION_ID = 21;

    @UnstableApi
    public static final int EVENT_AUDIO_SINK_ERROR = 1014;

    @UnstableApi
    public static final int EVENT_AUDIO_TRACK_INITIALIZED = 1031;

    @UnstableApi
    public static final int EVENT_AUDIO_TRACK_RELEASED = 1032;

    @UnstableApi
    public static final int EVENT_AUDIO_UNDERRUN = 1011;

    @UnstableApi
    public static final int EVENT_AVAILABLE_COMMANDS_CHANGED = 13;

    @UnstableApi
    public static final int EVENT_BANDWIDTH_ESTIMATE = 1006;

    @UnstableApi
    public static final int EVENT_CUES = 27;

    @UnstableApi
    public static final int EVENT_DEVICE_INFO_CHANGED = 29;

    @UnstableApi
    public static final int EVENT_DEVICE_VOLUME_CHANGED = 30;

    @UnstableApi
    public static final int EVENT_DOWNSTREAM_FORMAT_CHANGED = 1004;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_LOADED = 1023;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_REMOVED = 1026;

    @UnstableApi
    public static final int EVENT_DRM_KEYS_RESTORED = 1025;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_ACQUIRED = 1022;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_MANAGER_ERROR = 1024;

    @UnstableApi
    public static final int EVENT_DRM_SESSION_RELEASED = 1027;

    @UnstableApi
    public static final int EVENT_DROPPED_VIDEO_FRAMES = 1018;

    @UnstableApi
    public static final int EVENT_IS_LOADING_CHANGED = 3;

    @UnstableApi
    public static final int EVENT_IS_PLAYING_CHANGED = 7;

    @UnstableApi
    public static final int EVENT_LOAD_CANCELED = 1002;

    @UnstableApi
    public static final int EVENT_LOAD_COMPLETED = 1001;

    @UnstableApi
    public static final int EVENT_LOAD_ERROR = 1003;

    @UnstableApi
    public static final int EVENT_LOAD_STARTED = 1000;

    @UnstableApi
    public static final int EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED = 18;

    @UnstableApi
    public static final int EVENT_MEDIA_ITEM_TRANSITION = 1;

    @UnstableApi
    public static final int EVENT_MEDIA_METADATA_CHANGED = 14;

    @UnstableApi
    public static final int EVENT_METADATA = 28;

    @UnstableApi
    public static final int EVENT_PLAYBACK_PARAMETERS_CHANGED = 12;

    @UnstableApi
    public static final int EVENT_PLAYBACK_STATE_CHANGED = 4;

    @UnstableApi
    public static final int EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED = 6;

    @UnstableApi
    public static final int EVENT_PLAYER_ERROR = 10;

    @UnstableApi
    public static final int EVENT_PLAYER_RELEASED = 1028;

    @UnstableApi
    public static final int EVENT_PLAYLIST_METADATA_CHANGED = 15;

    @UnstableApi
    public static final int EVENT_PLAY_WHEN_READY_CHANGED = 5;

    @UnstableApi
    public static final int EVENT_POSITION_DISCONTINUITY = 11;

    @UnstableApi
    public static final int EVENT_RENDERED_FIRST_FRAME = 26;

    @UnstableApi
    public static final int EVENT_RENDERER_READY_CHANGED = 1033;

    @UnstableApi
    public static final int EVENT_REPEAT_MODE_CHANGED = 8;

    @UnstableApi
    public static final int EVENT_SEEK_BACK_INCREMENT_CHANGED = 16;

    @UnstableApi
    public static final int EVENT_SEEK_FORWARD_INCREMENT_CHANGED = 17;

    @UnstableApi
    public static final int EVENT_SHUFFLE_MODE_ENABLED_CHANGED = 9;

    @UnstableApi
    public static final int EVENT_SKIP_SILENCE_ENABLED_CHANGED = 23;

    @UnstableApi
    public static final int EVENT_SURFACE_SIZE_CHANGED = 24;

    @UnstableApi
    public static final int EVENT_TIMELINE_CHANGED = 0;

    @UnstableApi
    public static final int EVENT_TRACKS_CHANGED = 2;

    @UnstableApi
    public static final int EVENT_TRACK_SELECTION_PARAMETERS_CHANGED = 19;

    @UnstableApi
    public static final int EVENT_UPSTREAM_DISCARDED = 1005;

    @UnstableApi
    public static final int EVENT_VIDEO_CODEC_ERROR = 1030;

    @UnstableApi
    public static final int EVENT_VIDEO_DECODER_INITIALIZED = 1016;

    @UnstableApi
    public static final int EVENT_VIDEO_DECODER_RELEASED = 1019;

    @UnstableApi
    public static final int EVENT_VIDEO_DISABLED = 1020;

    @UnstableApi
    public static final int EVENT_VIDEO_ENABLED = 1015;

    @UnstableApi
    public static final int EVENT_VIDEO_FRAME_PROCESSING_OFFSET = 1021;

    @UnstableApi
    public static final int EVENT_VIDEO_INPUT_FORMAT_CHANGED = 1017;

    @UnstableApi
    public static final int EVENT_VIDEO_SIZE_CHANGED = 25;

    @UnstableApi
    public static final int EVENT_VOLUME_CHANGED = 22;

    /* compiled from: MyApplication */
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    @UnstableApi
    public @interface EventFlags {
    }

    /* compiled from: MyApplication */
    @UnstableApi
    public static final class EventTime {
        public final MediaSource.MediaPeriodId currentMediaPeriodId;
        public final long currentPlaybackPositionMs;
        public final Timeline currentTimeline;
        public final int currentWindowIndex;
        public final long eventPlaybackPositionMs;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final long realtimeMs;
        public final Timeline timeline;
        public final long totalBufferedDurationMs;
        public final int windowIndex;

        public EventTime(long j10, Timeline timeline, int i6, MediaSource.MediaPeriodId mediaPeriodId, long j11, Timeline timeline2, int i10, MediaSource.MediaPeriodId mediaPeriodId2, long j12, long j13) {
            this.realtimeMs = j10;
            this.timeline = timeline;
            this.windowIndex = i6;
            this.mediaPeriodId = mediaPeriodId;
            this.eventPlaybackPositionMs = j11;
            this.currentTimeline = timeline2;
            this.currentWindowIndex = i10;
            this.currentMediaPeriodId = mediaPeriodId2;
            this.currentPlaybackPositionMs = j12;
            this.totalBufferedDurationMs = j13;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || EventTime.class != obj.getClass()) {
                return false;
            }
            EventTime eventTime = (EventTime) obj;
            return this.realtimeMs == eventTime.realtimeMs && this.windowIndex == eventTime.windowIndex && this.eventPlaybackPositionMs == eventTime.eventPlaybackPositionMs && this.currentWindowIndex == eventTime.currentWindowIndex && this.currentPlaybackPositionMs == eventTime.currentPlaybackPositionMs && this.totalBufferedDurationMs == eventTime.totalBufferedDurationMs && Objects.equals(this.timeline, eventTime.timeline) && Objects.equals(this.mediaPeriodId, eventTime.mediaPeriodId) && Objects.equals(this.currentTimeline, eventTime.currentTimeline) && Objects.equals(this.currentMediaPeriodId, eventTime.currentMediaPeriodId);
        }

        public int hashCode() {
            return Objects.hash(Long.valueOf(this.realtimeMs), this.timeline, Integer.valueOf(this.windowIndex), this.mediaPeriodId, Long.valueOf(this.eventPlaybackPositionMs), this.currentTimeline, Integer.valueOf(this.currentWindowIndex), this.currentMediaPeriodId, Long.valueOf(this.currentPlaybackPositionMs), Long.valueOf(this.totalBufferedDurationMs));
        }
    }

    /* compiled from: MyApplication */
    @UnstableApi
    public static final class Events {
        private final SparseArray<EventTime> eventTimes;
        private final FlagSet flags;

        public Events(FlagSet flagSet, SparseArray<EventTime> sparseArray) {
            this.flags = flagSet;
            SparseArray<EventTime> sparseArray2 = new SparseArray<>(flagSet.size());
            for (int i6 = 0; i6 < flagSet.size(); i6++) {
                int i10 = flagSet.get(i6);
                sparseArray2.append(i10, (EventTime) Assertions.checkNotNull(sparseArray.get(i10)));
            }
            this.eventTimes = sparseArray2;
        }

        public boolean contains(int i6) {
            return this.flags.contains(i6);
        }

        public boolean containsAny(int... iArr) {
            return this.flags.containsAny(iArr);
        }

        public int get(int i6) {
            return this.flags.get(i6);
        }

        public EventTime getEventTime(int i6) {
            return (EventTime) Assertions.checkNotNull(this.eventTimes.get(i6));
        }

        public int size() {
            return this.flags.size();
        }
    }

    @UnstableApi
    void onAudioAttributesChanged(EventTime eventTime, AudioAttributes audioAttributes);

    @UnstableApi
    void onAudioCodecError(EventTime eventTime, Exception exc);

    @UnstableApi
    @Deprecated
    void onAudioDecoderInitialized(EventTime eventTime, String str, long j10);

    @UnstableApi
    void onAudioDecoderInitialized(EventTime eventTime, String str, long j10, long j11);

    @UnstableApi
    void onAudioDecoderReleased(EventTime eventTime, String str);

    @UnstableApi
    void onAudioDisabled(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void onAudioEnabled(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void onAudioInputFormatChanged(EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    @UnstableApi
    void onAudioPositionAdvancing(EventTime eventTime, long j10);

    @UnstableApi
    void onAudioSessionIdChanged(EventTime eventTime, int i6);

    @UnstableApi
    void onAudioSinkError(EventTime eventTime, Exception exc);

    @UnstableApi
    void onAudioTrackInitialized(EventTime eventTime, AudioSink.AudioTrackConfig audioTrackConfig);

    @UnstableApi
    void onAudioTrackReleased(EventTime eventTime, AudioSink.AudioTrackConfig audioTrackConfig);

    @UnstableApi
    void onAudioUnderrun(EventTime eventTime, int i6, long j10, long j11);

    @UnstableApi
    void onAvailableCommandsChanged(EventTime eventTime, Player.Commands commands);

    @UnstableApi
    void onBandwidthEstimate(EventTime eventTime, int i6, long j10, long j11);

    @UnstableApi
    void onCues(EventTime eventTime, CueGroup cueGroup);

    @UnstableApi
    @Deprecated
    void onCues(EventTime eventTime, List<Cue> list);

    @UnstableApi
    void onDeviceInfoChanged(EventTime eventTime, DeviceInfo deviceInfo);

    @UnstableApi
    void onDeviceVolumeChanged(EventTime eventTime, int i6, boolean z7);

    @UnstableApi
    void onDownstreamFormatChanged(EventTime eventTime, MediaLoadData mediaLoadData);

    @UnstableApi
    void onDrmKeysLoaded(EventTime eventTime);

    @UnstableApi
    void onDrmKeysRemoved(EventTime eventTime);

    @UnstableApi
    void onDrmKeysRestored(EventTime eventTime);

    @UnstableApi
    @Deprecated
    void onDrmSessionAcquired(EventTime eventTime);

    @UnstableApi
    void onDrmSessionAcquired(EventTime eventTime, int i6);

    @UnstableApi
    void onDrmSessionManagerError(EventTime eventTime, Exception exc);

    @UnstableApi
    void onDrmSessionReleased(EventTime eventTime);

    @UnstableApi
    void onDroppedVideoFrames(EventTime eventTime, int i6, long j10);

    @UnstableApi
    void onEvents(Player player, Events events);

    @UnstableApi
    void onIsLoadingChanged(EventTime eventTime, boolean z7);

    @UnstableApi
    void onIsPlayingChanged(EventTime eventTime, boolean z7);

    @UnstableApi
    void onLoadCanceled(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    void onLoadCompleted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    void onLoadError(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z7);

    @UnstableApi
    @Deprecated
    void onLoadStarted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    @UnstableApi
    void onLoadStarted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6);

    @UnstableApi
    @Deprecated
    void onLoadingChanged(EventTime eventTime, boolean z7);

    @UnstableApi
    void onMaxSeekToPreviousPositionChanged(EventTime eventTime, long j10);

    @UnstableApi
    void onMediaItemTransition(EventTime eventTime, MediaItem mediaItem, int i6);

    @UnstableApi
    void onMediaMetadataChanged(EventTime eventTime, MediaMetadata mediaMetadata);

    @UnstableApi
    void onMetadata(EventTime eventTime, Metadata metadata);

    @UnstableApi
    void onPlayWhenReadyChanged(EventTime eventTime, boolean z7, int i6);

    @UnstableApi
    void onPlaybackParametersChanged(EventTime eventTime, PlaybackParameters playbackParameters);

    @UnstableApi
    void onPlaybackStateChanged(EventTime eventTime, int i6);

    @UnstableApi
    void onPlaybackSuppressionReasonChanged(EventTime eventTime, int i6);

    @UnstableApi
    void onPlayerError(EventTime eventTime, PlaybackException playbackException);

    @UnstableApi
    void onPlayerErrorChanged(EventTime eventTime, PlaybackException playbackException);

    @UnstableApi
    void onPlayerReleased(EventTime eventTime);

    @UnstableApi
    @Deprecated
    void onPlayerStateChanged(EventTime eventTime, boolean z7, int i6);

    @UnstableApi
    void onPlaylistMetadataChanged(EventTime eventTime, MediaMetadata mediaMetadata);

    @UnstableApi
    @Deprecated
    void onPositionDiscontinuity(EventTime eventTime, int i6);

    @UnstableApi
    void onPositionDiscontinuity(EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6);

    @UnstableApi
    void onRenderedFirstFrame(EventTime eventTime, Object obj, long j10);

    @UnstableApi
    void onRendererReadyChanged(EventTime eventTime, int i6, int i10, boolean z7);

    @UnstableApi
    void onRepeatModeChanged(EventTime eventTime, int i6);

    @UnstableApi
    void onSeekBackIncrementChanged(EventTime eventTime, long j10);

    @UnstableApi
    void onSeekForwardIncrementChanged(EventTime eventTime, long j10);

    @UnstableApi
    @Deprecated
    void onSeekStarted(EventTime eventTime);

    @UnstableApi
    void onShuffleModeChanged(EventTime eventTime, boolean z7);

    @UnstableApi
    void onSkipSilenceEnabledChanged(EventTime eventTime, boolean z7);

    @UnstableApi
    void onSurfaceSizeChanged(EventTime eventTime, int i6, int i10);

    @UnstableApi
    void onTimelineChanged(EventTime eventTime, int i6);

    @UnstableApi
    void onTrackSelectionParametersChanged(EventTime eventTime, TrackSelectionParameters trackSelectionParameters);

    @UnstableApi
    void onTracksChanged(EventTime eventTime, Tracks tracks);

    @UnstableApi
    void onUpstreamDiscarded(EventTime eventTime, MediaLoadData mediaLoadData);

    @UnstableApi
    void onVideoCodecError(EventTime eventTime, Exception exc);

    @UnstableApi
    @Deprecated
    void onVideoDecoderInitialized(EventTime eventTime, String str, long j10);

    @UnstableApi
    void onVideoDecoderInitialized(EventTime eventTime, String str, long j10, long j11);

    @UnstableApi
    void onVideoDecoderReleased(EventTime eventTime, String str);

    @UnstableApi
    void onVideoDisabled(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void onVideoEnabled(EventTime eventTime, DecoderCounters decoderCounters);

    @UnstableApi
    void onVideoFrameProcessingOffset(EventTime eventTime, long j10, int i6);

    @UnstableApi
    void onVideoInputFormatChanged(EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    @UnstableApi
    @Deprecated
    void onVideoSizeChanged(EventTime eventTime, int i6, int i10, int i11, float f);

    @UnstableApi
    void onVideoSizeChanged(EventTime eventTime, VideoSize videoSize);

    @UnstableApi
    void onVolumeChanged(EventTime eventTime, float f);
}
