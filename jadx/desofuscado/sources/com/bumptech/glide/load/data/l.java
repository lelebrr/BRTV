package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.cast.y6;
import ea.q;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements e {

    /* renamed from: a, reason: collision with root package name */
    public final b3.k f3560a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3561b;

    /* renamed from: c, reason: collision with root package name */
    public HttpURLConnection f3562c;
    public InputStream d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3563e;

    public l(b3.k kVar, int i6) {
        this.f3560a = kVar;
        this.f3561b = i6;
    }

    public static int c(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e5) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e5);
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() throws IOException {
        InputStream inputStream = this.d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3562c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3562c = null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f3563e = true;
    }

    public final InputStream d(URL url, int i6, URL url2, Map map) throws IOException {
        if (i6 >= 5) {
            throw new y6("Too many (> 5) redirects!", -1, null);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new y6("In re-direct loop", -1, null);
                }
            } catch (URISyntaxException unused) {
            }
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            int i10 = this.f3561b;
            httpURLConnection.setConnectTimeout(i10);
            httpURLConnection.setReadTimeout(i10);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f3562c = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.d = this.f3562c.getInputStream();
                if (this.f3563e) {
                    return null;
                }
                int iC = c(this.f3562c);
                int i11 = iC / 100;
                if (i11 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f3562c;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.d = new r3.c(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                            }
                            this.d = httpURLConnection2.getInputStream();
                        }
                        return this.d;
                    } catch (IOException e5) {
                        throw new y6("Failed to obtain InputStream", c(httpURLConnection2), e5);
                    }
                }
                if (i11 != 3) {
                    if (iC == -1) {
                        throw new y6("Http request failed", iC, null);
                    }
                    try {
                        throw new y6(this.f3562c.getResponseMessage(), iC, null);
                    } catch (IOException e10) {
                        throw new y6("Failed to get a response message", iC, e10);
                    }
                }
                String headerField = this.f3562c.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new y6("Received empty or null redirect url", iC, null);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    b();
                    return d(url3, i6 + 1, url, map);
                } catch (MalformedURLException e11) {
                    throw new y6(q.p("Bad redirect url: ", headerField), iC, e11);
                }
            } catch (IOException e12) {
                throw new y6("Failed to connect or obtain data", c(this.f3562c), e12);
            }
        } catch (IOException e13) {
            throw new y6("URL.openConnection threw", 0, e13);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int e() {
        return 2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, d dVar) {
        StringBuilder sb;
        b3.k kVar = this.f3560a;
        int i6 = r3.h.f9499b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                if (kVar.f == null) {
                    kVar.f = new URL(kVar.d());
                }
                dVar.d(d(kVar.f, 0, null, kVar.f3201b.b()));
            } catch (IOException e5) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e5);
                }
                dVar.c(e5);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                } else {
                    sb = new StringBuilder("Finished http url fetcher fetch in ");
                }
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
                sb.append(r3.h.a(jElapsedRealtimeNanos));
                Log.v("HttpUrlFetcher", sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + r3.h.a(jElapsedRealtimeNanos));
            }
            throw th;
        }
    }
}
