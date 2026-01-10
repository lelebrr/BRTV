package okhttp3.internal.concurrent;

import a.e;
import androidx.media3.common.PlaybackException;
import i9.a;
import j9.i;
import java.util.Arrays;
import java.util.logging.Level;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class TaskLoggerKt {
    public static final String formatDuration(long j10) {
        return String.format("%6s", Arrays.copyOf(new Object[]{j10 <= -999500000 ? e.s(new StringBuilder(), (j10 - 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS, " s ") : j10 <= -999500 ? e.s(new StringBuilder(), (j10 - 500000) / PlaybackException.CUSTOM_ERROR_CODE_BASE, " ms") : j10 <= 0 ? e.s(new StringBuilder(), (j10 - 500) / 1000, " µs") : j10 < 999500 ? e.s(new StringBuilder(), (j10 + 500) / 1000, " µs") : j10 < 999500000 ? e.s(new StringBuilder(), (j10 + 500000) / PlaybackException.CUSTOM_ERROR_CODE_BASE, " ms") : e.s(new StringBuilder(), (j10 + 500000000) / Http2Connection.DEGRADED_PONG_TIMEOUT_NS, " s ")}, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        TaskRunner.Companion.getLogger().fine(taskQueue.getName$okhttp() + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.getName());
    }

    public static final <T> T logElapsed(Task task, TaskQueue taskQueue, a aVar) {
        long jNanoTime;
        i.f(task, "task");
        i.f(taskQueue, "queue");
        i.f(aVar, "block");
        boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (zIsLoggable) {
            jNanoTime = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, taskQueue, "starting");
        } else {
            jNanoTime = -1;
        }
        try {
            T t5 = (T) aVar.invoke();
            if (zIsLoggable) {
                log(task, taskQueue, "finished run in " + formatDuration(taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
            }
            return t5;
        } catch (Throwable th) {
            if (zIsLoggable) {
                log(task, taskQueue, "failed a run in " + formatDuration(taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
            }
            throw th;
        }
    }

    public static final void taskLog(Task task, TaskQueue taskQueue, a aVar) {
        i.f(task, "task");
        i.f(taskQueue, "queue");
        i.f(aVar, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, taskQueue, (String) aVar.invoke());
        }
    }
}
