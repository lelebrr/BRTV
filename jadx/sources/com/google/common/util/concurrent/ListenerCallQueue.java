package com.google.common.util.concurrent;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
final class ListenerCallQueue<L> {
    private static final LazyLogger logger = new LazyLogger(ListenerCallQueue.class);
    private final List<PerListenerQueue<L>> listeners = Collections.synchronizedList(new ArrayList());

    /* compiled from: MyApplication */
    public interface Event<L> {
        void call(L l9);
    }

    /* compiled from: MyApplication */
    public static final class PerListenerQueue<L> implements Runnable {
        final Executor executor;
        boolean isThreadScheduled;
        final L listener;
        final Queue<Event<L>> waitQueue = new ArrayDeque();
        final Queue<Object> labelQueue = new ArrayDeque();

        public PerListenerQueue(L l9, Executor executor) {
            l9.getClass();
            this.listener = l9;
            executor.getClass();
            this.executor = executor;
        }

        public synchronized void add(Event<L> event, Object obj) {
            this.waitQueue.add(event);
            this.labelQueue.add(obj);
        }

        public void dispatch() throws Exception {
            boolean z7;
            synchronized (this) {
                try {
                    if (this.isThreadScheduled) {
                        z7 = false;
                    } else {
                        z7 = true;
                        this.isThreadScheduled = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z7) {
                try {
                    this.executor.execute(this);
                } catch (Exception e5) {
                    synchronized (this) {
                        this.isThreadScheduled = false;
                        ListenerCallQueue.logger.get().log(Level.SEVERE, "Exception while running callbacks for " + this.listener + " on " + this.executor, (Throwable) e5);
                        throw e5;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0024, code lost:
        
            r2.call(r9.listener);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
        
            com.google.common.util.concurrent.ListenerCallQueue.logger.get().log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.listener + " " + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() throws java.lang.Throwable {
            /*
                r9 = this;
            L0:
                r0 = 0
                r1 = 1
                monitor-enter(r9)     // Catch: java.lang.Throwable -> L2a
                boolean r2 = r9.isThreadScheduled     // Catch: java.lang.Throwable -> L1f
                b7.b.o(r2)     // Catch: java.lang.Throwable -> L1f
                java.util.Queue<com.google.common.util.concurrent.ListenerCallQueue$Event<L>> r2 = r9.waitQueue     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r2 = r2.poll()     // Catch: java.lang.Throwable -> L1f
                com.google.common.util.concurrent.ListenerCallQueue$Event r2 = (com.google.common.util.concurrent.ListenerCallQueue.Event) r2     // Catch: java.lang.Throwable -> L1f
                java.util.Queue<java.lang.Object> r3 = r9.labelQueue     // Catch: java.lang.Throwable -> L1f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L1f
                if (r2 != 0) goto L23
                r9.isThreadScheduled = r0     // Catch: java.lang.Throwable -> L1f
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L1c
                return
            L1c:
                r1 = move-exception
                r2 = 0
                goto L56
            L1f:
                r2 = move-exception
                r1 = r2
                r2 = 1
                goto L56
            L23:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L1f
                L r4 = r9.listener     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2c
                r2.call(r4)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2c
                goto L0
            L2a:
                r2 = move-exception
                goto L5f
            L2c:
                r2 = move-exception
                com.google.common.util.concurrent.LazyLogger r4 = com.google.common.util.concurrent.ListenerCallQueue.access$000()     // Catch: java.lang.Throwable -> L2a
                java.util.logging.Logger r4 = r4.get()     // Catch: java.lang.Throwable -> L2a
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L2a
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2a
                r6.<init>()     // Catch: java.lang.Throwable -> L2a
                java.lang.String r7 = "Exception while executing callback: "
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                L r7 = r9.listener     // Catch: java.lang.Throwable -> L2a
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                java.lang.String r7 = " "
                r6.append(r7)     // Catch: java.lang.Throwable -> L2a
                r6.append(r3)     // Catch: java.lang.Throwable -> L2a
                java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L2a
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L56:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L5d
                throw r1     // Catch: java.lang.Throwable -> L58
            L58:
                r1 = move-exception
                r8 = r2
                r2 = r1
                r1 = r8
                goto L5f
            L5d:
                r1 = move-exception
                goto L56
            L5f:
                if (r1 == 0) goto L69
                monitor-enter(r9)
                r9.isThreadScheduled = r0     // Catch: java.lang.Throwable -> L66
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L66
                goto L69
            L66:
                r0 = move-exception
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L66
                throw r0
            L69:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.ListenerCallQueue.PerListenerQueue.run():void");
        }
    }

    private void enqueueHelper(Event<L> event, Object obj) {
        b7.b.j(event, "event");
        b7.b.j(obj, "label");
        synchronized (this.listeners) {
            try {
                Iterator<PerListenerQueue<L>> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().add(event, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addListener(L l9, Executor executor) {
        b7.b.j(l9, "listener");
        b7.b.j(executor, "executor");
        this.listeners.add(new PerListenerQueue<>(l9, executor));
    }

    public void dispatch() throws Exception {
        for (int i6 = 0; i6 < this.listeners.size(); i6++) {
            this.listeners.get(i6).dispatch();
        }
    }

    public void enqueue(Event<L> event) {
        enqueueHelper(event, event);
    }

    public void enqueue(Event<L> event, String str) {
        enqueueHelper(event, str);
    }
}
