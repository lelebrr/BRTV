package v7;

import ea.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class d implements u7.c {
    public static final ScheduledExecutorService d = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: e, reason: collision with root package name */
    public static final ExecutorService f10732e = Executors.newCachedThreadPool();

    /* renamed from: a, reason: collision with root package name */
    public final String[] f10733a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f10734b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10735c;

    public d(String[] strArr) {
        ExecutorService executorService = (strArr == null || strArr.length <= 1) ? null : f10732e;
        this.f10735c = 3;
        this.f10733a = strArr;
        this.f10734b = executorService;
    }

    public abstract f a(s2.c cVar, String str, String str2);

    public final u7.f[] b(u7.b bVar) throws InterruptedException, IOException {
        f fVarA;
        ExecutorService executorService;
        String[] strArr = this.f10733a;
        if (strArr == null || strArr.length == 0) {
            throw new IOException("server can not empty");
        }
        final String str = bVar.f10446b;
        if (str == null || str.isEmpty()) {
            throw new IOException("host can not empty");
        }
        final s2.c cVar = new s2.c(4);
        cVar.f9745b = new ConcurrentLinkedQueue();
        if (strArr.length == 1 || (executorService = this.f10734b) == null) {
            try {
                Exception e5 = null;
                for (String str2 : strArr) {
                    try {
                        fVarA = a(cVar, str2, str);
                    } catch (Exception e10) {
                        e5 = e10;
                    }
                }
                throw new IOException("All resolvers failed", e5);
            } finally {
                cVar.c();
            }
        }
        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executorService);
        ArrayList arrayList = new ArrayList();
        for (final String str3 : strArr) {
            arrayList.add(executorCompletionService.submit(new Callable() { // from class: v7.c
                @Override // java.util.concurrent.Callable
                public final Object call() throws IOException {
                    s2.c cVar2 = cVar;
                    String str4 = str3;
                    try {
                        return this.f10729a.a(cVar2, str4, str);
                    } catch (Exception e11) {
                        throw new IOException(q.p("resolver failed:", str4), e11);
                    }
                }
            }));
        }
        long nanos = TimeUnit.SECONDS.toNanos(this.f10735c) + System.nanoTime();
        IOException iOException = null;
        for (int i6 = 0; i6 < strArr.length; i6++) {
            long jNanoTime = nanos - System.nanoTime();
            if (jNanoTime <= 0) {
                break;
            }
            try {
                Future futurePoll = executorCompletionService.poll(jNanoTime, TimeUnit.NANOSECONDS);
                if (futurePoll == null) {
                    break;
                }
                try {
                    fVarA = (f) futurePoll.get();
                } catch (InterruptedException e11) {
                    Thread.currentThread().interrupt();
                    throw new IOException("resolver interrupted", e11);
                } catch (ExecutionException e12) {
                    Throwable cause = e12.getCause();
                    iOException = cause instanceof IOException ? (IOException) cause : new IOException("resolver failed", cause);
                }
                if (fVarA == null) {
                    iOException = new IOException("resolver returned null");
                } else {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Future future = (Future) it.next();
                        if (!future.isDone()) {
                            future.cancel(true);
                        }
                    }
                }
            } catch (InterruptedException e13) {
                cVar.c();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((Future) it2.next()).cancel(true);
                }
                Thread.currentThread().interrupt();
                throw new IOException("resolver interrupted", e13);
            }
        }
        cVar.c();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((Future) it3.next()).cancel(true);
        }
        if (iOException != null) {
            throw iOException;
        }
        throw new IOException("resolver timeout");
        ArrayList arrayList2 = fVarA.f10746l;
        if (arrayList2 == null || arrayList2.size() == 0) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            u7.f fVar = (u7.f) it4.next();
            int i10 = fVar.f10450b;
            if (i10 == 1 || i10 == 5 || i10 == 28 || i10 == 1) {
                arrayList3.add(fVar);
            }
        }
        return (u7.f[]) arrayList3.toArray(new u7.f[0]);
    }
}
