package t9;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class v extends f0 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: i, reason: collision with root package name */
    public static final v f10235i;

    /* renamed from: j, reason: collision with root package name */
    public static final long f10236j;

    static {
        Long l9;
        v vVar = new v();
        f10235i = vVar;
        vVar.j(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l9 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l9 = 1000L;
        }
        f10236j = timeUnit.toNanos(l9.longValue());
    }

    @Override // t9.g0
    public final Thread i() {
        Thread thread = _thread;
        if (thread == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setDaemon(true);
                    thread.start();
                }
            }
        }
        return thread;
    }

    @Override // t9.f0
    public final void l(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.l(runnable);
    }

    public final synchronized void p() {
        int i6 = debugStatus;
        if (i6 == 2 || i6 == 3) {
            debugStatus = 3;
            f0.f.set(this, null);
            f0.f10188g.set(this, null);
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zN;
        f1.f10190a.set(this);
        try {
            synchronized (this) {
                int i6 = debugStatus;
                if (i6 == 2 || i6 == 3) {
                    if (zN) {
                        return;
                    } else {
                        return;
                    }
                }
                debugStatus = 1;
                notifyAll();
                long j10 = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jO = o();
                    if (jO == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j10 == Long.MAX_VALUE) {
                            j10 = f10236j + jNanoTime;
                        }
                        long j11 = j10 - jNanoTime;
                        if (j11 <= 0) {
                            _thread = null;
                            p();
                            if (n()) {
                                return;
                            }
                            i();
                            return;
                        }
                        if (jO > j11) {
                            jO = j11;
                        }
                    } else {
                        j10 = Long.MAX_VALUE;
                    }
                    if (jO > 0) {
                        int i10 = debugStatus;
                        if (i10 == 2 || i10 == 3) {
                            _thread = null;
                            p();
                            if (n()) {
                                return;
                            }
                            i();
                            return;
                        }
                        LockSupport.parkNanos(this, jO);
                    }
                }
            }
        } finally {
            _thread = null;
            p();
            if (!n()) {
                i();
            }
        }
    }

    @Override // t9.f0, t9.g0
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
