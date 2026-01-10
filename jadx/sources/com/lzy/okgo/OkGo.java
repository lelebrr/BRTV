package com.lzy.okgo;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.cookie.CookieJarImpl;
import com.lzy.okgo.https.HttpsUtils;
import com.lzy.okgo.interceptor.HttpLoggingInterceptor;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.DeleteRequest;
import com.lzy.okgo.request.GetRequest;
import com.lzy.okgo.request.HeadRequest;
import com.lzy.okgo.request.OptionsRequest;
import com.lzy.okgo.request.PatchRequest;
import com.lzy.okgo.request.PostRequest;
import com.lzy.okgo.request.PutRequest;
import com.lzy.okgo.request.TraceRequest;
import com.lzy.okgo.utils.HttpUtils;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class OkGo {
    public static final long DEFAULT_MILLISECONDS = 60000;
    public static long REFRESH_TIME = 300;
    private Application context;
    private CacheMode mCacheMode;
    private long mCacheTime;
    private HttpHeaders mCommonHeaders;
    private HttpParams mCommonParams;
    private Handler mDelivery;
    private int mRetryCount;
    private OkHttpClient okHttpClient;

    /* compiled from: MyApplication */
    public static class OkGoHolder {
        private static OkGo holder = new OkGo();

        private OkGoHolder() {
        }
    }

    public static <T> DeleteRequest<T> delete(String str) {
        return new DeleteRequest<>(str);
    }

    public static <T> GetRequest<T> get(String str) {
        return new GetRequest<>(str);
    }

    public static OkGo getInstance() {
        return OkGoHolder.holder;
    }

    public static <T> HeadRequest<T> head(String str) {
        return new HeadRequest<>(str);
    }

    public static <T> OptionsRequest<T> options(String str) {
        return new OptionsRequest<>(str);
    }

    public static <T> PatchRequest<T> patch(String str) {
        return new PatchRequest<>(str);
    }

    public static <T> PostRequest<T> post(String str) {
        return new PostRequest<>(str);
    }

    public static <T> PutRequest<T> put(String str) {
        return new PutRequest<>(str);
    }

    public static <T> TraceRequest<T> trace(String str) {
        return new TraceRequest<>(str);
    }

    public OkGo addCommonHeaders(HttpHeaders httpHeaders) {
        if (this.mCommonHeaders == null) {
            this.mCommonHeaders = new HttpHeaders();
        }
        this.mCommonHeaders.put(httpHeaders);
        return this;
    }

    public OkGo addCommonParams(HttpParams httpParams) {
        if (this.mCommonParams == null) {
            this.mCommonParams = new HttpParams();
        }
        this.mCommonParams.put(httpParams);
        return this;
    }

    public void cancelAll() {
        Iterator<Call> it = getOkHttpClient().dispatcher().queuedCalls().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        Iterator<Call> it2 = getOkHttpClient().dispatcher().runningCalls().iterator();
        while (it2.hasNext()) {
            it2.next().cancel();
        }
    }

    public void cancelTag(Object obj) {
        if (obj == null) {
            return;
        }
        for (Call call : getOkHttpClient().dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        for (Call call2 : getOkHttpClient().dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }

    public CacheMode getCacheMode() {
        return this.mCacheMode;
    }

    public long getCacheTime() {
        return this.mCacheTime;
    }

    public HttpHeaders getCommonHeaders() {
        return this.mCommonHeaders;
    }

    public HttpParams getCommonParams() {
        return this.mCommonParams;
    }

    public Context getContext() {
        HttpUtils.checkNotNull(this.context, "please call OkGo.getInstance().init() first in application!");
        return this.context;
    }

    public CookieJarImpl getCookieJar() {
        return (CookieJarImpl) this.okHttpClient.cookieJar();
    }

    public Handler getDelivery() {
        return this.mDelivery;
    }

    public OkHttpClient getOkHttpClient() {
        HttpUtils.checkNotNull(this.okHttpClient, "please call OkGo.getInstance().setOkHttpClient() first in application!");
        return this.okHttpClient;
    }

    public int getRetryCount() {
        return this.mRetryCount;
    }

    public OkGo init(Application application) {
        this.context = application;
        return this;
    }

    public OkGo setCacheMode(CacheMode cacheMode) {
        this.mCacheMode = cacheMode;
        return this;
    }

    public OkGo setCacheTime(long j10) {
        if (j10 <= -1) {
            j10 = -1;
        }
        this.mCacheTime = j10;
        return this;
    }

    public OkGo setOkHttpClient(OkHttpClient okHttpClient) {
        HttpUtils.checkNotNull(okHttpClient, "okHttpClient == null");
        this.okHttpClient = okHttpClient;
        return this;
    }

    public OkGo setRetryCount(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException("retryCount must > 0");
        }
        this.mRetryCount = i6;
        return this;
    }

    private OkGo() {
        this.mDelivery = new Handler(Looper.getMainLooper());
        this.mRetryCount = 3;
        this.mCacheTime = -1L;
        this.mCacheMode = CacheMode.NO_CACHE;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("OkGo");
        httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.setColorLevel(Level.INFO);
        builder.addInterceptor(httpLoggingInterceptor);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.readTimeout(60000L, timeUnit);
        builder.writeTimeout(60000L, timeUnit);
        builder.connectTimeout(60000L, timeUnit);
        HttpsUtils.SSLParams sslSocketFactory = HttpsUtils.getSslSocketFactory();
        builder.sslSocketFactory(sslSocketFactory.sSLSocketFactory, sslSocketFactory.trustManager);
        builder.hostnameVerifier(HttpsUtils.UnSafeHostnameVerifier);
        this.okHttpClient = builder.build();
    }

    public static void cancelAll(OkHttpClient okHttpClient) {
        if (okHttpClient == null) {
            return;
        }
        Iterator<Call> it = okHttpClient.dispatcher().queuedCalls().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        Iterator<Call> it2 = okHttpClient.dispatcher().runningCalls().iterator();
        while (it2.hasNext()) {
            it2.next().cancel();
        }
    }

    public static void cancelTag(OkHttpClient okHttpClient, Object obj) {
        if (okHttpClient == null || obj == null) {
            return;
        }
        for (Call call : okHttpClient.dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        for (Call call2 : okHttpClient.dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }
}
