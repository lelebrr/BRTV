package androidx.media3.exoplayer.hls;

import android.content.Context;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.text.SubtitleParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class HlsInterstitialsAdsLoader implements AdsLoader {
    private static final String TAG = "HlsInterstitiaAdsLoader";
    private boolean isReleased;
    private Player player;
    private final PlayerListener playerListener = new PlayerListener();
    private final Map<Object, AdsLoader.EventListener> activeEventListeners = new HashMap();
    private final Map<Object, AdPlaybackState> activeAdPlaybackStates = new HashMap();
    private final List<Listener> listeners = new ArrayList();
    private final Set<Object> unsupportedAdsIds = new HashSet();

    /* compiled from: MyApplication */
    public static final class AdsMediaSourceFactory implements MediaSource.Factory {
        private final AdViewProvider adViewProvider;
        private final HlsInterstitialsAdsLoader adsLoader;
        private final MediaSource.Factory mediaSourceFactory;

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, Context context) {
            this(hlsInterstitialsAdsLoader, context, null, adViewProvider);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            MediaSource mediaSourceCreateMediaSource = this.mediaSourceFactory.createMediaSource(mediaItem);
            MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
            if (adsConfiguration == null) {
                return mediaSourceCreateMediaSource;
            }
            if (adsConfiguration.adsId instanceof String) {
                return new AdsMediaSource(mediaSourceCreateMediaSource, new DataSpec(mediaItem.localConfiguration.adsConfiguration.adTagUri), Assertions.checkNotNull(mediaItem.localConfiguration.adsConfiguration.adsId), this.mediaSourceFactory, this.adsLoader, this.adViewProvider, false);
            }
            throw new IllegalArgumentException("Please use an AdsConfiguration with an adsId of type String when using HlsInterstitialsAdsLoader");
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalParseSubtitlesDuringExtraction(boolean z7) {
            return androidx.media3.exoplayer.source.h.a(this, z7);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory experimentalSetCodecsToParseWithinGopSampleDependencies(int i6) {
            return androidx.media3.exoplayer.source.h.b(this, i6);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
            return androidx.media3.exoplayer.source.h.c(this, factory);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final /* synthetic */ MediaSource.Factory setSubtitleParserFactory(SubtitleParser.Factory factory) {
            return androidx.media3.exoplayer.source.h.d(this, factory);
        }

        public AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, AdViewProvider adViewProvider, MediaSource.Factory factory) {
            this(hlsInterstitialsAdsLoader, null, factory, adViewProvider);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.mediaSourceFactory.setDrmSessionManagerProvider(drmSessionManagerProvider);
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public AdsMediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.mediaSourceFactory.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            return this;
        }

        private AdsMediaSourceFactory(HlsInterstitialsAdsLoader hlsInterstitialsAdsLoader, Context context, MediaSource.Factory factory, AdViewProvider adViewProvider) {
            boolean z7 = true;
            Assertions.checkArgument((context == null && factory == null) ? false : true);
            this.adsLoader = hlsInterstitialsAdsLoader;
            factory = factory == null ? new HlsMediaSource.Factory(new DefaultDataSource.Factory((Context) Assertions.checkNotNull(context))) : factory;
            this.mediaSourceFactory = factory;
            this.adViewProvider = adViewProvider;
            int[] supportedTypes = factory.getSupportedTypes();
            int length = supportedTypes.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    z7 = false;
                    break;
                } else if (supportedTypes[i6] == 2) {
                    break;
                } else {
                    i6++;
                }
            }
            Assertions.checkState(z7);
        }
    }

    /* compiled from: MyApplication */
    public interface Listener {
        void onAdCompleted(MediaItem mediaItem, Object obj, int i6, int i10);

        void onContentTimelineChanged(MediaItem mediaItem, Object obj, Timeline timeline);

        void onMetadata(MediaItem mediaItem, Object obj, int i6, int i10, Metadata metadata);

        void onPrepareCompleted(MediaItem mediaItem, Object obj, int i6, int i10);

        void onPrepareError(MediaItem mediaItem, Object obj, int i6, int i10, IOException iOException);

        void onStart(MediaItem mediaItem, Object obj, AdViewProvider adViewProvider);

        void onStop(MediaItem mediaItem, Object obj, AdPlaybackState adPlaybackState);
    }

    /* compiled from: MyApplication */
    public class PlayerListener implements Player.Listener {
        private final Timeline.Period period;

        private PlayerListener() {
            this.period = new Timeline.Period();
        }

        private void markAdAsPlayedAndNotifyListeners(MediaItem mediaItem, Object obj, int i6, int i10) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.get(obj);
            if (adPlaybackState != null) {
                HlsInterstitialsAdsLoader.this.putAndNotifyAdPlaybackStateUpdate(obj, adPlaybackState.withPlayedAd(i6, i10));
                HlsInterstitialsAdsLoader.this.notifyListeners(new e(mediaItem, obj, i6, i10, 0));
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
            androidx.media3.common.k.a(this, audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAudioSessionIdChanged(int i6) {
            androidx.media3.common.k.b(this, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
            androidx.media3.common.k.c(this, commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(CueGroup cueGroup) {
            androidx.media3.common.k.d(this, cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
            androidx.media3.common.k.f(this, deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onDeviceVolumeChanged(int i6, boolean z7) {
            androidx.media3.common.k.g(this, i6, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onEvents(Player player, Player.Events events) {
            androidx.media3.common.k.h(this, player, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsLoadingChanged(boolean z7) {
            androidx.media3.common.k.i(this, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onIsPlayingChanged(boolean z7) {
            androidx.media3.common.k.j(this, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onLoadingChanged(boolean z7) {
            androidx.media3.common.k.k(this, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j10) {
            androidx.media3.common.k.l(this, j10);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i6) {
            androidx.media3.common.k.m(this, mediaItem, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.k.n(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onMetadata(Metadata metadata) {
            Player player = HlsInterstitialsAdsLoader.this.player;
            if (player == null || !player.isPlayingAd()) {
                return;
            }
            player.getCurrentTimeline().getPeriod(player.getCurrentPeriodIndex(), this.period);
            Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                return;
            }
            HlsInterstitialsAdsLoader.this.notifyListeners(new f((MediaItem) Assertions.checkNotNull(player.getCurrentMediaItem()), obj, player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), metadata, 0));
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayWhenReadyChanged(boolean z7, int i6) {
            androidx.media3.common.k.p(this, z7, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            androidx.media3.common.k.q(this, playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPlaybackStateChanged(int i6) {
            Player player = HlsInterstitialsAdsLoader.this.player;
            if (i6 == 4 && player != null && player.isPlayingAd()) {
                player.getCurrentTimeline().getPeriod(player.getCurrentPeriodIndex(), this.period);
                Object obj = this.period.adPlaybackState.adsId;
                if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                    return;
                }
                markAdAsPlayedAndNotifyListeners((MediaItem) Assertions.checkNotNull(player.getCurrentMediaItem()), obj, player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup());
            }
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i6) {
            androidx.media3.common.k.s(this, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.k.t(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.k.u(this, playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlayerStateChanged(boolean z7, int i6) {
            androidx.media3.common.k.v(this, z7, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
            androidx.media3.common.k.w(this, mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onPositionDiscontinuity(int i6) {
            androidx.media3.common.k.x(this, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onRenderedFirstFrame() {
            androidx.media3.common.k.z(this);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onRepeatModeChanged(int i6) {
            androidx.media3.common.k.A(this, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekBackIncrementChanged(long j10) {
            androidx.media3.common.k.B(this, j10);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSeekForwardIncrementChanged(long j10) {
            androidx.media3.common.k.C(this, j10);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z7) {
            androidx.media3.common.k.D(this, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z7) {
            androidx.media3.common.k.E(this, z7);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onSurfaceSizeChanged(int i6, int i10) {
            androidx.media3.common.k.F(this, i6, i10);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i6) {
            androidx.media3.common.k.G(this, timeline, i6);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            androidx.media3.common.k.H(this, trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onTracksChanged(Tracks tracks) {
            androidx.media3.common.k.I(this, tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
            androidx.media3.common.k.J(this, videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onVolumeChanged(float f) {
            androidx.media3.common.k.K(this, f);
        }

        @Override // androidx.media3.common.Player.Listener
        public final /* synthetic */ void onCues(List list) {
            androidx.media3.common.k.e(this, list);
        }

        @Override // androidx.media3.common.Player.Listener
        public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
            if (i6 != 0 || HlsInterstitialsAdsLoader.this.player == null || positionInfo.mediaItem == null || positionInfo.adGroupIndex == -1) {
                return;
            }
            HlsInterstitialsAdsLoader.this.player.getCurrentTimeline().getPeriod(positionInfo.periodIndex, this.period);
            Object obj = this.period.adPlaybackState.adsId;
            if (obj == null || !HlsInterstitialsAdsLoader.this.activeAdPlaybackStates.containsKey(obj)) {
                return;
            }
            markAdAsPlayedAndNotifyListeners(positionInfo.mediaItem, obj, positionInfo.adGroupIndex, positionInfo.adIndexInAdGroup);
        }
    }

    private static long getInterstitialDurationUs(HlsMediaPlaylist.Interstitial interstitial, long j10) {
        long j11 = interstitial.playoutLimitUs;
        if (j11 != C.TIME_UNSET) {
            return j11;
        }
        long j12 = interstitial.durationUs;
        if (j12 != C.TIME_UNSET) {
            return j12;
        }
        long j13 = interstitial.endDateUnixUs;
        if (j13 != C.TIME_UNSET) {
            return j13 - interstitial.startDateUnixUs;
        }
        long j14 = interstitial.plannedDurationUs;
        return j14 != C.TIME_UNSET ? j14 : j10;
    }

    private static boolean isHlsMediaItem(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        return Objects.equals(localConfiguration.mimeType, MimeTypes.APPLICATION_M3U8) || Util.inferContentType(localConfiguration.uri) == 2;
    }

    private static boolean isLiveMediaItem(MediaItem mediaItem, Timeline timeline) {
        int firstWindowIndex = timeline.getFirstWindowIndex(false);
        Timeline.Window window = new Timeline.Window();
        while (firstWindowIndex != -1) {
            timeline.getWindow(firstWindowIndex, window);
            if (window.mediaItem.equals(mediaItem)) {
                return window.isLive();
            }
            firstWindowIndex = timeline.getNextWindowIndex(firstWindowIndex, 0, false);
        }
        return false;
    }

    private static boolean isSupportedMediaItem(MediaItem mediaItem, Timeline timeline) {
        return isHlsMediaItem(mediaItem) && !isLiveMediaItem(mediaItem, timeline);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleContentTimelineChanged$1(AdsMediaSource adsMediaSource, Object obj, Timeline timeline, Listener listener) {
        listener.onContentTimelineChanged(adsMediaSource.getMediaItem(), obj, timeline);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareComplete$2(AdsMediaSource adsMediaSource, Object obj, int i6, int i10, Listener listener) {
        listener.onPrepareCompleted(adsMediaSource.getMediaItem(), obj, i6, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handlePrepareError$3(AdsMediaSource adsMediaSource, Object obj, int i6, int i10, IOException iOException, Listener listener) {
        listener.onPrepareError(adsMediaSource.getMediaItem(), obj, i6, i10, iOException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$stop$4(AdsMediaSource adsMediaSource, AdPlaybackState adPlaybackState, Listener listener) {
        listener.onStop(adsMediaSource.getMediaItem(), adsMediaSource.getAdsId(), (AdPlaybackState) Assertions.checkNotNull(adPlaybackState));
    }

    private static AdPlaybackState mapHlsInterstitialsToAdPlaybackState(HlsMediaPlaylist hlsMediaPlaylist, AdPlaybackState adPlaybackState) {
        long[] jArr;
        AdPlaybackState adPlaybackStateWithNewAdGroup = adPlaybackState;
        for (int i6 = 0; i6 < hlsMediaPlaylist.interstitials.size(); i6++) {
            HlsMediaPlaylist.Interstitial interstitial = (HlsMediaPlaylist.Interstitial) hlsMediaPlaylist.interstitials.get(i6);
            if (interstitial.assetUri == null) {
                Log.w(TAG, "Ignoring interstitials with X-ASSET-LIST. Not yet supported.");
            } else {
                long j10 = interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE) ? 0L : interstitial.cue.contains(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST) ? Long.MIN_VALUE : interstitial.startDateUnixUs - hlsMediaPlaylist.startTimeUs;
                int adGroupIndexForPositionUs = adPlaybackStateWithNewAdGroup.getAdGroupIndexForPositionUs(j10, hlsMediaPlaylist.durationUs);
                if (adGroupIndexForPositionUs == -1) {
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(0, j10);
                    adGroupIndexForPositionUs = 0;
                } else if (adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).timeUs != j10) {
                    adGroupIndexForPositionUs++;
                    adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withNewAdGroup(adGroupIndexForPositionUs, j10);
                }
                int iMax = Math.max(adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).count, 0);
                long interstitialDurationUs = getInterstitialDurationUs(interstitial, C.TIME_UNSET);
                if (iMax == 0) {
                    jArr = new long[1];
                } else {
                    long[] jArr2 = adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).durationsUs;
                    long[] jArr3 = new long[jArr2.length + 1];
                    System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
                    jArr = jArr3;
                }
                jArr[jArr.length - 1] = interstitialDurationUs;
                long j11 = interstitial.resumeOffsetUs;
                if (j11 == C.TIME_UNSET) {
                    j11 = interstitialDurationUs != C.TIME_UNSET ? interstitialDurationUs : 0L;
                }
                adPlaybackStateWithNewAdGroup = adPlaybackStateWithNewAdGroup.withAdCount(adGroupIndexForPositionUs, iMax + 1).withAdDurationsUs(adGroupIndexForPositionUs, jArr).withContentResumeOffsetUs(adGroupIndexForPositionUs, adPlaybackStateWithNewAdGroup.getAdGroup(adGroupIndexForPositionUs).contentResumeOffsetUs + j11).withAvailableAdMediaItem(adGroupIndexForPositionUs, iMax, MediaItem.fromUri(interstitial.assetUri));
            }
        }
        return adPlaybackStateWithNewAdGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListeners(Consumer<Listener> consumer) {
        for (int i6 = 0; i6 < this.listeners.size(); i6++) {
            consumer.accept(this.listeners.get(i6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void putAndNotifyAdPlaybackStateUpdate(Object obj, AdPlaybackState adPlaybackState) {
        if (adPlaybackState.equals(this.activeAdPlaybackStates.put(obj, adPlaybackState))) {
            return;
        }
        AdsLoader.EventListener eventListener = this.activeEventListeners.get(obj);
        if (eventListener != null) {
            eventListener.onAdPlaybackState(adPlaybackState);
        } else {
            this.activeAdPlaybackStates.remove(obj);
        }
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handleContentTimelineChanged(AdsMediaSource adsMediaSource, Timeline timeline) {
        Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased) {
            AdsLoader.EventListener eventListenerRemove = this.activeEventListeners.remove(adsId);
            if (eventListenerRemove != null) {
                this.unsupportedAdsIds.remove(adsId);
                if (((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.remove(adsId))).equals(AdPlaybackState.NONE)) {
                    eventListenerRemove.onAdPlaybackState(new AdPlaybackState(adsId, new long[0]));
                    return;
                }
                return;
            }
            return;
        }
        if (((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.get(adsId))).equals(AdPlaybackState.NONE)) {
            AdPlaybackState adPlaybackState = new AdPlaybackState(adsId, new long[0]);
            Object obj = timeline.getWindow(0, new Timeline.Window()).manifest;
            if (obj instanceof HlsManifest) {
                adPlaybackState = mapHlsInterstitialsToAdPlaybackState(((HlsManifest) obj).mediaPlaylist, adPlaybackState);
            }
            putAndNotifyAdPlaybackStateUpdate(adsId, adPlaybackState);
            if (this.unsupportedAdsIds.contains(adsId)) {
                return;
            }
            notifyListeners(new b(adsMediaSource, adsId, timeline, 0));
        }
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareComplete(AdsMediaSource adsMediaSource, int i6, int i10) {
        Object adsId = adsMediaSource.getAdsId();
        if (this.isReleased || this.unsupportedAdsIds.contains(adsId)) {
            return;
        }
        notifyListeners(new e(adsMediaSource, adsId, i6, i10, 1));
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void handlePrepareError(AdsMediaSource adsMediaSource, int i6, int i10, IOException iOException) {
        Object adsId = adsMediaSource.getAdsId();
        putAndNotifyAdPlaybackStateUpdate(adsId, ((AdPlaybackState) Assertions.checkNotNull(this.activeAdPlaybackStates.get(adsId))).withAdLoadError(i6, i10));
        if (this.isReleased || this.unsupportedAdsIds.contains(adsId)) {
            return;
        }
        notifyListeners(new f(adsMediaSource, adsId, i6, i10, iOException, 1));
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void release() {
        if (this.activeEventListeners.isEmpty()) {
            this.player = null;
        }
        this.isReleased = true;
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setPlayer(Player player) {
        boolean z7 = true;
        Assertions.checkState(!this.isReleased);
        if (Objects.equals(this.player, player)) {
            return;
        }
        if (this.player != null && !this.activeEventListeners.isEmpty()) {
            this.player.removeListener(this.playerListener);
        }
        if (player != null && !this.activeEventListeners.isEmpty()) {
            z7 = false;
        }
        Assertions.checkState(z7);
        this.player = player;
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void setSupportedContentTypes(int... iArr) {
        for (int i6 : iArr) {
            if (i6 == 2) {
                return;
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void start(AdsMediaSource adsMediaSource, DataSpec dataSpec, Object obj, AdViewProvider adViewProvider, AdsLoader.EventListener eventListener) {
        if (this.isReleased) {
            eventListener.onAdPlaybackState(new AdPlaybackState(obj, new long[0]));
            return;
        }
        if (this.activeAdPlaybackStates.containsKey(obj) || this.unsupportedAdsIds.contains(obj)) {
            throw new IllegalStateException("media item with adsId='" + obj + "' already started. Make sure adsIds are unique within the same playlist.");
        }
        if (this.activeEventListeners.isEmpty()) {
            ((Player) Assertions.checkStateNotNull(this.player, "setPlayer(Player) needs to be called")).addListener(this.playerListener);
        }
        this.activeEventListeners.put(obj, eventListener);
        MediaItem mediaItem = adsMediaSource.getMediaItem();
        Player player = this.player;
        if (player != null && isSupportedMediaItem(mediaItem, player.getCurrentTimeline())) {
            this.activeAdPlaybackStates.put(obj, AdPlaybackState.NONE);
            notifyListeners(new b(mediaItem, obj, adViewProvider, 1));
            return;
        }
        putAndNotifyAdPlaybackStateUpdate(obj, new AdPlaybackState(obj, new long[0]));
        if (this.player != null) {
            Log.w(TAG, "Unsupported media item. Playing without ads for adsId=" + obj);
            this.unsupportedAdsIds.add(obj);
        }
    }

    @Override // androidx.media3.exoplayer.source.ads.AdsLoader
    public void stop(final AdsMediaSource adsMediaSource, AdsLoader.EventListener eventListener) {
        Object adsId = adsMediaSource.getAdsId();
        this.activeEventListeners.remove(adsId);
        final AdPlaybackState adPlaybackStateRemove = this.activeAdPlaybackStates.remove(adsId);
        if (this.player != null && this.activeEventListeners.isEmpty()) {
            this.player.removeListener(this.playerListener);
            if (this.isReleased) {
                this.player = null;
            }
        }
        if (!this.isReleased && !this.unsupportedAdsIds.contains(adsId)) {
            notifyListeners(new Consumer() { // from class: androidx.media3.exoplayer.hls.c
                @Override // androidx.media3.common.util.Consumer, l8.a
                public final void accept(Object obj) {
                    HlsInterstitialsAdsLoader.lambda$stop$4(adsMediaSource, adPlaybackStateRemove, (HlsInterstitialsAdsLoader.Listener) obj);
                }
            });
        }
        this.unsupportedAdsIds.remove(adsId);
    }
}
