package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;
import java.nio.charset.Charset;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public final class e implements Interceptor {

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f8767c;

    /* renamed from: a, reason: collision with root package name */
    public volatile d f8768a;

    /* renamed from: b, reason: collision with root package name */
    public String f8769b;

    public static native boolean b(MediaType mediaType);

    public final native void a(Request request);

    public final native void c(String str);

    public final native void d(d dVar);

    @Override // okhttp3.Interceptor
    public final native Response intercept(Interceptor.Chain chain);

    static {
        NativeUtil.classesInit0(13);
        f8767c = Charset.forName(a2.a.s("8k2A1gI=\n", "pxnG+zqDX+Y=\n"));
    }
}
