package org.bitspark.android.utils;

import android.content.Context;
import com.nmmedit.protect.NativeUtil;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import okhttp3.OkHttpClient;

/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a, reason: collision with root package name */
    public static long f8783a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f8784b;

    /* renamed from: c, reason: collision with root package name */
    public static final StringBuilder f8785c;
    public static final Formatter d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f8786e;

    public static native String a(Long l9);

    public static native String b(long j10);

    public static native long c(long j10);

    public static native OkHttpClient d(String str);

    public static native Boolean e(String str, boolean z7);

    public static native Integer f(int i6, String str);

    public static native String g(String str, String str2);

    public static native String h(Long l9);

    public static native void i(String str, String str2);

    public static native long j(Long l9);

    public static native void k();

    public static native void l(String str);

    public static native void m(int i6, String str);

    public static native void n(String str, String str2);

    public static native void o(String str, HashSet hashSet);

    public static native Boolean p(Context context);

    public static native String q(long j10);

    static {
        NativeUtil.classesInit0(5);
        StringBuilder sb = new StringBuilder();
        f8785c = sb;
        d = new Formatter(sb, Locale.getDefault());
        f8786e = new c();
    }
}
