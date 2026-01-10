package com.tencent.bugly.proguard;

import android.util.Log;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class al {

    /* renamed from: a, reason: collision with root package name */
    public static String f5649a = "CrashReportInfo";

    /* renamed from: b, reason: collision with root package name */
    public static String f5650b = "CrashReport";

    /* renamed from: c, reason: collision with root package name */
    public static boolean f5651c;

    private static boolean a(int i6, String str, Object... objArr) {
        if (!f5651c) {
            return false;
        }
        if (str == null) {
            str = "null";
        } else if (objArr != null && objArr.length != 0) {
            str = String.format(Locale.US, str, objArr);
        }
        if (i6 == 0) {
            Log.i(f5650b, str);
            return true;
        }
        if (i6 == 1) {
            Log.d(f5650b, str);
            return true;
        }
        if (i6 == 2) {
            Log.w(f5650b, str);
            return true;
        }
        if (i6 == 3) {
            Log.e(f5650b, str);
            return true;
        }
        if (i6 != 5) {
            return false;
        }
        Log.i(f5649a, str);
        return true;
    }

    public static boolean b(String str, Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean c(String str, Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean d(String str, Object... objArr) {
        return a(2, str, objArr);
    }

    public static boolean e(String str, Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(Throwable th) {
        return a(3, th);
    }

    private static boolean a(int i6, Throwable th) {
        if (f5651c) {
            return a(i6, ap.a(th), new Object[0]);
        }
        return false;
    }

    public static boolean a(String str, Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean a(Class cls, String str, Object... objArr) {
        Locale locale = Locale.US;
        return a(0, "[" + cls.getSimpleName() + "] " + str, objArr);
    }

    public static boolean a(Throwable th) {
        return a(2, th);
    }
}
