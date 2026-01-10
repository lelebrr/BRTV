package androidx.media3.ui;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.app.k0;
import androidx.core.app.t0;
import androidx.core.app.v0;
import androidx.core.app.y0;
import androidx.core.app.z0;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
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
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.NotificationUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class PlayerNotificationManager {
    private static final String ACTION_DISMISS = "androidx.media3.ui.notification.dismiss";
    public static final String ACTION_FAST_FORWARD = "androidx.media3.ui.notification.ffwd";
    public static final String ACTION_NEXT = "androidx.media3.ui.notification.next";
    public static final String ACTION_PAUSE = "androidx.media3.ui.notification.pause";
    public static final String ACTION_PLAY = "androidx.media3.ui.notification.play";
    public static final String ACTION_PREVIOUS = "androidx.media3.ui.notification.prev";
    public static final String ACTION_REWIND = "androidx.media3.ui.notification.rewind";
    public static final String ACTION_STOP = "androidx.media3.ui.notification.stop";
    public static final String EXTRA_INSTANCE_ID = "INSTANCE_ID";
    private static final int MSG_START_OR_UPDATE_NOTIFICATION = 1;
    private static final int MSG_UPDATE_NOTIFICATION_BITMAP = 2;
    private static int instanceIdCounter;
    private int badgeIconType;
    private androidx.core.app.u builder;
    private List<androidx.core.app.p> builderActions;
    private final String channelId;
    private int color;
    private boolean colorized;
    private final Context context;
    private int currentNotificationTag;
    private final CustomActionReceiver customActionReceiver;
    private final Map<String, androidx.core.app.p> customActions;
    private int defaults;
    private final PendingIntent dismissPendingIntent;
    private String groupKey;
    private final int instanceId;
    private final IntentFilter intentFilter;
    private boolean isNotificationStarted;
    private final Handler mainHandler;
    private final MediaDescriptionAdapter mediaDescriptionAdapter;
    private MediaSession.Token mediaSessionToken;
    private final NotificationBroadcastReceiver notificationBroadcastReceiver;
    private final int notificationId;
    private final NotificationListener notificationListener;
    private final z0 notificationManager;
    private final Map<String, androidx.core.app.p> playbackActions;
    private Player player;
    private final Player.Listener playerListener;
    private int priority;
    private boolean showPlayButtonIfSuppressed;
    private int smallIconResourceId;
    private boolean useChronometer;
    private boolean useFastForwardAction;
    private boolean useFastForwardActionInCompactView;
    private boolean useNextAction;
    private boolean useNextActionInCompactView;
    private boolean usePlayPauseActions;
    private boolean usePreviousAction;
    private boolean usePreviousActionInCompactView;
    private boolean useRewindAction;
    private boolean useRewindActionInCompactView;
    private boolean useStopAction;
    private int visibility;

    /* compiled from: MyApplication */
    public final class BitmapCallback {
        private final int notificationTag;

        public void onBitmap(Bitmap bitmap) {
            if (bitmap != null) {
                PlayerNotificationManager.this.postUpdateNotificationBitmap(bitmap, this.notificationTag);
            }
        }

        private BitmapCallback(int i6) {
            this.notificationTag = i6;
        }
    }

    /* compiled from: MyApplication */
    public interface CustomActionReceiver {
        Map<String, androidx.core.app.p> createCustomActions(Context context, int i6);

        List<String> getCustomActions(Player player);

        void onCustomAction(Player player, String str, Intent intent);
    }

    /* compiled from: MyApplication */
    public interface MediaDescriptionAdapter {
        PendingIntent createCurrentContentIntent(Player player);

        CharSequence getCurrentContentText(Player player);

        CharSequence getCurrentContentTitle(Player player);

        Bitmap getCurrentLargeIcon(Player player, BitmapCallback bitmapCallback);

        CharSequence getCurrentSubText(Player player);
    }

    /* compiled from: MyApplication */
    public static final class MediaStyle extends k0 {
        private final int[] actionsToShowInCompact;
        private final MediaSession.Token token;

        public MediaStyle(MediaSession.Token token, int[] iArr) {
            this.token = token;
            this.actionsToShowInCompact = iArr;
        }

        @Override // androidx.core.app.k0
        public void apply(androidx.core.app.n nVar) {
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            mediaStyle.setShowActionsInCompactView(this.actionsToShowInCompact);
            MediaSession.Token token = this.token;
            if (token != null) {
                mediaStyle.setMediaSession(token);
            }
            ((t0) nVar).f1204b.setStyle(mediaStyle);
        }
    }

    /* compiled from: MyApplication */
    public class NotificationBroadcastReceiver extends BroadcastReceiver {
        private NotificationBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Player player = PlayerNotificationManager.this.player;
            if (player != null && PlayerNotificationManager.this.isNotificationStarted && intent.getIntExtra(PlayerNotificationManager.EXTRA_INSTANCE_ID, PlayerNotificationManager.this.instanceId) == PlayerNotificationManager.this.instanceId) {
                String action = intent.getAction();
                if (PlayerNotificationManager.ACTION_PLAY.equals(action)) {
                    Util.handlePlayButtonAction(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PAUSE.equals(action)) {
                    Util.handlePauseButtonAction(player);
                    return;
                }
                if (PlayerNotificationManager.ACTION_PREVIOUS.equals(action)) {
                    if (player.isCommandAvailable(7)) {
                        player.seekToPrevious();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_REWIND.equals(action)) {
                    if (player.isCommandAvailable(11)) {
                        player.seekBack();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_FAST_FORWARD.equals(action)) {
                    if (player.isCommandAvailable(12)) {
                        player.seekForward();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_NEXT.equals(action)) {
                    if (player.isCommandAvailable(9)) {
                        player.seekToNext();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_STOP.equals(action)) {
                    if (player.isCommandAvailable(3)) {
                        player.stop();
                    }
                    if (player.isCommandAvailable(20)) {
                        player.clearMediaItems();
                        return;
                    }
                    return;
                }
                if (PlayerNotificationManager.ACTION_DISMISS.equals(action)) {
                    PlayerNotificationManager.this.stopNotification(true);
                } else {
                    if (action == null || PlayerNotificationManager.this.customActionReceiver == null || !PlayerNotificationManager.this.customActions.containsKey(action)) {
                        return;
                    }
                    PlayerNotificationManager.this.customActionReceiver.onCustomAction(player, action, intent);
                }
            }
        }
    }

    /* compiled from: MyApplication */
    public interface NotificationListener {
        void onNotificationCancelled(int i6, boolean z7);

        void onNotificationPosted(int i6, Notification notification, boolean z7);
    }

    /* compiled from: MyApplication */
    public class PlayerListener implements Player.Listener {
        private PlayerListener() {
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
        public void onEvents(Player player, Player.Events events) {
            if (events.containsAny(4, 5, 7, 0, 12, 11, 8, 9, 14)) {
                PlayerNotificationManager.this.postStartOrUpdateNotification();
            }
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
        public final /* synthetic */ void onMetadata(Metadata metadata) {
            androidx.media3.common.k.o(this, metadata);
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
        public final /* synthetic */ void onPlaybackStateChanged(int i6) {
            androidx.media3.common.k.r(this, i6);
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
        public final /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i6) {
            androidx.media3.common.k.y(this, positionInfo, positionInfo2, i6);
        }
    }

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Priority {
    }

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Visibility {
    }

    public PlayerNotificationManager(Context context, String str, int i6, MediaDescriptionAdapter mediaDescriptionAdapter, NotificationListener notificationListener, CustomActionReceiver customActionReceiver, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.channelId = str;
        this.notificationId = i6;
        this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        this.notificationListener = notificationListener;
        this.customActionReceiver = customActionReceiver;
        this.smallIconResourceId = i10;
        this.groupKey = str2;
        int i18 = instanceIdCounter;
        instanceIdCounter = i18 + 1;
        this.instanceId = i18;
        this.mainHandler = Util.createHandler(Looper.getMainLooper(), new Handler.Callback() { // from class: androidx.media3.ui.i
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f2507a.handleMessage(message);
            }
        });
        this.notificationManager = new z0(applicationContext);
        this.playerListener = new PlayerListener();
        this.notificationBroadcastReceiver = new NotificationBroadcastReceiver();
        this.intentFilter = new IntentFilter();
        this.usePreviousAction = true;
        this.useNextAction = true;
        this.usePlayPauseActions = true;
        this.showPlayButtonIfSuppressed = true;
        this.useRewindAction = true;
        this.useFastForwardAction = true;
        this.colorized = true;
        this.useChronometer = true;
        this.color = 0;
        this.defaults = 0;
        this.priority = -1;
        this.badgeIconType = 1;
        this.visibility = 1;
        Map<String, androidx.core.app.p> mapCreatePlaybackActions = createPlaybackActions(applicationContext, i18, i11, i12, i13, i14, i15, i16, i17);
        this.playbackActions = mapCreatePlaybackActions;
        Iterator<String> it = mapCreatePlaybackActions.keySet().iterator();
        while (it.hasNext()) {
            this.intentFilter.addAction(it.next());
        }
        Map<String, androidx.core.app.p> mapCreateCustomActions = customActionReceiver != null ? customActionReceiver.createCustomActions(applicationContext, this.instanceId) : Collections.emptyMap();
        this.customActions = mapCreateCustomActions;
        Iterator<String> it2 = mapCreateCustomActions.keySet().iterator();
        while (it2.hasNext()) {
            this.intentFilter.addAction(it2.next());
        }
        this.dismissPendingIntent = createBroadcastIntent(ACTION_DISMISS, applicationContext, this.instanceId);
        this.intentFilter.addAction(ACTION_DISMISS);
    }

    private static PendingIntent createBroadcastIntent(String str, Context context, int i6) {
        Intent intent = new Intent(str).setPackage(context.getPackageName());
        intent.putExtra(EXTRA_INSTANCE_ID, i6);
        return PendingIntent.getBroadcast(context, i6, intent, Util.SDK_INT >= 23 ? 201326592 : C.BUFFER_FLAG_FIRST_SAMPLE);
    }

    private static Map<String, androidx.core.app.p> createPlaybackActions(Context context, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        HashMap map = new HashMap();
        map.put(ACTION_PLAY, new androidx.core.app.p(i10, context.getString(R.string.exo_controls_play_description), createBroadcastIntent(ACTION_PLAY, context, i6)));
        map.put(ACTION_PAUSE, new androidx.core.app.p(i11, context.getString(R.string.exo_controls_pause_description), createBroadcastIntent(ACTION_PAUSE, context, i6)));
        map.put(ACTION_STOP, new androidx.core.app.p(i12, context.getString(R.string.exo_controls_stop_description), createBroadcastIntent(ACTION_STOP, context, i6)));
        map.put(ACTION_REWIND, new androidx.core.app.p(i13, context.getString(R.string.exo_controls_rewind_description), createBroadcastIntent(ACTION_REWIND, context, i6)));
        map.put(ACTION_FAST_FORWARD, new androidx.core.app.p(i14, context.getString(R.string.exo_controls_fastforward_description), createBroadcastIntent(ACTION_FAST_FORWARD, context, i6)));
        map.put(ACTION_PREVIOUS, new androidx.core.app.p(i15, context.getString(R.string.exo_controls_previous_description), createBroadcastIntent(ACTION_PREVIOUS, context, i6)));
        map.put(ACTION_NEXT, new androidx.core.app.p(i16, context.getString(R.string.exo_controls_next_description), createBroadcastIntent(ACTION_NEXT, context, i6)));
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) throws Resources.NotFoundException {
        int i6 = message.what;
        if (i6 == 1) {
            Player player = this.player;
            if (player != null) {
                startOrUpdateNotification(player, null);
            }
        } else {
            if (i6 != 2) {
                return false;
            }
            Player player2 = this.player;
            if (player2 != null && this.isNotificationStarted && this.currentNotificationTag == message.arg1) {
                startOrUpdateNotification(player2, (Bitmap) message.obj);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postStartOrUpdateNotification() {
        if (this.mainHandler.hasMessages(1)) {
            return;
        }
        this.mainHandler.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUpdateNotificationBitmap(Bitmap bitmap, int i6) {
        this.mainHandler.obtainMessage(2, i6, -1, bitmap).sendToTarget();
    }

    private static void setLargeIcon(androidx.core.app.u uVar, Bitmap bitmap) throws Resources.NotFoundException {
        uVar.d(bitmap);
    }

    @SuppressLint({"MissingPermission"})
    private void startOrUpdateNotification(Player player, Bitmap bitmap) throws Resources.NotFoundException {
        boolean ongoing = getOngoing(player);
        androidx.core.app.u uVarCreateNotification = createNotification(player, this.builder, ongoing, bitmap);
        this.builder = uVarCreateNotification;
        if (uVarCreateNotification == null) {
            stopNotification(false);
            return;
        }
        Notification notificationA = uVarCreateNotification.a();
        z0 z0Var = this.notificationManager;
        int i6 = this.notificationId;
        z0Var.getClass();
        Bundle bundle = notificationA.extras;
        NotificationManager notificationManager = z0Var.f1246b;
        if (bundle == null || !bundle.getBoolean("android.support.useSideChannel")) {
            notificationManager.notify(null, i6, notificationA);
        } else {
            v0 v0Var = new v0(z0Var.f1245a.getPackageName(), i6, notificationA);
            synchronized (z0.f) {
                try {
                    if (z0.f1244g == null) {
                        z0.f1244g = new y0(z0Var.f1245a.getApplicationContext());
                    }
                    z0.f1244g.f1240b.obtainMessage(0, v0Var).sendToTarget();
                } catch (Throwable th) {
                    throw th;
                }
            }
            notificationManager.cancel(null, i6);
        }
        if (!this.isNotificationStarted) {
            Util.registerReceiverNotExported(this.context, this.notificationBroadcastReceiver, this.intentFilter);
        }
        NotificationListener notificationListener = this.notificationListener;
        if (notificationListener != null) {
            notificationListener.onNotificationPosted(this.notificationId, notificationA, ongoing || !this.isNotificationStarted);
        }
        this.isNotificationStarted = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopNotification(boolean z7) {
        if (this.isNotificationStarted) {
            this.isNotificationStarted = false;
            this.mainHandler.removeMessages(1);
            z0 z0Var = this.notificationManager;
            z0Var.f1246b.cancel(null, this.notificationId);
            this.context.unregisterReceiver(this.notificationBroadcastReceiver);
            NotificationListener notificationListener = this.notificationListener;
            if (notificationListener != null) {
                notificationListener.onNotificationCancelled(this.notificationId, z7);
            }
        }
    }

    public androidx.core.app.u createNotification(Player player, androidx.core.app.u uVar, boolean z7, Bitmap bitmap) throws Resources.NotFoundException {
        if (player.getPlaybackState() == 1 && player.isCommandAvailable(17) && player.getCurrentTimeline().isEmpty()) {
            this.builderActions = null;
            return null;
        }
        List<String> actions = getActions(player);
        ArrayList arrayList = new ArrayList(actions.size());
        for (int i6 = 0; i6 < actions.size(); i6++) {
            String str = actions.get(i6);
            androidx.core.app.p pVar = this.playbackActions.containsKey(str) ? this.playbackActions.get(str) : this.customActions.get(str);
            if (pVar != null) {
                arrayList.add(pVar);
            }
        }
        if (uVar == null || !arrayList.equals(this.builderActions)) {
            uVar = new androidx.core.app.u(this.context, this.channelId);
            this.builderActions = arrayList;
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                androidx.core.app.p pVar2 = (androidx.core.app.p) arrayList.get(i10);
                if (pVar2 != null) {
                    uVar.f1207b.add(pVar2);
                }
            }
        }
        uVar.e(new MediaStyle(this.mediaSessionToken, getActionIndicesForCompactView(actions, player)));
        PendingIntent pendingIntent = this.dismissPendingIntent;
        Notification notification = uVar.B;
        notification.deleteIntent = pendingIntent;
        uVar.f1228y = this.badgeIconType;
        uVar.c(2, z7);
        uVar.f1225v = this.color;
        uVar.f1222s = this.colorized;
        uVar.f1223t = true;
        notification.icon = this.smallIconResourceId;
        uVar.f1226w = this.visibility;
        uVar.f1212i = this.priority;
        int i11 = this.defaults;
        notification.defaults = i11;
        if ((i11 & 4) != 0) {
            notification.flags |= 1;
        }
        if (this.useChronometer && player.isCommandAvailable(16) && player.isPlaying() && !player.isPlayingAd() && !player.isCurrentMediaItemDynamic() && player.getPlaybackParameters().speed == 1.0f) {
            notification.when = System.currentTimeMillis() - player.getContentPosition();
            uVar.f1213j = true;
            uVar.f1214k = true;
        } else {
            uVar.f1213j = false;
            uVar.f1214k = false;
        }
        uVar.f1209e = androidx.core.app.u.b(this.mediaDescriptionAdapter.getCurrentContentTitle(player));
        uVar.f = androidx.core.app.u.b(this.mediaDescriptionAdapter.getCurrentContentText(player));
        uVar.f1216m = androidx.core.app.u.b(this.mediaDescriptionAdapter.getCurrentSubText(player));
        if (bitmap == null) {
            MediaDescriptionAdapter mediaDescriptionAdapter = this.mediaDescriptionAdapter;
            int i12 = this.currentNotificationTag + 1;
            this.currentNotificationTag = i12;
            bitmap = mediaDescriptionAdapter.getCurrentLargeIcon(player, new BitmapCallback(i12));
        }
        setLargeIcon(uVar, bitmap);
        uVar.f1210g = this.mediaDescriptionAdapter.createCurrentContentIntent(player);
        String str2 = this.groupKey;
        if (str2 != null) {
            uVar.f1220q = str2;
        }
        uVar.c(8, true);
        return uVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int[] getActionIndicesForCompactView(java.util.List<java.lang.String> r7, androidx.media3.common.Player r8) {
        /*
            r6 = this;
            java.lang.String r0 = "androidx.media3.ui.notification.pause"
            int r0 = r7.indexOf(r0)
            java.lang.String r1 = "androidx.media3.ui.notification.play"
            int r1 = r7.indexOf(r1)
            boolean r2 = r6.usePreviousActionInCompactView
            r3 = -1
            if (r2 == 0) goto L18
            java.lang.String r2 = "androidx.media3.ui.notification.prev"
            int r2 = r7.indexOf(r2)
            goto L24
        L18:
            boolean r2 = r6.useRewindActionInCompactView
            if (r2 == 0) goto L23
            java.lang.String r2 = "androidx.media3.ui.notification.rewind"
            int r2 = r7.indexOf(r2)
            goto L24
        L23:
            r2 = -1
        L24:
            boolean r4 = r6.useNextActionInCompactView
            if (r4 == 0) goto L2f
            java.lang.String r4 = "androidx.media3.ui.notification.next"
            int r7 = r7.indexOf(r4)
            goto L3b
        L2f:
            boolean r4 = r6.useFastForwardActionInCompactView
            if (r4 == 0) goto L3a
            java.lang.String r4 = "androidx.media3.ui.notification.ffwd"
            int r7 = r7.indexOf(r4)
            goto L3b
        L3a:
            r7 = -1
        L3b:
            r4 = 3
            int[] r4 = new int[r4]
            r5 = 0
            if (r2 == r3) goto L44
            r4[r5] = r2
            r5 = 1
        L44:
            boolean r2 = r6.showPlayButtonIfSuppressed
            boolean r8 = androidx.media3.common.util.Util.shouldShowPlayButton(r8, r2)
            if (r0 == r3) goto L54
            if (r8 != 0) goto L54
            int r8 = r5 + 1
            r4[r5] = r0
        L52:
            r5 = r8
            goto L5d
        L54:
            if (r1 == r3) goto L5d
            if (r8 == 0) goto L5d
            int r8 = r5 + 1
            r4[r5] = r1
            goto L52
        L5d:
            if (r7 == r3) goto L64
            int r8 = r5 + 1
            r4[r5] = r7
            r5 = r8
        L64:
            int[] r7 = java.util.Arrays.copyOf(r4, r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.ui.PlayerNotificationManager.getActionIndicesForCompactView(java.util.List, androidx.media3.common.Player):int[]");
    }

    public List<String> getActions(Player player) {
        boolean zIsCommandAvailable = player.isCommandAvailable(7);
        boolean zIsCommandAvailable2 = player.isCommandAvailable(11);
        boolean zIsCommandAvailable3 = player.isCommandAvailable(12);
        boolean zIsCommandAvailable4 = player.isCommandAvailable(9);
        ArrayList arrayList = new ArrayList();
        if (this.usePreviousAction && zIsCommandAvailable) {
            arrayList.add(ACTION_PREVIOUS);
        }
        if (this.useRewindAction && zIsCommandAvailable2) {
            arrayList.add(ACTION_REWIND);
        }
        if (this.usePlayPauseActions) {
            if (Util.shouldShowPlayButton(player, this.showPlayButtonIfSuppressed)) {
                arrayList.add(ACTION_PLAY);
            } else {
                arrayList.add(ACTION_PAUSE);
            }
        }
        if (this.useFastForwardAction && zIsCommandAvailable3) {
            arrayList.add(ACTION_FAST_FORWARD);
        }
        if (this.useNextAction && zIsCommandAvailable4) {
            arrayList.add(ACTION_NEXT);
        }
        CustomActionReceiver customActionReceiver = this.customActionReceiver;
        if (customActionReceiver != null) {
            arrayList.addAll(customActionReceiver.getCustomActions(player));
        }
        if (this.useStopAction) {
            arrayList.add(ACTION_STOP);
        }
        return arrayList;
    }

    public boolean getOngoing(Player player) {
        int playbackState = player.getPlaybackState();
        return (playbackState == 2 || playbackState == 3) && player.getPlayWhenReady();
    }

    public final void invalidate() {
        if (this.isNotificationStarted) {
            postStartOrUpdateNotification();
        }
    }

    public final void setBadgeIconType(int i6) {
        if (this.badgeIconType == i6) {
            return;
        }
        if (i6 != 0 && i6 != 1 && i6 != 2) {
            throw new IllegalArgumentException();
        }
        this.badgeIconType = i6;
        invalidate();
    }

    public final void setColor(int i6) {
        if (this.color != i6) {
            this.color = i6;
            invalidate();
        }
    }

    public final void setColorized(boolean z7) {
        if (this.colorized != z7) {
            this.colorized = z7;
            invalidate();
        }
    }

    public final void setDefaults(int i6) {
        if (this.defaults != i6) {
            this.defaults = i6;
            invalidate();
        }
    }

    public final void setMediaSessionToken(MediaSession.Token token) {
        if (Objects.equals(this.mediaSessionToken, token)) {
            return;
        }
        this.mediaSessionToken = token;
        invalidate();
    }

    public final void setPlayer(Player player) {
        boolean z7 = true;
        Assertions.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (player != null && player.getApplicationLooper() != Looper.getMainLooper()) {
            z7 = false;
        }
        Assertions.checkArgument(z7);
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.playerListener);
            if (player == null) {
                stopNotification(false);
            }
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.playerListener);
            postStartOrUpdateNotification();
        }
    }

    public final void setPriority(int i6) {
        if (this.priority == i6) {
            return;
        }
        if (i6 != -2 && i6 != -1 && i6 != 0 && i6 != 1 && i6 != 2) {
            throw new IllegalArgumentException();
        }
        this.priority = i6;
        invalidate();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z7) {
        if (this.showPlayButtonIfSuppressed != z7) {
            this.showPlayButtonIfSuppressed = z7;
            invalidate();
        }
    }

    public final void setSmallIcon(int i6) {
        if (this.smallIconResourceId != i6) {
            this.smallIconResourceId = i6;
            invalidate();
        }
    }

    public final void setUseChronometer(boolean z7) {
        if (this.useChronometer != z7) {
            this.useChronometer = z7;
            invalidate();
        }
    }

    public final void setUseFastForwardAction(boolean z7) {
        if (this.useFastForwardAction != z7) {
            this.useFastForwardAction = z7;
            invalidate();
        }
    }

    public final void setUseFastForwardActionInCompactView(boolean z7) {
        if (this.useFastForwardActionInCompactView != z7) {
            this.useFastForwardActionInCompactView = z7;
            if (z7) {
                this.useNextActionInCompactView = false;
            }
            invalidate();
        }
    }

    public final void setUseNextAction(boolean z7) {
        if (this.useNextAction != z7) {
            this.useNextAction = z7;
            invalidate();
        }
    }

    public final void setUseNextActionInCompactView(boolean z7) {
        if (this.useNextActionInCompactView != z7) {
            this.useNextActionInCompactView = z7;
            if (z7) {
                this.useFastForwardActionInCompactView = false;
            }
            invalidate();
        }
    }

    public final void setUsePlayPauseActions(boolean z7) {
        if (this.usePlayPauseActions != z7) {
            this.usePlayPauseActions = z7;
            invalidate();
        }
    }

    public final void setUsePreviousAction(boolean z7) {
        if (this.usePreviousAction != z7) {
            this.usePreviousAction = z7;
            invalidate();
        }
    }

    public final void setUsePreviousActionInCompactView(boolean z7) {
        if (this.usePreviousActionInCompactView != z7) {
            this.usePreviousActionInCompactView = z7;
            if (z7) {
                this.useRewindActionInCompactView = false;
            }
            invalidate();
        }
    }

    public final void setUseRewindAction(boolean z7) {
        if (this.useRewindAction != z7) {
            this.useRewindAction = z7;
            invalidate();
        }
    }

    public final void setUseRewindActionInCompactView(boolean z7) {
        if (this.useRewindActionInCompactView != z7) {
            this.useRewindActionInCompactView = z7;
            if (z7) {
                this.usePreviousActionInCompactView = false;
            }
            invalidate();
        }
    }

    public final void setUseStopAction(boolean z7) {
        if (this.useStopAction == z7) {
            return;
        }
        this.useStopAction = z7;
        invalidate();
    }

    public final void setVisibility(int i6) {
        if (this.visibility == i6) {
            return;
        }
        if (i6 != -1 && i6 != 0 && i6 != 1) {
            throw new IllegalStateException();
        }
        this.visibility = i6;
        invalidate();
    }

    /* compiled from: MyApplication */
    public static class Builder {
        protected int channelDescriptionResourceId;
        protected final String channelId;
        protected int channelImportance;
        protected int channelNameResourceId;
        protected final Context context;
        protected CustomActionReceiver customActionReceiver;
        protected int fastForwardActionIconResourceId;
        protected String groupKey;
        protected MediaDescriptionAdapter mediaDescriptionAdapter;
        protected int nextActionIconResourceId;
        protected final int notificationId;
        protected NotificationListener notificationListener;
        protected int pauseActionIconResourceId;
        protected int playActionIconResourceId;
        protected int previousActionIconResourceId;
        protected int rewindActionIconResourceId;
        protected int smallIconResourceId;
        protected int stopActionIconResourceId;

        @Deprecated
        public Builder(Context context, int i6, String str, MediaDescriptionAdapter mediaDescriptionAdapter) {
            this(context, i6, str);
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
        }

        public PlayerNotificationManager build() {
            int i6 = this.channelNameResourceId;
            if (i6 != 0) {
                NotificationUtil.createNotificationChannel(this.context, this.channelId, i6, this.channelDescriptionResourceId, this.channelImportance);
            }
            return new PlayerNotificationManager(this.context, this.channelId, this.notificationId, this.mediaDescriptionAdapter, this.notificationListener, this.customActionReceiver, this.smallIconResourceId, this.playActionIconResourceId, this.pauseActionIconResourceId, this.stopActionIconResourceId, this.rewindActionIconResourceId, this.fastForwardActionIconResourceId, this.previousActionIconResourceId, this.nextActionIconResourceId, this.groupKey);
        }

        public Builder setChannelDescriptionResourceId(int i6) {
            this.channelDescriptionResourceId = i6;
            return this;
        }

        public Builder setChannelImportance(int i6) {
            this.channelImportance = i6;
            return this;
        }

        public Builder setChannelNameResourceId(int i6) {
            this.channelNameResourceId = i6;
            return this;
        }

        public Builder setCustomActionReceiver(CustomActionReceiver customActionReceiver) {
            this.customActionReceiver = customActionReceiver;
            return this;
        }

        public Builder setFastForwardActionIconResourceId(int i6) {
            this.fastForwardActionIconResourceId = i6;
            return this;
        }

        public Builder setGroup(String str) {
            this.groupKey = str;
            return this;
        }

        public Builder setMediaDescriptionAdapter(MediaDescriptionAdapter mediaDescriptionAdapter) {
            this.mediaDescriptionAdapter = mediaDescriptionAdapter;
            return this;
        }

        public Builder setNextActionIconResourceId(int i6) {
            this.nextActionIconResourceId = i6;
            return this;
        }

        public Builder setNotificationListener(NotificationListener notificationListener) {
            this.notificationListener = notificationListener;
            return this;
        }

        public Builder setPauseActionIconResourceId(int i6) {
            this.pauseActionIconResourceId = i6;
            return this;
        }

        public Builder setPlayActionIconResourceId(int i6) {
            this.playActionIconResourceId = i6;
            return this;
        }

        public Builder setPreviousActionIconResourceId(int i6) {
            this.previousActionIconResourceId = i6;
            return this;
        }

        public Builder setRewindActionIconResourceId(int i6) {
            this.rewindActionIconResourceId = i6;
            return this;
        }

        public Builder setSmallIconResourceId(int i6) {
            this.smallIconResourceId = i6;
            return this;
        }

        public Builder setStopActionIconResourceId(int i6) {
            this.stopActionIconResourceId = i6;
            return this;
        }

        public Builder(Context context, int i6, String str) {
            Assertions.checkArgument(i6 > 0);
            this.context = context;
            this.notificationId = i6;
            this.channelId = str;
            this.channelImportance = 2;
            this.mediaDescriptionAdapter = new DefaultMediaDescriptionAdapter(null);
            this.smallIconResourceId = R.drawable.exo_notification_small_icon;
            this.playActionIconResourceId = R.drawable.exo_notification_play;
            this.pauseActionIconResourceId = R.drawable.exo_notification_pause;
            this.stopActionIconResourceId = R.drawable.exo_notification_stop;
            this.rewindActionIconResourceId = R.drawable.exo_notification_rewind;
            this.fastForwardActionIconResourceId = R.drawable.exo_notification_fastforward;
            this.previousActionIconResourceId = R.drawable.exo_notification_previous;
            this.nextActionIconResourceId = R.drawable.exo_notification_next;
        }
    }
}
