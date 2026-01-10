package okhttp3.internal.connection;

import com.lzy.okgo.model.Progress;
import j9.i;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Exchange {
    private final RealCall call;
    private final ExchangeCodec codec;
    private final RealConnection connection;
    private final EventListener eventListener;
    private final ExchangeFinder finder;
    private boolean hasFailure;
    private boolean isDuplex;

    /* compiled from: MyApplication */
    public final class RequestBodySink extends ForwardingSink {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, Sink sink, long j10) {
            super(sink);
            i.f(sink, "delegate");
            this.this$0 = exchange;
            this.contentLength = j10;
        }

        private final <E extends IOException> E complete(E e5) {
            if (this.completed) {
                return e5;
            }
            this.completed = true;
            return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e5);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            long j10 = this.contentLength;
            if (j10 != -1 && this.bytesReceived != j10) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                complete(null);
            } catch (IOException e5) {
                throw complete(e5);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e5) {
                throw complete(e5);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            i.f(buffer, "source");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            long j11 = this.contentLength;
            if (j11 == -1 || this.bytesReceived + j10 <= j11) {
                try {
                    super.write(buffer, j10);
                    this.bytesReceived += j10;
                    return;
                } catch (IOException e5) {
                    throw complete(e5);
                }
            }
            throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + j10));
        }
    }

    /* compiled from: MyApplication */
    public final class ResponseBodySource extends ForwardingSource {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, Source source, long j10) {
            super(source);
            i.f(source, "delegate");
            this.this$0 = exchange;
            this.contentLength = j10;
            this.invokeStartEvent = true;
            if (j10 == 0) {
                complete(null);
            }
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e5) {
                throw complete(e5);
            }
        }

        public final <E extends IOException> E complete(E e5) {
            if (this.completed) {
                return e5;
            }
            this.completed = true;
            if (e5 == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
            }
            return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e5);
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            i.f(buffer, "sink");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            try {
                long j11 = delegate().read(buffer, j10);
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
                }
                if (j11 == -1) {
                    complete(null);
                    return -1L;
                }
                long j12 = this.bytesReceived + j11;
                long j13 = this.contentLength;
                if (j13 != -1 && j12 > j13) {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j12);
                }
                this.bytesReceived = j12;
                if (j12 == j13) {
                    complete(null);
                }
                return j11;
            } catch (IOException e5) {
                throw complete(e5);
            }
        }
    }

    public Exchange(RealCall realCall, EventListener eventListener, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        i.f(realCall, "call");
        i.f(eventListener, "eventListener");
        i.f(exchangeFinder, "finder");
        i.f(exchangeCodec, "codec");
        this.call = realCall;
        this.eventListener = eventListener;
        this.finder = exchangeFinder;
        this.codec = exchangeCodec;
        this.connection = exchangeCodec.getConnection();
    }

    private final void trackFailure(IOException iOException) {
        this.hasFailure = true;
        this.finder.trackFailure(iOException);
        this.codec.getConnection().trackFailure$okhttp(this.call, iOException);
    }

    public final <E extends IOException> E bodyComplete(long j10, boolean z7, boolean z10, E e5) {
        if (e5 != null) {
            trackFailure(e5);
        }
        if (z10) {
            if (e5 != null) {
                this.eventListener.requestFailed(this.call, e5);
            } else {
                this.eventListener.requestBodyEnd(this.call, j10);
            }
        }
        if (z7) {
            if (e5 != null) {
                this.eventListener.responseFailed(this.call, e5);
            } else {
                this.eventListener.responseBodyEnd(this.call, j10);
            }
        }
        return (E) this.call.messageDone$okhttp(this, z10, z7, e5);
    }

    public final void cancel() {
        this.codec.cancel();
    }

    public final Sink createRequestBody(Request request, boolean z7) throws IOException {
        i.f(request, Progress.REQUEST);
        this.isDuplex = z7;
        RequestBody requestBodyBody = request.body();
        i.c(requestBodyBody);
        long jContentLength = requestBodyBody.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this, this.codec.createRequestBody(request, jContentLength), jContentLength);
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e5) {
            this.eventListener.requestFailed(this.call, e5);
            trackFailure(e5);
            throw e5;
        }
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e5) {
            this.eventListener.requestFailed(this.call, e5);
            trackFailure(e5);
            throw e5;
        }
    }

    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final RealConnection getConnection$okhttp() {
        return this.connection;
    }

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final ExchangeFinder getFinder$okhttp() {
        return this.finder;
    }

    public final boolean getHasFailure$okhttp() {
        return this.hasFailure;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !i.a(this.finder.getAddress$okhttp().url().host(), this.connection.route().address().url().host());
    }

    public final boolean isDuplex$okhttp() {
        return this.isDuplex;
    }

    public final RealWebSocket.Streams newWebSocketStreams() throws SocketException {
        this.call.timeoutEarlyExit();
        return this.codec.getConnection().newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getConnection().noNewExchanges$okhttp();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        i.f(response, "response");
        try {
            String strHeader$default = Response.header$default(response, "Content-Type", null, 2, null);
            long jReportedContentLength = this.codec.reportedContentLength(response);
            return new RealResponseBody(strHeader$default, jReportedContentLength, Okio.buffer(new ResponseBodySource(this, this.codec.openResponseBodySource(response), jReportedContentLength)));
        } catch (IOException e5) {
            this.eventListener.responseFailed(this.call, e5);
            trackFailure(e5);
            throw e5;
        }
    }

    public final Response.Builder readResponseHeaders(boolean z7) throws IOException {
        try {
            Response.Builder responseHeaders = this.codec.readResponseHeaders(z7);
            if (responseHeaders != null) {
                responseHeaders.initExchange$okhttp(this);
            }
            return responseHeaders;
        } catch (IOException e5) {
            this.eventListener.responseFailed(this.call, e5);
            trackFailure(e5);
            throw e5;
        }
    }

    public final void responseHeadersEnd(Response response) {
        i.f(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    public final Headers trailers() throws IOException {
        return this.codec.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        i.f(request, Progress.REQUEST);
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e5) {
            this.eventListener.requestFailed(this.call, e5);
            trackFailure(e5);
            throw e5;
        }
    }
}
