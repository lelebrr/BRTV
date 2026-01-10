package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class AudioBecomingNoisyManager {
    private final HandlerWrapper backgroundHandler;
    private final Context context;
    private boolean isEnabled;
    private final AudioBecomingNoisyReceiver receiver;

    /* compiled from: MyApplication */
    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        private final HandlerWrapper eventHandler;
        private final EventListener listener;

        public AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, EventListener eventListener) {
            this.eventHandler = handlerWrapper;
            this.listener = eventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void callListenerIfEnabled() {
            if (AudioBecomingNoisyManager.this.isEnabled) {
                this.listener.onAudioBecomingNoisy();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(new b(0, this));
            }
        }
    }

    /* compiled from: MyApplication */
    public interface EventListener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, EventListener eventListener, Clock clock) {
        this.context = context.getApplicationContext();
        this.backgroundHandler = clock.createHandler(looper, null);
        this.receiver = new AudioBecomingNoisyReceiver(clock.createHandler(looper2, null), eventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$0() {
        this.context.registerReceiver(this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$1() {
        this.context.unregisterReceiver(this.receiver);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public void setEnabled(boolean z7) {
        if (z7 == this.isEnabled) {
            return;
        }
        if (z7) {
            final int i6 = 0;
            this.backgroundHandler.post(new Runnable(this) { // from class: androidx.media3.exoplayer.a

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioBecomingNoisyManager f2119b;

                {
                    this.f2119b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i6) {
                        case 0:
                            this.f2119b.lambda$setEnabled$0();
                            break;
                        default:
                            this.f2119b.lambda$setEnabled$1();
                            break;
                    }
                }
            });
            this.isEnabled = true;
        } else {
            final int i10 = 1;
            this.backgroundHandler.post(new Runnable(this) { // from class: androidx.media3.exoplayer.a

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ AudioBecomingNoisyManager f2119b;

                {
                    this.f2119b = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            this.f2119b.lambda$setEnabled$0();
                            break;
                        default:
                            this.f2119b.lambda$setEnabled$1();
                            break;
                    }
                }
            });
            this.isEnabled = false;
        }
    }
}
