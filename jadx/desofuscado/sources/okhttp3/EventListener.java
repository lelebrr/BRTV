package okhttp3;

import com.lzy.okgo.model.Progress;
import j9.f;
import j9.i;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class EventListener {
    public static final Companion Companion = new Companion(null);
    public static final EventListener NONE = new EventListener() { // from class: okhttp3.EventListener$Companion$NONE$1
    };

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: MyApplication */
    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "cachedResponse");
    }

    public void cacheHit(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
    }

    public void cacheMiss(Call call) {
        i.f(call, "call");
    }

    public void callEnd(Call call) {
        i.f(call, "call");
    }

    public void callFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
    }

    public void callStart(Call call) {
        i.f(call, "call");
    }

    public void canceled(Call call) {
        i.f(call, "call");
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
        i.f(iOException, "ioe");
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        i.f(call, "call");
        i.f(inetSocketAddress, "inetSocketAddress");
        i.f(proxy, "proxy");
    }

    public void connectionAcquired(Call call, Connection connection) {
        i.f(call, "call");
        i.f(connection, "connection");
    }

    public void connectionReleased(Call call, Connection connection) {
        i.f(call, "call");
        i.f(connection, "connection");
    }

    public void dnsEnd(Call call, String str, List<InetAddress> list) {
        i.f(call, "call");
        i.f(str, "domainName");
        i.f(list, "inetAddressList");
    }

    public void dnsStart(Call call, String str) {
        i.f(call, "call");
        i.f(str, "domainName");
    }

    public void proxySelectEnd(Call call, HttpUrl httpUrl, List<Proxy> list) {
        i.f(call, "call");
        i.f(httpUrl, Progress.URL);
        i.f(list, "proxies");
    }

    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        i.f(call, "call");
        i.f(httpUrl, Progress.URL);
    }

    public void requestBodyEnd(Call call, long j10) {
        i.f(call, "call");
    }

    public void requestBodyStart(Call call) {
        i.f(call, "call");
    }

    public void requestFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
    }

    public void requestHeadersEnd(Call call, Request request) {
        i.f(call, "call");
        i.f(request, Progress.REQUEST);
    }

    public void requestHeadersStart(Call call) {
        i.f(call, "call");
    }

    public void responseBodyEnd(Call call, long j10) {
        i.f(call, "call");
    }

    public void responseBodyStart(Call call) {
        i.f(call, "call");
    }

    public void responseFailed(Call call, IOException iOException) {
        i.f(call, "call");
        i.f(iOException, "ioe");
    }

    public void responseHeadersEnd(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
    }

    public void responseHeadersStart(Call call) {
        i.f(call, "call");
    }

    public void satisfactionFailure(Call call, Response response) {
        i.f(call, "call");
        i.f(response, "response");
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        i.f(call, "call");
    }

    public void secureConnectStart(Call call) {
        i.f(call, "call");
    }
}
