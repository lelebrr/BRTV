package org.bitspark.android.utils;

import com.nmmedit.protect.NativeUtil;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* loaded from: classes.dex */
public final class l implements HostnameVerifier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8782a;

    static {
        NativeUtil.classesInit0(6);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final native boolean verify(String str, SSLSession sSLSession);
}
