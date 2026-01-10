package com.google.common.util.concurrent;

import d7.a5;
import d7.b5;
import d7.c0;
import d7.d0;
import d7.k5;
import d7.p0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
final class FuturesGetChecked {
    private static final b5 ORDERING_BY_CONSTRUCTOR_PARAMETER_LIST;
    private static final b5 WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM;

    /* compiled from: MyApplication */
    public interface GetCheckedTypeValidator {
        void validateClass(Class<? extends Exception> cls);
    }

    /* compiled from: MyApplication */
    public static class GetCheckedTypeValidatorHolder {
        static final GetCheckedTypeValidator BEST_VALIDATOR = getBestValidator();

        /* compiled from: MyApplication */
        public enum WeakSetValidator implements GetCheckedTypeValidator {
            INSTANCE;

            private static final Set<WeakReference<Class<? extends Exception>>> validClasses = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.FuturesGetChecked.GetCheckedTypeValidator
            public void validateClass(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it = validClasses.iterator();
                while (it.hasNext()) {
                    if (cls.equals(it.next().get())) {
                        return;
                    }
                }
                FuturesGetChecked.checkExceptionClassValidity(cls);
                Set<WeakReference<Class<? extends Exception>>> set = validClasses;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        public static GetCheckedTypeValidator getBestValidator() {
            return FuturesGetChecked.weakSetValidator();
        }
    }

    static {
        a5 a5Var = a5.f6089a;
        m mVar = new m(0);
        a5Var.getClass();
        k5 k5Var = new k5(new p0(new c0(mVar, a5Var), new c0(new m(1), a5Var)));
        ORDERING_BY_CONSTRUCTOR_PARAMETER_LIST = k5Var;
        WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM = new c0(new m(2), k5Var);
    }

    private FuturesGetChecked() {
    }

    private static GetCheckedTypeValidator bestGetCheckedTypeValidator() {
        return GetCheckedTypeValidatorHolder.BEST_VALIDATOR;
    }

    public static void checkExceptionClassValidity(Class<? extends Exception> cls) {
        b7.b.c(cls, "Futures.getChecked exception type (%s) must not be a RuntimeException", isCheckedException(cls));
        b7.b.c(cls, "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", hasConstructorUsableByGetChecked(cls));
    }

    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) throws Exception {
        return (V) getChecked(bestGetCheckedTypeValidator(), future, cls);
    }

    private static boolean hasConstructorUsableByGetChecked(Class<? extends Exception> cls) {
        try {
            newWithCause(cls, new Exception());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isCheckedException(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparable lambda$static$0(List list) {
        return Boolean.valueOf(list.contains(String.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Comparable lambda$static$1(List list) {
        return Boolean.valueOf(list.contains(Throwable.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$static$2(Constructor constructor) {
        return Arrays.asList(constructor.getParameterTypes());
    }

    private static <X> X newFromConstructor(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i6 = 0; i6 < parameterTypes.length; i6++) {
            Class<?> cls = parameterTypes[i6];
            if (cls.equals(String.class)) {
                objArr[i6] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i6] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static <X extends Exception> X newWithCause(Class<X> cls, Throwable th) {
        Iterator it = preferringStringsThenThrowables(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x10 = (X) newFromConstructor((Constructor) it.next(), th);
            if (x10 != null) {
                if (x10.getCause() == null) {
                    x10.initCause(th);
                }
                return x10;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    private static <X extends Exception> List<Constructor<X>> preferringStringsThenThrowables(List<Constructor<X>> list) {
        b5 b5Var = WITH_STRING_PARAM_THEN_WITH_THROWABLE_PARAM;
        b5Var.getClass();
        if (!(list instanceof Collection)) {
            list = d0.s(list.iterator());
        }
        Object[] array = list.toArray();
        Arrays.sort(array, b5Var);
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        return new ArrayList(listAsList);
    }

    public static GetCheckedTypeValidator weakSetValidator() {
        return GetCheckedTypeValidatorHolder.WeakSetValidator.INSTANCE;
    }

    private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw newWithCause(cls, th);
        }
        throw new UncheckedExecutionException(th);
    }

    @ParametricNullness
    public static <V, X extends Exception> V getChecked(GetCheckedTypeValidator getCheckedTypeValidator, Future<V> future, Class<X> cls) throws Exception {
        getCheckedTypeValidator.validateClass(cls);
        try {
            return future.get();
        } catch (InterruptedException e5) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e5);
        } catch (ExecutionException e10) {
            wrapAndThrowExceptionOrError(e10.getCause(), cls);
            throw new AssertionError();
        }
    }

    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j10, TimeUnit timeUnit) throws Exception {
        bestGetCheckedTypeValidator().validateClass(cls);
        try {
            return future.get(j10, timeUnit);
        } catch (InterruptedException e5) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e5);
        } catch (ExecutionException e10) {
            wrapAndThrowExceptionOrError(e10.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e11) {
            throw newWithCause(cls, e11);
        }
    }
}
