package androidx.media3.common;

import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.Metadata;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class ForwardingSimpleBasePlayer extends SimpleBasePlayer {
    private Metadata lastTimedMetadata;
    private LivePositionSuppliers livePositionSuppliers;
    private int pendingDiscontinuityReason;
    private boolean pendingFirstFrameRendered;
    private long pendingPositionDiscontinuityNewPositionMs;
    private int playWhenReadyChangeReason;
    private final Player player;

    /* compiled from: MyApplication */
    public static final class LivePositionSuppliers {
        public final SimpleBasePlayer.LivePositionSupplier bufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentBufferedPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier contentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier currentPositionSupplier;
        public final SimpleBasePlayer.LivePositionSupplier totalBufferedPositionSupplier;

        public LivePositionSuppliers(final Player player) {
            Objects.requireNonNull(player);
            final int i6 = 0;
            this.currentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.h
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i6) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i10 = 1;
            this.bufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.h
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i10) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i11 = 2;
            this.contentPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.h
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i11) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i12 = 3;
            this.contentBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.h
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i12) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
            final int i13 = 4;
            this.totalBufferedPositionSupplier = new SimpleBasePlayer.LivePositionSupplier(new SimpleBasePlayer.PositionSupplier() { // from class: androidx.media3.common.h
                @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
                public final long get() {
                    switch (i13) {
                        case 0:
                            return player.getCurrentPosition();
                        case 1:
                            return player.getBufferedPosition();
                        case 2:
                            return player.getContentPosition();
                        case 3:
                            return player.getContentBufferedPosition();
                        default:
                            return player.getTotalBufferedDuration();
                    }
                }
            });
        }

        public void disconnect(long j10, long j11) {
            this.currentPositionSupplier.disconnect(j10);
            this.bufferedPositionSupplier.disconnect(j10);
            this.contentPositionSupplier.disconnect(j11);
            this.contentBufferedPositionSupplier.disconnect(j11);
            this.totalBufferedPositionSupplier.disconnect(0L);
        }
    }

    public ForwardingSimpleBasePlayer(final Player player) {
        super(player.getApplicationLooper());
        this.player = player;
        this.lastTimedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
        this.playWhenReadyChangeReason = 1;
        this.pendingDiscontinuityReason = 5;
        this.livePositionSuppliers = new LivePositionSuppliers(player);
        player.addListener(new Player.Listener() { // from class: androidx.media3.common.ForwardingSimpleBasePlayer.1
            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
                k.a(this, audioAttributes);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAudioSessionIdChanged(int i6) {
                k.b(this, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
                k.c(this, commands);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onCues(CueGroup cueGroup) {
                k.d(this, cueGroup);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
                k.f(this, deviceInfo);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onDeviceVolumeChanged(int i6, boolean z7) {
                k.g(this, i6, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onEvents(Player player2, Player.Events events) {
                ForwardingSimpleBasePlayer.this.invalidateState();
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onIsLoadingChanged(boolean z7) {
                k.i(this, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onIsPlayingChanged(boolean z7) {
                k.j(this, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onLoadingChanged(boolean z7) {
                k.k(this, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j10) {
                k.l(this, j10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i6) {
                k.m(this, mediaItem, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
                k.n(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onMetadata(Metadata metadata) {
                ForwardingSimpleBasePlayer.this.lastTimedMetadata = metadata;
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayWhenReadyChanged(boolean z7, int i6) {
                ForwardingSimpleBasePlayer.this.playWhenReadyChangeReason = i6;
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
                k.q(this, playbackParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackStateChanged(int i6) {
                k.r(this, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i6) {
                k.s(this, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
                k.t(this, playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
                k.u(this, playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlayerStateChanged(boolean z7, int i6) {
                k.v(this, z7, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
                k.w(this, mediaMetadata);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onPositionDiscontinuity(int i6) {
                k.x(this, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onRenderedFirstFrame() {
                ForwardingSimpleBasePlayer.this.pendingFirstFrameRendered = true;
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onRepeatModeChanged(int i6) {
                k.A(this, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSeekBackIncrementChanged(long j10) {
                k.B(this, j10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSeekForwardIncrementChanged(long j10) {
                k.C(this, j10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z7) {
                k.D(this, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z7) {
                k.E(this, z7);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onSurfaceSizeChanged(int i6, int i10) {
                k.F(this, i6, i10);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i6) {
                k.G(this, timeline, i6);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
                k.H(this, trackSelectionParameters);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onTracksChanged(Tracks tracks) {
                k.I(this, tracks);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
                k.J(this, videoSize);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onVolumeChanged(float f) {
                k.K(this, f);
            }

            @Override // androidx.media3.common.Player.Listener
            public final /* synthetic */ void onCues(List list) {
                k.e(this, list);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
                ForwardingSimpleBasePlayer.this.pendingDiscontinuityReason = i6;
                ForwardingSimpleBasePlayer.this.pendingPositionDiscontinuityNewPositionMs = positionInfo2.positionMs;
                ForwardingSimpleBasePlayer.this.livePositionSuppliers.disconnect(positionInfo.positionMs, positionInfo.contentPositionMs);
                ForwardingSimpleBasePlayer.this.livePositionSuppliers = new LivePositionSuppliers(player);
            }
        });
    }

    public final Player getPlayer() {
        return this.player;
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public SimpleBasePlayer.State getState() {
        SimpleBasePlayer.State.Builder builder = new SimpleBasePlayer.State.Builder();
        LivePositionSuppliers livePositionSuppliers = this.livePositionSuppliers;
        if (this.player.isCommandAvailable(16)) {
            builder.setAdBufferedPositionMs(livePositionSuppliers.bufferedPositionSupplier);
            builder.setAdPositionMs(livePositionSuppliers.currentPositionSupplier);
        }
        if (this.player.isCommandAvailable(21)) {
            builder.setAudioAttributes(this.player.getAudioAttributes());
        }
        builder.setAvailableCommands(this.player.getAvailableCommands());
        if (this.player.isCommandAvailable(16)) {
            builder.setContentBufferedPositionMs(livePositionSuppliers.contentBufferedPositionSupplier);
            builder.setContentPositionMs(livePositionSuppliers.contentPositionSupplier);
            if (this.player.isCommandAvailable(17)) {
                builder.setCurrentAd(this.player.getCurrentAdGroupIndex(), this.player.getCurrentAdIndexInAdGroup());
            }
        }
        if (this.player.isCommandAvailable(28)) {
            builder.setCurrentCues(this.player.getCurrentCues());
        }
        if (this.player.isCommandAvailable(17)) {
            builder.setCurrentMediaItemIndex(this.player.getCurrentMediaItemIndex());
        }
        builder.setDeviceInfo(this.player.getDeviceInfo());
        if (this.player.isCommandAvailable(23)) {
            builder.setDeviceVolume(this.player.getDeviceVolume());
            builder.setIsDeviceMuted(this.player.isDeviceMuted());
        }
        builder.setIsLoading(this.player.isLoading());
        builder.setMaxSeekToPreviousPositionMs(this.player.getMaxSeekToPreviousPosition());
        if (this.pendingFirstFrameRendered) {
            builder.setNewlyRenderedFirstFrame(true);
            this.pendingFirstFrameRendered = false;
        }
        builder.setPlaybackParameters(this.player.getPlaybackParameters());
        builder.setPlaybackState(this.player.getPlaybackState());
        builder.setPlaybackSuppressionReason(this.player.getPlaybackSuppressionReason());
        builder.setPlayerError(this.player.getPlayerError());
        if (this.player.isCommandAvailable(17)) {
            builder.setPlaylist(this.player.getCurrentTimeline(), this.player.isCommandAvailable(30) ? this.player.getCurrentTracks() : Tracks.EMPTY, this.player.isCommandAvailable(18) ? this.player.getMediaMetadata() : null);
        }
        if (this.player.isCommandAvailable(18)) {
            builder.setPlaylistMetadata(this.player.getPlaylistMetadata());
        }
        builder.setPlayWhenReady(this.player.getPlayWhenReady(), this.playWhenReadyChangeReason);
        long j10 = this.pendingPositionDiscontinuityNewPositionMs;
        if (j10 != C.TIME_UNSET) {
            builder.setPositionDiscontinuity(this.pendingDiscontinuityReason, j10);
            this.pendingPositionDiscontinuityNewPositionMs = C.TIME_UNSET;
        }
        builder.setRepeatMode(this.player.getRepeatMode());
        builder.setSeekBackIncrementMs(this.player.getSeekBackIncrement());
        builder.setSeekForwardIncrementMs(this.player.getSeekForwardIncrement());
        builder.setShuffleModeEnabled(this.player.getShuffleModeEnabled());
        builder.setSurfaceSize(this.player.getSurfaceSize());
        builder.setTimedMetadata(this.lastTimedMetadata);
        if (this.player.isCommandAvailable(16)) {
            builder.setTotalBufferedDurationMs(livePositionSuppliers.totalBufferedPositionSupplier);
        }
        builder.setTrackSelectionParameters(this.player.getTrackSelectionParameters());
        builder.setVideoSize(this.player.getVideoSize());
        if (this.player.isCommandAvailable(22)) {
            builder.setVolume(this.player.getVolume());
        }
        return builder.build();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleAddMediaItems(int i6, List<MediaItem> list) {
        if (list.size() == 1) {
            this.player.addMediaItem(i6, list.get(0));
        } else {
            this.player.addMediaItems(i6, list);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleClearVideoOutput(Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.clearVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.clearVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.clearVideoSurfaceHolder((SurfaceHolder) obj);
        } else if (obj instanceof Surface) {
            this.player.clearVideoSurface((Surface) obj);
        } else {
            if (obj != null) {
                throw new IllegalStateException();
            }
            this.player.clearVideoSurface();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleDecreaseDeviceVolume(int i6) {
        if (this.player.isCommandAvailable(34)) {
            this.player.decreaseDeviceVolume(i6);
        } else {
            this.player.decreaseDeviceVolume();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleIncreaseDeviceVolume(int i6) {
        if (this.player.isCommandAvailable(34)) {
            this.player.increaseDeviceVolume(i6);
        } else {
            this.player.increaseDeviceVolume();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleMoveMediaItems(int i6, int i10, int i11) {
        if (i10 == i6 + 1) {
            this.player.moveMediaItem(i6, i11);
        } else {
            this.player.moveMediaItems(i6, i10, i11);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handlePrepare() {
        this.player.prepare();
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleRelease() {
        this.player.release();
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleRemoveMediaItems(int i6, int i10) {
        if (i10 == i6 + 1) {
            this.player.removeMediaItem(i6);
        } else {
            this.player.removeMediaItems(i6, i10);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleReplaceMediaItems(int i6, int i10, List<MediaItem> list) {
        if (i10 == i6 + 1 && list.size() == 1) {
            this.player.replaceMediaItem(i6, list.get(0));
        } else {
            this.player.replaceMediaItems(i6, i10, list);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSeek(int i6, long j10, int i10) {
        switch (i10) {
            case 4:
                this.player.seekToDefaultPosition();
                break;
            case 5:
                this.player.seekTo(j10);
                break;
            case 6:
                this.player.seekToPreviousMediaItem();
                break;
            case 7:
                this.player.seekToPrevious();
                break;
            case 8:
                this.player.seekToNextMediaItem();
                break;
            case 9:
                this.player.seekToNext();
                break;
            case 10:
                if (i6 != -1) {
                    this.player.seekTo(i6, j10);
                    break;
                }
                break;
            case 11:
                this.player.seekBack();
                break;
            case 12:
                this.player.seekForward();
                break;
            default:
                throw new IllegalStateException();
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetAudioAttributes(AudioAttributes audioAttributes, boolean z7) {
        this.player.setAudioAttributes(audioAttributes, z7);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetDeviceMuted(boolean z7, int i6) {
        if (this.player.isCommandAvailable(34)) {
            this.player.setDeviceMuted(z7, i6);
        } else {
            this.player.setDeviceMuted(z7);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetDeviceVolume(int i6, int i10) {
        if (this.player.isCommandAvailable(33)) {
            this.player.setDeviceVolume(i6, i10);
        } else {
            this.player.setDeviceVolume(i6);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetMediaItems(List<MediaItem> list, int i6, long j10) {
        boolean z7 = list.size() == 1 && this.player.isCommandAvailable(31);
        if (i6 == -1) {
            if (z7) {
                this.player.setMediaItem(list.get(0));
            } else {
                this.player.setMediaItems(list);
            }
        } else if (z7) {
            this.player.setMediaItem(list.get(0), j10);
        } else {
            this.player.setMediaItems(list, i6, j10);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetPlayWhenReady(boolean z7) {
        this.player.setPlayWhenReady(z7);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        this.player.setPlaybackParameters(playbackParameters);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        this.player.setPlaylistMetadata(mediaMetadata);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetRepeatMode(int i6) {
        this.player.setRepeatMode(i6);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetShuffleModeEnabled(boolean z7) {
        this.player.setShuffleModeEnabled(z7);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        this.player.setTrackSelectionParameters(trackSelectionParameters);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetVideoOutput(Object obj) {
        if (obj instanceof SurfaceView) {
            this.player.setVideoSurfaceView((SurfaceView) obj);
        } else if (obj instanceof TextureView) {
            this.player.setVideoTextureView((TextureView) obj);
        } else if (obj instanceof SurfaceHolder) {
            this.player.setVideoSurfaceHolder((SurfaceHolder) obj);
        } else {
            if (!(obj instanceof Surface)) {
                throw new IllegalStateException();
            }
            this.player.setVideoSurface((Surface) obj);
        }
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleSetVolume(float f) {
        this.player.setVolume(f);
        return Futures.immediateVoidFuture();
    }

    @Override // androidx.media3.common.SimpleBasePlayer
    public ListenableFuture<?> handleStop() {
        this.player.stop();
        return Futures.immediateVoidFuture();
    }
}
