package com.lzy.okgo.utils;

import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class OkLogger {
    private static boolean isLogEnable = true;
    private static String tag = "OkGo";

    public static void d(String str) {
        d(tag, str);
    }

    public static void debug(boolean z7) {
        debug(tag, z7);
    }

    public static void e(String str) {
        e(tag, str);
    }

    public static void i(String str) {
        i(tag, str);
    }

    public static void printStackTrace(Throwable th) {
        if (!isLogEnable || th == null) {
            return;
        }
        th.printStackTrace();
    }

    public static void v(String str) {
        v(tag, str);
    }

    public static void w(String str) {
        w(tag, str);
    }

    public static void d(String str, String str2) {
        if (isLogEnable) {
            Log.d(str, str2);
        }
    }

    public static void debug(String str, boolean z7) {
        tag = str;
        isLogEnable = z7;
    }

    public static void e(String str, String str2) {
        if (isLogEnable) {
            Log.e(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (isLogEnable) {
            Log.i(str, str2);
        }
    }

    public static void v(String str, String str2) {
        if (isLogEnable) {
            Log.v(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (isLogEnable) {
            Log.w(str, str2);
        }
    }
}
