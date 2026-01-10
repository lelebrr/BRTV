package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.StreamVolumeManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class StreamVolumeManager {
    private static final String TAG = "StreamVolumeManager";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private final Context applicationContext;
    private AudioManager audioManager;
    private final Listener listener;
    private VolumeChangeReceiver receiver;
    private final BackgroundThreadStateHandler<StreamVolumeState> stateHandler;
    private int volumeBeforeMute;

    /* compiled from: MyApplication */
    public interface Listener {
        void onStreamTypeChanged(int i6);

        void onStreamVolumeChanged(int i6, boolean z7);
    }

    /* compiled from: MyApplication */
    public static final class StreamVolumeState {
        public final int maxVolume;
        public final int minVolume;
        public final boolean muted;
        public final int streamType;
        public final int volume;

        public StreamVolumeState(int i6, int i10, boolean z7, int i11, int i12) {
            this.streamType = i6;
            this.volume = i10;
            this.muted = z7;
            this.minVolume = i11;
            this.maxVolume = i12;
        }
    }

    /* compiled from: MyApplication */
    public final class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0() {
            if (StreamVolumeManager.this.receiver == null) {
                return;
            }
            StreamVolumeManager.this.stateHandler.setStateInBackground(StreamVolumeManager.this.generateState(((StreamVolumeState) StreamVolumeManager.this.stateHandler.get()).streamType));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.stateHandler.runInBackground(new b(4, this));
        }
    }

    public StreamVolumeManager(Context context, Listener listener, final int i6, Looper looper, Looper looper2, Clock clock) {
        this.applicationContext = context.getApplicationContext();
        this.listener = listener;
        BackgroundThreadStateHandler<StreamVolumeState> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(new StreamVolumeState(i6, 0, false, 0, 0), looper, looper2, clock, new v(10, this));
        this.stateHandler = backgroundThreadStateHandler;
        backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.y0
            @Override // java.lang.Runnable
            public final void run() {
                this.f2475a.lambda$new$0(i6);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StreamVolumeState generateState(int i6) {
        Assertions.checkNotNull(this.audioManager);
        return new StreamVolumeState(i6, AudioManagerCompat.getStreamVolume(this.audioManager, i6), AudioManagerCompat.isStreamMute(this.audioManager, i6), AudioManagerCompat.getStreamMinVolume(this.audioManager, i6), AudioManagerCompat.getStreamMaxVolume(this.audioManager, i6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$decreaseVolume$7(StreamVolumeState streamVolumeState) {
        int i6 = streamVolumeState.streamType;
        int i10 = streamVolumeState.volume;
        int i11 = streamVolumeState.minVolume;
        return new StreamVolumeState(i6, i10 > i11 ? i10 - 1 : i11, i10 <= 1, i11, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$decreaseVolume$8(int i6, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.volume <= streamVolumeState.minVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Assertions.checkNotNull(this.audioManager)).adjustStreamVolume(streamVolumeState.streamType, -1, i6);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$increaseVolume$5(StreamVolumeState streamVolumeState) {
        int i6 = streamVolumeState.streamType;
        int i10 = streamVolumeState.volume;
        int i11 = streamVolumeState.maxVolume;
        return new StreamVolumeState(i6, i10 < i11 ? i10 + 1 : i11, false, streamVolumeState.minVolume, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$increaseVolume$6(int i6, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.volume >= streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Assertions.checkNotNull(this.audioManager)).adjustStreamVolume(streamVolumeState.streamType, 1, i6);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i6) {
        this.audioManager = (AudioManager) Assertions.checkStateNotNull((AudioManager) this.applicationContext.getSystemService("audio"));
        VolumeChangeReceiver volumeChangeReceiver = new VolumeChangeReceiver();
        try {
            this.applicationContext.registerReceiver(volumeChangeReceiver, new IntentFilter(VOLUME_CHANGED_ACTION));
            this.receiver = volumeChangeReceiver;
        } catch (RuntimeException e5) {
            Log.w(TAG, "Error registering stream volume receiver", e5);
        }
        this.stateHandler.setStateInBackground(generateState(i6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$release$12(StreamVolumeState streamVolumeState) {
        VolumeChangeReceiver volumeChangeReceiver = this.receiver;
        if (volumeChangeReceiver != null) {
            try {
                this.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (RuntimeException e5) {
                Log.w(TAG, "Error unregistering stream volume receiver", e5);
            }
            this.receiver = null;
        }
        return streamVolumeState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setMuted$10(boolean z7, int i6, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.muted == z7) {
            return streamVolumeState;
        }
        Assertions.checkNotNull(this.audioManager);
        if (Util.SDK_INT >= 23) {
            this.audioManager.adjustStreamVolume(streamVolumeState.streamType, z7 ? -100 : 100, i6);
        } else {
            this.audioManager.setStreamMute(streamVolumeState.streamType, z7);
        }
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setMuted$9(boolean z7, StreamVolumeState streamVolumeState) {
        int i6;
        int i10;
        int i11 = streamVolumeState.streamType;
        if (streamVolumeState.muted == z7) {
            i6 = streamVolumeState.volume;
        } else {
            if (z7) {
                i10 = 0;
                return new StreamVolumeState(i11, i10, z7, streamVolumeState.minVolume, streamVolumeState.maxVolume);
            }
            i6 = this.volumeBeforeMute;
        }
        i10 = i6;
        return new StreamVolumeState(i11, i10, z7, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$setStreamType$1(int i6, StreamVolumeState streamVolumeState) {
        return new StreamVolumeState(i6, streamVolumeState.volume, streamVolumeState.muted, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setStreamType$2(int i6, StreamVolumeState streamVolumeState) {
        return streamVolumeState.streamType == i6 ? streamVolumeState : generateState(i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$setVolume$3(int i6, StreamVolumeState streamVolumeState) {
        int i10 = streamVolumeState.streamType;
        int i11 = streamVolumeState.minVolume;
        return new StreamVolumeState(i10, (i6 < i11 || i6 > streamVolumeState.maxVolume) ? streamVolumeState.volume : i6, i6 == 0, i11, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setVolume$4(int i6, int i10, StreamVolumeState streamVolumeState) {
        if (i6 == streamVolumeState.volume || i6 < streamVolumeState.minVolume || i6 > streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Assertions.checkNotNull(this.audioManager)).setStreamVolume(streamVolumeState.streamType, i6, i10);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStreamVolumeStateChanged(StreamVolumeState streamVolumeState, StreamVolumeState streamVolumeState2) {
        boolean z7 = streamVolumeState.muted;
        if (!z7 && streamVolumeState2.muted) {
            this.volumeBeforeMute = streamVolumeState.volume;
        }
        int i6 = streamVolumeState.volume;
        int i10 = streamVolumeState2.volume;
        if (i6 != i10 || z7 != streamVolumeState2.muted) {
            this.listener.onStreamVolumeChanged(i10, streamVolumeState2.muted);
        }
        int i11 = streamVolumeState.streamType;
        int i12 = streamVolumeState2.streamType;
        if (i11 == i12 && streamVolumeState.minVolume == streamVolumeState2.minVolume && streamVolumeState.maxVolume == streamVolumeState2.maxVolume) {
            return;
        }
        this.listener.onStreamTypeChanged(i12);
    }

    @SuppressLint({"WrongConstant"})
    public void decreaseVolume(int i6) {
        this.stateHandler.updateStateAsync(new w0(2), new x0(i6, 1, this));
    }

    public int getMaxVolume() {
        return this.stateHandler.get().maxVolume;
    }

    public int getMinVolume() {
        return this.stateHandler.get().minVolume;
    }

    public int getVolume() {
        return this.stateHandler.get().volume;
    }

    @SuppressLint({"WrongConstant"})
    public void increaseVolume(int i6) {
        this.stateHandler.updateStateAsync(new w0(1), new x0(i6, 0, this));
    }

    public boolean isMuted() {
        return this.stateHandler.get().muted;
    }

    public void release() {
        this.stateHandler.updateStateAsync(new w0(0), new n(2, this));
    }

    @SuppressLint({"WrongConstant"})
    public void setMuted(final boolean z7, final int i6) {
        this.stateHandler.updateStateAsync(new b7.i() { // from class: androidx.media3.exoplayer.a1
            @Override // b7.i
            public final Object apply(Object obj) {
                return this.f2122a.lambda$setMuted$9(z7, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new b7.i() { // from class: androidx.media3.exoplayer.b1
            @Override // b7.i
            public final Object apply(Object obj) {
                return this.f2225a.lambda$setMuted$10(z7, i6, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public void setStreamType(int i6) {
        this.stateHandler.updateStateAsync(new a0(i6, 2), new x0(i6, 2, this));
    }

    @SuppressLint({"WrongConstant"})
    public void setVolume(final int i6, final int i10) {
        this.stateHandler.updateStateAsync(new a0(i6, 1), new b7.i() { // from class: androidx.media3.exoplayer.z0
            @Override // b7.i
            public final Object apply(Object obj) {
                return this.f2479a.lambda$setVolume$4(i6, i10, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$release$11(StreamVolumeState streamVolumeState) {
        return streamVolumeState;
    }
}
