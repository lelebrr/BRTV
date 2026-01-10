package com.alibaba.fastjson.util;

import java.util.concurrent.Callable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ModuleUtil {
    private static boolean hasJavaSql;

    static {
        try {
            Class.forName("java.sql.Time");
            hasJavaSql = true;
        } catch (Throwable unused) {
            hasJavaSql = false;
        }
    }

    public static <T> T callWhenHasJavaSql(Callable<T> callable) {
        if (!hasJavaSql) {
            return null;
        }
        try {
            return callable.call();
        } catch (Exception e5) {
            throw new RuntimeException(e5);
        }
    }

    public static <ARG, T> T callWhenHasJavaSql(Function<ARG, T> function, ARG arg) {
        if (hasJavaSql) {
            return function.apply(arg);
        }
        return null;
    }

    public static <T, U, R> R callWhenHasJavaSql(BiFunction<T, U, R> biFunction, T t5, U u3) {
        if (hasJavaSql) {
            return biFunction.apply(t5, u3);
        }
        return null;
    }
}
