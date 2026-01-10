package androidx.media3.common.util;

import android.os.Looper;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public interface HandlerWrapper {

    /* compiled from: MyApplication */
    public interface Message {
        HandlerWrapper getTarget();

        void sendToTarget();
    }

    Looper getLooper();

    boolean hasMessages(int i6);

    Message obtainMessage(int i6);

    Message obtainMessage(int i6, int i10, int i11);

    Message obtainMessage(int i6, int i10, int i11, Object obj);

    Message obtainMessage(int i6, Object obj);

    boolean post(Runnable runnable);

    boolean postAtFrontOfQueue(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j10);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i6);

    boolean sendEmptyMessage(int i6);

    boolean sendEmptyMessageAtTime(int i6, long j10);

    boolean sendEmptyMessageDelayed(int i6, int i10);

    boolean sendMessageAtFrontOfQueue(Message message);
}
