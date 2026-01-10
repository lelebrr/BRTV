package com.tencent.bugly.proguard;

import android.content.Context;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class af {

    /* renamed from: a, reason: collision with root package name */
    static af f5605a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f5606b;

    /* renamed from: c, reason: collision with root package name */
    public Map<String, String> f5607c = null;

    public af(Context context) {
        this.f5606b = context;
    }

    private static byte[] b(HttpURLConnection httpURLConnection) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
        } catch (Throwable th) {
            th = th;
            bufferedInputStream = null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i6 = bufferedInputStream.read(bArr);
                if (i6 <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i6);
            }
            byteArrayOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                bufferedInputStream.close();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                return null;
            } finally {
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0159 A[PHI: r4 r6 r12 r13 r14 r20
  0x0159: PHI (r4v9 int) = (r4v8 int), (r4v14 int) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x0159: PHI (r6v4 java.lang.Throwable) = (r6v3 java.lang.Throwable), (r6v10 java.lang.Throwable) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x0159: PHI (r12v5 java.lang.String) = (r12v4 java.lang.String), (r12v10 java.lang.String) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x0159: PHI (r13v5 int) = (r13v4 int), (r13v8 int) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x0159: PHI (r14v6 boolean) = (r14v5 boolean), (r14v10 boolean) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]
  0x0159: PHI (r20v2 long) = (r20v1 long), (r20v7 long) binds: [B:92:0x0184, B:76:0x0157] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0177 A[Catch: all -> 0x00d7, TRY_LEAVE, TryCatch #4 {all -> 0x00d7, blocks: (B:23:0x009c, B:25:0x00b3, B:29:0x00c4, B:28:0x00c2, B:67:0x013b, B:71:0x014a, B:85:0x0171, B:87:0x0177, B:51:0x00f5, B:53:0x00fd, B:65:0x0127), top: B:112:0x009c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] a(java.lang.String r23, byte[] r24, com.tencent.bugly.proguard.aj r25, java.util.Map<java.lang.String, java.lang.String> r26) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.af.a(java.lang.String, byte[], com.tencent.bugly.proguard.aj, java.util.Map):byte[]");
    }

    private static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list.size() > 0) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    private static HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            al.e("destUrl is null.", new Object[0]);
            return null;
        }
        HttpURLConnection httpURLConnectionA = a(str2, str);
        if (httpURLConnectionA == null) {
            al.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            httpURLConnectionA.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnectionA.setRequestProperty(entry.getKey(), URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            httpURLConnectionA.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            httpURLConnectionA.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return httpURLConnectionA;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            al.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    private static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            Proxy proxy = an.f5652a;
            if (proxy != null) {
                httpURLConnection = (HttpURLConnection) url.openConnection(proxy);
            } else if (str != null && str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            }
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
