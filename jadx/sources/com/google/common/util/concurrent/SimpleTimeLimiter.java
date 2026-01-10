package com.google.common.util.concurrent;

import com.google.common.util.concurrent.SimpleTimeLimiter;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
public final class SimpleTimeLimiter implements TimeLimiter {
    private final ExecutorService executor;

    /* compiled from: MyApplication */
    /* renamed from: com.google.common.util.concurrent.SimpleTimeLimiter$1, reason: invalid class name */
    public class AnonymousClass1 implements InvocationHandler {
        final /* synthetic */ SimpleTimeLimiter this$0;
        final /* synthetic */ Set val$interruptibleMethods;
        final /* synthetic */ Object val$target;
        final /* synthetic */ long val$timeoutDuration;
        final /* synthetic */ TimeUnit val$timeoutUnit;

        public AnonymousClass1(SimpleTimeLimiter simpleTimeLimiter, Object obj, long j10, TimeUnit timeUnit, Set set) {
            this.val$target = obj;
            this.val$timeoutDuration = j10;
            this.val$timeoutUnit = timeUnit;
            this.val$interruptibleMethods = set;
            this.this$0 = simpleTimeLimiter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object lambda$invoke$0(Method method, Object obj, Object[] objArr) throws Exception {
            try {
                return method.invoke(obj, objArr);
            } catch (InvocationTargetException e5) {
                throw SimpleTimeLimiter.throwCause(e5, false);
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, final Method method, final Object[] objArr) throws Throwable {
            final Object obj2 = this.val$target;
            return this.this$0.callWithTimeout(new Callable() { // from class: com.google.common.util.concurrent.p
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return SimpleTimeLimiter.AnonymousClass1.lambda$invoke$0(method, obj2, objArr);
                }
            }, this.val$timeoutDuration, this.val$timeoutUnit, this.val$interruptibleMethods.contains(method));
        }
    }

    private SimpleTimeLimiter(ExecutorService executorService) {
        executorService.getClass();
        this.executor = executorService;
    }

    private static void checkPositiveTimeout(long j10) {
        b7.b.g(j10 > 0, "timeout must be positive: %s", j10);
    }

    public static SimpleTimeLimiter create(ExecutorService executorService) {
        return new SimpleTimeLimiter(executorService);
    }

    private static boolean declaresInterruptedEx(Method method) {
        for (Class<?> cls : method.getExceptionTypes()) {
            if (cls == InterruptedException.class) {
                return true;
            }
        }
        return false;
    }

    private static Set<Method> findInterruptibleMethods(Class<?> cls) throws SecurityException {
        HashSet hashSet = new HashSet();
        for (Method method : cls.getMethods()) {
            if (declaresInterruptedEx(method)) {
                hashSet.add(method);
            }
        }
        return hashSet;
    }

    private static <T> T newProxy(Class<T> cls, InvocationHandler invocationHandler) {
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Exception throwCause(Exception exc, boolean z7) throws Exception {
        Throwable cause = exc.getCause();
        if (cause == null) {
            throw exc;
        }
        if (z7) {
            StackTraceElement[] stackTrace = cause.getStackTrace();
            StackTraceElement[] stackTrace2 = exc.getStackTrace();
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) StackTraceElement.class, stackTrace.length + stackTrace2.length);
            System.arraycopy(stackTrace, 0, objArr, 0, stackTrace.length);
            System.arraycopy(stackTrace2, 0, objArr, stackTrace.length, stackTrace2.length);
            cause.setStackTrace((StackTraceElement[]) objArr);
        }
        if (cause instanceof Exception) {
            throw ((Exception) cause);
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        throw exc;
    }

    private void wrapAndThrowExecutionExceptionOrError(Throwable th) throws ExecutionException {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw new ExecutionException(th);
        }
        throw new UncheckedExecutionException(th);
    }

    private void wrapAndThrowRuntimeExecutionExceptionOrError(Throwable th) {
        if (!(th instanceof Error)) {
            throw new UncheckedExecutionException(th);
        }
        throw new ExecutionError((Error) th);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @ParametricNullness
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j10, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        callable.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        Future<T> futureSubmit = this.executor.submit(callable);
        try {
            return (T) Uninterruptibles.getUninterruptibly(futureSubmit, j10, timeUnit);
        } catch (ExecutionException e5) {
            wrapAndThrowExecutionExceptionOrError(e5.getCause());
            throw new AssertionError();
        } catch (TimeoutException e10) {
            futureSubmit.cancel(true);
            throw e10;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @ParametricNullness
    public <T> T callWithTimeout(Callable<T> callable, long j10, TimeUnit timeUnit) throws Throwable {
        callable.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        Future<T> futureSubmit = this.executor.submit(callable);
        try {
            return futureSubmit.get(j10, timeUnit);
        } catch (InterruptedException e5) {
            e = e5;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e10) {
            wrapAndThrowExecutionExceptionOrError(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            e = e11;
            futureSubmit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j10, TimeUnit timeUnit) throws TimeoutException {
        runnable.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        Future<?> futureSubmit = this.executor.submit(runnable);
        try {
            Uninterruptibles.getUninterruptibly(futureSubmit, j10, timeUnit);
        } catch (ExecutionException e5) {
            wrapAndThrowRuntimeExecutionExceptionOrError(e5.getCause());
            throw new AssertionError();
        } catch (TimeoutException e10) {
            futureSubmit.cancel(true);
            throw e10;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j10, TimeUnit timeUnit) throws Throwable {
        runnable.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        Future<?> futureSubmit = this.executor.submit(runnable);
        try {
            futureSubmit.get(j10, timeUnit);
        } catch (InterruptedException e5) {
            e = e5;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e10) {
            wrapAndThrowRuntimeExecutionExceptionOrError(e10.getCause());
            throw new AssertionError();
        } catch (TimeoutException e11) {
            e = e11;
            futureSubmit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t5, Class<T> cls, long j10, TimeUnit timeUnit) {
        t5.getClass();
        cls.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        b7.b.e("interfaceType must be an interface type", cls.isInterface());
        return (T) newProxy(cls, new AnonymousClass1(this, t5, j10, timeUnit, findInterruptibleMethods(cls)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ParametricNullness
    public <T> T callWithTimeout(Callable<T> callable, long j10, TimeUnit timeUnit, boolean z7) throws Exception {
        callable.getClass();
        timeUnit.getClass();
        checkPositiveTimeout(j10);
        Future future = (T) this.executor.submit(callable);
        try {
            if (z7) {
                future = (T) future.get(j10, timeUnit);
            } else {
                future = (T) Uninterruptibles.getUninterruptibly(future, j10, timeUnit);
            }
            return (T) future;
        } catch (InterruptedException e5) {
            future.cancel(true);
            throw e5;
        } catch (ExecutionException e10) {
            throw throwCause(e10, true);
        } catch (TimeoutException e11) {
            future.cancel(true);
            throw new UncheckedTimeoutException(e11);
        }
    }
}
