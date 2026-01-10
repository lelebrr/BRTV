package com.google.android.gms.internal.cast;

import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class z5 extends e6 {
    public static Object t(Object obj) throws ExecutionException {
        if (obj instanceof v5) {
            RuntimeException runtimeException = ((v5) obj).f4445b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(runtimeException);
            throw cancellationException;
        }
        if (obj instanceof x5) {
            throw new ExecutionException(((x5) obj).f4462a);
        }
        if (obj == e6.f4146g) {
            return null;
        }
        return obj;
    }

    public static Object w(z5 z5Var) {
        Object obj;
        boolean z7 = false;
        while (true) {
            try {
                obj = z5Var.get();
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

    public static void y(z5 z5Var) {
        z5Var.getClass();
        for (d6 d6VarJ = e6.f4149j.j(z5Var); d6VarJ != null; d6VarJ = d6VarJ.f4134b) {
            Thread thread = d6VarJ.f4133a;
            if (thread != null) {
                d6VarJ.f4133a = null;
                LockSupport.unpark(thread);
            }
        }
        z5Var.v();
        y5 y5VarC = e6.f4149j.c(z5Var);
        y5 y5Var = null;
        while (y5VarC != null) {
            y5 y5Var2 = y5VarC.f4495c;
            y5VarC.f4495c = y5Var;
            y5Var = y5VarC;
            y5VarC = y5Var2;
        }
        while (y5Var != null) {
            Runnable runnable = y5Var.f4493a;
            y5 y5Var3 = y5Var.f4495c;
            Objects.requireNonNull(runnable);
            Executor executor = y5Var.f4494b;
            Objects.requireNonNull(executor);
            z(runnable, executor);
            y5Var = y5Var3;
        }
    }

    public static void z(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e5) {
            e6.f4147h.b().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e5);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        y5 y5Var;
        y5 y5Var2;
        if (runnable == null) {
            throw new NullPointerException("Runnable was null.");
        }
        if (executor == null) {
            throw new NullPointerException("Executor was null.");
        }
        if (!isDone() && (y5Var = this.f4150e) != (y5Var2 = y5.d)) {
            y5 y5Var3 = new y5(runnable, executor);
            do {
                y5Var3.f4495c = y5Var;
                if (e6.f4149j.p(this, y5Var, y5Var3)) {
                    return;
                } else {
                    y5Var = this.f4150e;
                }
            } while (y5Var != y5Var2);
        }
        z(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        v5 v5Var;
        Object obj = this.d;
        if (obj != null) {
            return false;
        }
        if (e6.f4148i) {
            v5Var = new v5(z7, new CancellationException("Future.cancel() was called."));
        } else {
            v5Var = z7 ? v5.f4443c : v5.d;
            Objects.requireNonNull(v5Var);
        }
        if (!e6.f4149j.q(this, obj, v5Var)) {
            return false;
        }
        y(this);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.d;
        if (obj2 != null) {
            return t(obj2);
        }
        d6 d6Var = this.f;
        d6 d6Var2 = d6.f4132c;
        if (d6Var != d6Var2) {
            d6 d6Var3 = new d6();
            do {
                z0 z0Var = e6.f4149j;
                z0Var.l(d6Var3, d6Var);
                if (z0Var.r(this, d6Var, d6Var3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            s(d6Var3);
                            throw new InterruptedException();
                        }
                        obj = this.d;
                    } while (obj == null);
                    return t(obj);
                }
                d6Var = this.f;
            } while (d6Var != d6Var2);
        }
        Object obj3 = this.d;
        Objects.requireNonNull(obj3);
        return t(obj3);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.d instanceof v5;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.d != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    @Override // com.google.android.gms.internal.cast.z0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            java.lang.Object r1 = r6.d
            boolean r1 = r1 instanceof com.google.android.gms.internal.cast.v5
            java.lang.String r2 = "]"
            if (r1 == 0) goto L4f
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto La9
        L4f:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L59
            r6.x(r0)
            goto La9
        L59:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.String r3 = r6.u()     // Catch: java.lang.Throwable -> L71
            r4 = 0
            if (r3 == 0) goto L6f
            boolean r5 = r3.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r5 == 0) goto L8c
        L6f:
            r3 = r4
            goto L8c
        L71:
            r3 = move-exception
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto L7e
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto L7b
            goto L7e
        L7b:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        L7e:
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r4 = "Exception thrown from implementation: "
            java.lang.String r3 = r4.concat(r3)
        L8c:
            if (r3 == 0) goto L99
            java.lang.String r4 = ", info=["
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
        L99:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto La9
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.x(r0)
        La9:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.z5.toString():java.lang.String");
    }

    public abstract String u();

    public final void x(StringBuilder sb) {
        try {
            Object objW = w(this);
            sb.append("SUCCESS, result=[");
            if (objW == null) {
                sb.append("null");
            } else if (objW == this) {
                sb.append("this future");
            } else {
                sb.append(objW.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objW)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e5) {
            sb.append("FAILURE, cause=[");
            sb.append(e5.getCause());
            sb.append("]");
        } catch (Exception e10) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e10.getClass());
            sb.append(" thrown from get()]");
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.d;
            if (obj != null) {
                return t(obj);
            }
            long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                d6 d6Var = this.f;
                d6 d6Var2 = d6.f4132c;
                if (d6Var != d6Var2) {
                    d6 d6Var3 = new d6();
                    do {
                        z0 z0Var = e6.f4149j;
                        z0Var.l(d6Var3, d6Var);
                        if (z0Var.r(this, d6Var, d6Var3)) {
                            do {
                                LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.d;
                                    if (obj2 != null) {
                                        return t(obj2);
                                    }
                                    nanos = jNanoTime - System.nanoTime();
                                } else {
                                    s(d6Var3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            s(d6Var3);
                        } else {
                            d6Var = this.f;
                        }
                    } while (d6Var != d6Var2);
                }
                Object obj3 = this.d;
                Objects.requireNonNull(obj3);
                return t(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.d;
                if (obj4 != null) {
                    return t(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = jNanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String string = toString();
            String string2 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = string2.toLowerCase(locale);
            String strConcat = "Waited " + j10 + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String strConcat2 = strConcat.concat(" (plus ");
                long j11 = -nanos;
                long jConvert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(jConvert);
                boolean z7 = true;
                if (jConvert != 0 && nanos2 <= 1000) {
                    z7 = false;
                }
                if (jConvert > 0) {
                    String strConcat3 = strConcat2 + jConvert + " " + lowerCase;
                    if (z7) {
                        strConcat3 = strConcat3.concat(",");
                    }
                    strConcat2 = strConcat3.concat(" ");
                }
                if (z7) {
                    strConcat2 = strConcat2 + nanos2 + " nanoseconds ";
                }
                strConcat = strConcat2.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(strConcat.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(ea.q.i(strConcat, " for ", string));
        }
        throw new InterruptedException();
    }

    public void v() {
    }
}
