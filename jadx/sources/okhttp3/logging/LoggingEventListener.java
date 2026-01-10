package okhttp3.logging;

import com.lzy.okgo.model.Progress;
import j9.f;
import j9.i;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class LoggingEventListener extends EventListener {
    private final HttpLoggingInterceptor.Logger logger;
    private long startNs;

    /* compiled from: MyApplication */
    public static class Factory implements EventListener.Factory {
        private final HttpLoggingInterceptor.Logger logger;

        public Factory() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            i.f(call, "call");
            return new LoggingEventListener(this.logger, null);
        }

        public Factory(HttpLoggingInterceptor.Logger logger) {
            i.f(logger, "logger");
            this.logger = logger;
        }

        public /* synthetic */ Factory(HttpLoggingInterceptor.Logger logger, int i6, f fVar) {
            this((i6 & 1) != 0 ? HttpLoggingInterceptor.Logger.DEFAULT : logger);
        }
    }

    public /* synthetic */ LoggingEventListener(HttpLoggingInterceptor.Logger logger, f fVar) {
        this(logger);
    }

    private final void logWithTime(String str) {
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        this.logger.log("[" + millis + " ms] " + str);
    }

    @Override // okhttp3.EventListener
    public void cacheConditionalHit(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "cachedResponse");
        logWithTime(i.k(response, "cacheConditionalHit: "));
    }

    @Override // okhttp3.EventListener
    public void cacheHit(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
        logWithTime(i.k(response, "cacheHit: "));
    }

    @Override // okhttp3.EventListener
    public void cacheMiss(Call call) {
        i.f(call, "call");
        logWithTime("cacheMiss");
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        i.f(call, "call");
        logWithTime("callEnd");
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
        logWithTime(i.k(iOException, "callFailed: "));
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        i.f(call, "call");
        this.startNs = System.nanoTime();
        logWithTime(i.k(call.request(), "callStart: "));
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        i.f(call, "call");
        logWithTime("canceled");
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
        logWithTime(i.k(protocol, "connectEnd: "));
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
        i.f(iOException, "ioe");
        logWithTime("connectFailed: " + protocol + ' ' + iOException);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
        logWithTime("connectStart: " + inetSocketAddress + ' ' + proxy);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        i.f(call, "call");
        i.f(connection, "connection");
        logWithTime(i.k(connection, "connectionAcquired: "));
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        i.f(call, "call");
        i.f(connection, "connection");
        logWithTime("connectionReleased");
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String str, List<? extends InetAddress> list) {
        i.f(call, "call");
        i.f(str, "domainName");
        i.f(list, "inetAddressList");
        logWithTime(i.k(list, "dnsEnd: "));
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String str) {
        i.f(call, "call");
        i.f(str, "domainName");
        logWithTime(i.k(str, "dnsStart: "));
    }

    @Override // okhttp3.EventListener
    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<? extends Proxy> list) {
        i.f(call, "call");
        i.f(httpUrl, Progress.URL);
        i.f(list, "proxies");
        logWithTime(i.k(list, "proxySelectEnd: "));
    }

    @Override // okhttp3.EventListener
    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        i.f(call, "call");
        i.f(httpUrl, Progress.URL);
        logWithTime(i.k(httpUrl, "proxySelectStart: "));
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long j10) {
        i.f(call, "call");
        logWithTime(i.k(Long.valueOf(j10), "requestBodyEnd: byteCount="));
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        i.f(call, "call");
        logWithTime("requestBodyStart");
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
        logWithTime(i.k(iOException, "requestFailed: "));
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        i.f(call, "call");
        i.f(request, Progress.REQUEST);
        logWithTime("requestHeadersEnd");
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        i.f(call, "call");
        logWithTime("requestHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long j10) {
        i.f(call, "call");
        logWithTime(i.k(Long.valueOf(j10), "responseBodyEnd: byteCount="));
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        i.f(call, "call");
        logWithTime("responseBodyStart");
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
        logWithTime(i.k(iOException, "responseFailed: "));
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
        logWithTime(i.k(response, "responseHeadersEnd: "));
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        i.f(call, "call");
        logWithTime("responseHeadersStart");
    }

    @Override // okhttp3.EventListener
    public void satisfactionFailure(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
        logWithTime(i.k(response, "satisfactionFailure: "));
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        i.f(call, "call");
        logWithTime(i.k(handshake, "secureConnectEnd: "));
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        i.f(call, "call");
        logWithTime("secureConnectStart");
    }

    private LoggingEventListener(HttpLoggingInterceptor.Logger logger) {
        this.logger = logger;
    }
}
