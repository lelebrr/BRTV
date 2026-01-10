package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class PriorityTaskManager {
    private final Object lock = new Object();
    private final PriorityQueue<Integer> queue = new PriorityQueue<>(10, Collections.reverseOrder());
    private int highestPriority = Integer.MIN_VALUE;

    /* compiled from: MyApplication */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i6, int i10) {
            super("Priority too low [priority=" + i6 + ", highest=" + i10 + "]");
        }
    }

    public void add(int i6) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i6));
            this.highestPriority = Math.max(this.highestPriority, i6);
        }
    }

    public void proceed(int i6) throws InterruptedException {
        synchronized (this.lock) {
            while (this.highestPriority != i6) {
                try {
                    this.lock.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean proceedNonBlocking(int i6) {
        boolean z7;
        synchronized (this.lock) {
            z7 = this.highestPriority == i6;
        }
        return z7;
    }

    public void proceedOrThrow(int i6) throws PriorityTooLowException {
        synchronized (this.lock) {
            try {
                if (this.highestPriority != i6) {
                    throw new PriorityTooLowException(i6, this.highestPriority);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void remove(int i6) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i6));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : ((Integer) Util.castNonNull(this.queue.peek())).intValue();
            this.lock.notifyAll();
        }
    }
}
