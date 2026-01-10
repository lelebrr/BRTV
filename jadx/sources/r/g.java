package r;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.util.concurrent.ListenableFuture;
import ea.q;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g implements ListenableFuture {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f9446e = Logger.getLogger(g.class.getName());
    public static final com.bumptech.glide.d f;

    /* renamed from: g, reason: collision with root package name */
    public static final Object f9447g;

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f9448a;

    /* renamed from: b, reason: collision with root package name */
    public volatile c f9449b;

    /* renamed from: c, reason: collision with root package name */
    public volatile f f9450c;

    static {
        com.bumptech.glide.d eVar;
        try {
            eVar = new d(AtomicReferenceFieldUpdater.newUpdater(f.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(f.class, f.class, "b"), AtomicReferenceFieldUpdater.newUpdater(g.class, f.class, "c"), AtomicReferenceFieldUpdater.newUpdater(g.class, c.class, "b"), AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY));
            th = null;
        } catch (Throwable th) {
            th = th;
            eVar = new e();
        }
        f = eVar;
        if (th != null) {
            f9446e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f9447g = new Object();
    }

    public static void b(g gVar) {
        f fVar;
        c cVar;
        c cVar2;
        c cVar3;
        do {
            fVar = gVar.f9450c;
        } while (!f.d(gVar, fVar, f.f9443c));
        while (true) {
            cVar = null;
            if (fVar == null) {
                break;
            }
            Thread thread = fVar.f9444a;
            if (thread != null) {
                fVar.f9444a = null;
                LockSupport.unpark(thread);
            }
            fVar = fVar.f9445b;
        }
        do {
            cVar2 = gVar.f9449b;
        } while (!f.b(gVar, cVar2, c.d));
        while (true) {
            cVar3 = cVar;
            cVar = cVar2;
            if (cVar == null) {
                break;
            }
            cVar2 = cVar.f9438c;
            cVar.f9438c = cVar3;
        }
        while (cVar3 != null) {
            c cVar4 = cVar3.f9438c;
            c(cVar3.f9436a, cVar3.f9437b);
            cVar3 = cVar4;
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e5) {
            f9446e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e5);
        }
    }

    public static Object d(Object obj) throws ExecutionException {
        if (obj instanceof a) {
            CancellationException cancellationException = ((a) obj).f9435a;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof b) {
            ((b) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        if (obj == f9447g) {
            return null;
        }
        return obj;
    }

    public static Object e(g gVar) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                obj = gVar.get();
                break;
            } catch (InterruptedException unused) {
                z7 = true;
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objE = e(this);
            sb.append("SUCCESS, result=[");
            sb.append(objE == this ? "this future" : String.valueOf(objE));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e5) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e5.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e10) {
            sb.append("FAILURE, cause=[");
            sb.append(e10.getCause());
            sb.append("]");
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        c cVar = this.f9449b;
        c cVar2 = c.d;
        if (cVar != cVar2) {
            c cVar3 = new c(runnable, executor);
            do {
                cVar3.f9438c = cVar;
                if (f.b(this, cVar, cVar3)) {
                    return;
                } else {
                    cVar = this.f9449b;
                }
            } while (cVar != cVar2);
        }
        c(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        Object obj = this.f9448a;
        if (obj != null) {
            return false;
        }
        if (!f.c(this, obj, d ? new a(z7, new CancellationException("Future.cancel() was called.")) : z7 ? a.f9433b : a.f9434c)) {
            return false;
        }
        b(this);
        return true;
    }

    public final void f(f fVar) {
        fVar.f9444a = null;
        while (true) {
            f fVar2 = this.f9450c;
            if (fVar2 == f.f9443c) {
                return;
            }
            f fVar3 = null;
            while (fVar2 != null) {
                f fVar4 = fVar2.f9445b;
                if (fVar2.f9444a != null) {
                    fVar3 = fVar2;
                } else if (fVar3 != null) {
                    fVar3.f9445b = fVar4;
                    if (fVar3.f9444a == null) {
                        break;
                    }
                } else if (!f.d(this, fVar2, fVar4)) {
                    break;
                }
                fVar2 = fVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f9448a;
        if (obj != null) {
            return d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            f fVar = this.f9450c;
            f fVar2 = f.f9443c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                do {
                    com.bumptech.glide.d dVar = f;
                    dVar.B(fVar3, fVar);
                    if (dVar.d(this, fVar, fVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f9448a;
                            if (obj2 != null) {
                                return d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        f(fVar3);
                    } else {
                        fVar = this.f9450c;
                    }
                } while (fVar != fVar2);
            }
            return d(this.f9448a);
        }
        while (nanos > 0) {
            Object obj3 = this.f9448a;
            if (obj3 != null) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strH = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strH2 = q.h(strH, " (plus ");
            long j11 = -nanos;
            long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(jConvert);
            boolean z7 = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strH3 = strH2 + jConvert + " " + lowerCase;
                if (z7) {
                    strH3 = q.h(strH3, ",");
                }
                strH2 = q.h(strH3, " ");
            }
            if (z7) {
                strH2 = strH2 + nanos2 + " nanoseconds ";
            }
            strH = q.h(strH2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(q.h(strH, " but future completed as timeout expired"));
        }
        throw new TimeoutException(q.i(strH, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f9448a instanceof a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f9448a != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f9448a instanceof a) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e5) {
                str = "Exception thrown from implementation: " + e5.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f9448a;
            if (obj2 != null) {
                return d(obj2);
            }
            f fVar = this.f9450c;
            f fVar2 = f.f9443c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                do {
                    com.bumptech.glide.d dVar = f;
                    dVar.B(fVar3, fVar);
                    if (dVar.d(this, fVar, fVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f9448a;
                            } else {
                                f(fVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return d(obj);
                    }
                    fVar = this.f9450c;
                } while (fVar != fVar2);
            }
            return d(this.f9448a);
        }
        throw new InterruptedException();
    }
}
