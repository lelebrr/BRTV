package okio;

import a.e;
import i9.l;
import j9.i;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Pipe {
    private final Buffer buffer = new Buffer();
    private boolean canceled;
    private final Condition condition;
    private Sink foldedSink;
    private final ReentrantLock lock;
    private final long maxBufferSize;
    private final Sink sink;
    private boolean sinkClosed;
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j10) {
        this.maxBufferSize = j10;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        i.e(conditionNewCondition, "newCondition(...)");
        this.condition = conditionNewCondition;
        if (j10 < 1) {
            throw new IllegalArgumentException(e.o(j10, "maxBufferSize < 1: ").toString());
        }
        this.sink = new Sink() { // from class: okio.Pipe.sink.1
            private final Timeout timeout = new Timeout();

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                ReentrantLock lock = Pipe.this.getLock();
                Pipe pipe = Pipe.this;
                lock.lock();
                try {
                    if (pipe.getSinkClosed$okio()) {
                        lock.unlock();
                        return;
                    }
                    Sink foldedSink$okio = pipe.getFoldedSink$okio();
                    if (foldedSink$okio == null) {
                        if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        pipe.setSinkClosed$okio(true);
                        pipe.getCondition().signalAll();
                        foldedSink$okio = null;
                    }
                    if (foldedSink$okio != null) {
                        Pipe pipe2 = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe2.sink().timeout();
                        long jTimeoutNanos = timeout.timeoutNanos();
                        long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.timeout(jMinTimeout, timeUnit);
                        if (!timeout.hasDeadline()) {
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                foldedSink$okio.close();
                                timeout.timeout(jTimeoutNanos, timeUnit);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                                throw th;
                            }
                        }
                        long jDeadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            foldedSink$okio.close();
                            timeout.timeout(jTimeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                        } catch (Throwable th2) {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                            throw th2;
                        }
                    }
                } finally {
                    lock.unlock();
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                ReentrantLock lock = Pipe.this.getLock();
                Pipe pipe = Pipe.this;
                lock.lock();
                try {
                    if (pipe.getSinkClosed$okio()) {
                        throw new IllegalStateException("closed");
                    }
                    if (pipe.getCanceled$okio()) {
                        throw new IOException("canceled");
                    }
                    Sink foldedSink$okio = pipe.getFoldedSink$okio();
                    if (foldedSink$okio == null) {
                        if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                            throw new IOException("source is closed");
                        }
                        foldedSink$okio = null;
                    }
                    if (foldedSink$okio != null) {
                        Pipe pipe2 = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe2.sink().timeout();
                        long jTimeoutNanos = timeout.timeoutNanos();
                        long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.timeout(jMinTimeout, timeUnit);
                        if (!timeout.hasDeadline()) {
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                            }
                            try {
                                foldedSink$okio.flush();
                                timeout.timeout(jTimeoutNanos, timeUnit);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.clearDeadline();
                                }
                                throw th;
                            }
                        }
                        long jDeadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            foldedSink$okio.flush();
                            timeout.timeout(jTimeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                        } catch (Throwable th2) {
                            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(jDeadlineNanoTime);
                            }
                            throw th2;
                        }
                    }
                } finally {
                    lock.unlock();
                }
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return this.timeout;
            }

            /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
            
                if (r2 == null) goto L56;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
            
                r0 = r12.this$0;
                r1 = r2.timeout();
                r0 = r0.sink().timeout();
                r3 = r1.timeoutNanos();
                r5 = okio.Timeout.Companion.minTimeout(r0.timeoutNanos(), r1.timeoutNanos());
                r7 = java.util.concurrent.TimeUnit.NANOSECONDS;
                r1.timeout(r5, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x00a6, code lost:
            
                if (r1.hasDeadline() == false) goto L44;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x00a8, code lost:
            
                r5 = r1.deadlineNanoTime();
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00b0, code lost:
            
                if (r0.hasDeadline() == false) goto L63;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00b2, code lost:
            
                r1.deadlineNanoTime(java.lang.Math.min(r1.deadlineNanoTime(), r0.deadlineNanoTime()));
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x00c1, code lost:
            
                r2.write(r13, r14);
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
            
                r1.timeout(r3, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00cb, code lost:
            
                if (r0.hasDeadline() == false) goto L77;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
            
                r1.deadlineNanoTime(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00d1, code lost:
            
                r13 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00d2, code lost:
            
                r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x00db, code lost:
            
                if (r0.hasDeadline() != false) goto L42;
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x00dd, code lost:
            
                r1.deadlineNanoTime(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x00e0, code lost:
            
                throw r13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x00e5, code lost:
            
                if (r0.hasDeadline() == false) goto L66;
             */
            /* JADX WARN: Code restructure failed: missing block: B:46:0x00e7, code lost:
            
                r1.deadlineNanoTime(r0.deadlineNanoTime());
             */
            /* JADX WARN: Code restructure failed: missing block: B:47:0x00ee, code lost:
            
                r2.write(r13, r14);
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00f1, code lost:
            
                r1.timeout(r3, r7);
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
            
                if (r0.hasDeadline() == false) goto L79;
             */
            /* JADX WARN: Code restructure failed: missing block: B:50:0x00fa, code lost:
            
                r1.clearDeadline();
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x00fe, code lost:
            
                r13 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x00ff, code lost:
            
                r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
             */
            /* JADX WARN: Code restructure failed: missing block: B:53:0x0108, code lost:
            
                if (r0.hasDeadline() != false) goto L54;
             */
            /* JADX WARN: Code restructure failed: missing block: B:54:0x010a, code lost:
            
                r1.clearDeadline();
             */
            /* JADX WARN: Code restructure failed: missing block: B:55:0x010d, code lost:
            
                throw r13;
             */
            /* JADX WARN: Code restructure failed: missing block: B:56:0x010e, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:77:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:79:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
            
                return;
             */
            @Override // okio.Sink
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void write(okio.Buffer r13, long r14) {
                /*
                    Method dump skipped, instructions count: 289
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.AnonymousClass1.write(okio.Buffer, long):void");
            }
        };
        this.source = new Source() { // from class: okio.Pipe.source.1
            private final Timeout timeout = new Timeout();

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                ReentrantLock lock = Pipe.this.getLock();
                Pipe pipe = Pipe.this;
                lock.lock();
                try {
                    pipe.setSourceClosed$okio(true);
                    pipe.getCondition().signalAll();
                } finally {
                    lock.unlock();
                }
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j11) {
                i.f(buffer, "sink");
                ReentrantLock lock = Pipe.this.getLock();
                Pipe pipe = Pipe.this;
                lock.lock();
                try {
                    if (pipe.getSourceClosed$okio()) {
                        throw new IllegalStateException("closed");
                    }
                    if (pipe.getCanceled$okio()) {
                        throw new IOException("canceled");
                    }
                    while (pipe.getBuffer$okio().size() == 0) {
                        if (pipe.getSinkClosed$okio()) {
                            lock.unlock();
                            return -1L;
                        }
                        this.timeout.awaitSignal(pipe.getCondition());
                        if (pipe.getCanceled$okio()) {
                            throw new IOException("canceled");
                        }
                    }
                    long j12 = pipe.getBuffer$okio().read(buffer, j11);
                    pipe.getCondition().signalAll();
                    lock.unlock();
                    return j12;
                } catch (Throwable th) {
                    lock.unlock();
                    throw th;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return this.timeout;
            }
        };
    }

    private final void forward(Sink sink, l lVar) {
        Timeout timeout = sink.timeout();
        Timeout timeout2 = sink().timeout();
        long jTimeoutNanos = timeout.timeoutNanos();
        long jMinTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(jMinTimeout, timeUnit);
        if (!timeout.hasDeadline()) {
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
            }
            try {
                lVar.invoke(sink);
                timeout.timeout(jTimeoutNanos, timeUnit);
                if (timeout2.hasDeadline()) {
                    timeout.clearDeadline();
                    return;
                }
                return;
            } catch (Throwable th) {
                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.clearDeadline();
                }
                throw th;
            }
        }
        long jDeadlineNanoTime = timeout.deadlineNanoTime();
        if (timeout2.hasDeadline()) {
            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
        }
        try {
            lVar.invoke(sink);
            timeout.timeout(jTimeoutNanos, timeUnit);
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
            }
        } catch (Throwable th2) {
            timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
            }
            throw th2;
        }
    }

    /* renamed from: -deprecated_sink, reason: not valid java name */
    public final Sink m161deprecated_sink() {
        return this.sink;
    }

    /* renamed from: -deprecated_source, reason: not valid java name */
    public final Source m162deprecated_source() {
        return this.source;
    }

    public final void cancel() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.canceled = true;
            this.buffer.clear();
            this.condition.signalAll();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        j9.i.l("sinkBuffer");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void fold(okio.Sink r9) throws java.io.IOException {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            j9.i.f(r9, r0)
        L5:
            java.util.concurrent.locks.ReentrantLock r0 = r8.lock
            r0.lock()
            okio.Sink r1 = r8.foldedSink     // Catch: java.lang.Throwable -> L25
            if (r1 != 0) goto L7a
            boolean r1 = r8.canceled     // Catch: java.lang.Throwable -> L25
            if (r1 != 0) goto L70
            boolean r1 = r8.sinkClosed     // Catch: java.lang.Throwable -> L25
            okio.Buffer r2 = r8.buffer     // Catch: java.lang.Throwable -> L25
            boolean r2 = r2.exhausted()     // Catch: java.lang.Throwable -> L25
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L27
            r8.sourceClosed = r4     // Catch: java.lang.Throwable -> L25
            r8.foldedSink = r9     // Catch: java.lang.Throwable -> L25
            r2 = r3
            r5 = 1
            goto L3b
        L25:
            r9 = move-exception
            goto L82
        L27:
            okio.Buffer r2 = new okio.Buffer     // Catch: java.lang.Throwable -> L25
            r2.<init>()     // Catch: java.lang.Throwable -> L25
            okio.Buffer r5 = r8.buffer     // Catch: java.lang.Throwable -> L25
            long r6 = r5.size()     // Catch: java.lang.Throwable -> L25
            r2.write(r5, r6)     // Catch: java.lang.Throwable -> L25
            java.util.concurrent.locks.Condition r5 = r8.condition     // Catch: java.lang.Throwable -> L25
            r5.signalAll()     // Catch: java.lang.Throwable -> L25
            r5 = 0
        L3b:
            r0.unlock()
            if (r5 == 0) goto L46
            if (r1 == 0) goto L45
            r9.close()
        L45:
            return
        L46:
            if (r2 == 0) goto L55
            long r0 = r2.size()     // Catch: java.lang.Throwable -> L53
            r9.write(r2, r0)     // Catch: java.lang.Throwable -> L53
            r9.flush()     // Catch: java.lang.Throwable -> L53
            goto L5
        L53:
            r9 = move-exception
            goto L5b
        L55:
            java.lang.String r9 = "sinkBuffer"
            j9.i.l(r9)     // Catch: java.lang.Throwable -> L53
            throw r3     // Catch: java.lang.Throwable -> L53
        L5b:
            java.util.concurrent.locks.ReentrantLock r0 = r8.lock
            r0.lock()
            r8.sourceClosed = r4     // Catch: java.lang.Throwable -> L6b
            java.util.concurrent.locks.Condition r1 = r8.condition     // Catch: java.lang.Throwable -> L6b
            r1.signalAll()     // Catch: java.lang.Throwable -> L6b
            r0.unlock()
            throw r9
        L6b:
            r9 = move-exception
            r0.unlock()
            throw r9
        L70:
            r8.foldedSink = r9     // Catch: java.lang.Throwable -> L25
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L25
            java.lang.String r1 = "canceled"
            r9.<init>(r1)     // Catch: java.lang.Throwable -> L25
            throw r9     // Catch: java.lang.Throwable -> L25
        L7a:
            java.lang.String r9 = "sink already folded"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L25
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L25
            throw r1     // Catch: java.lang.Throwable -> L25
        L82:
            r0.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.fold(okio.Sink):void");
    }

    public final Buffer getBuffer$okio() {
        return this.buffer;
    }

    public final boolean getCanceled$okio() {
        return this.canceled;
    }

    public final Condition getCondition() {
        return this.condition;
    }

    public final Sink getFoldedSink$okio() {
        return this.foldedSink;
    }

    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final long getMaxBufferSize$okio() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed$okio() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed$okio() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z7) {
        this.canceled = z7;
    }

    public final void setFoldedSink$okio(Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z7) {
        this.sinkClosed = z7;
    }

    public final void setSourceClosed$okio(boolean z7) {
        this.sourceClosed = z7;
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }
}
