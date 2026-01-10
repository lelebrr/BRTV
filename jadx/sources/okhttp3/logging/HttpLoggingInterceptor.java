package okhttp3.logging;

import a.e;
import a2.a;
import com.lzy.okgo.cookie.SerializableCookie;
import ea.q;
import j9.f;
import j9.i;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import r9.n;
import x8.p;
import x8.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Set<String> headersToRedact;
    private volatile Level level;
    private final Logger logger;

    /* compiled from: MyApplication */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* compiled from: MyApplication */
    public interface Logger {
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final Logger DEFAULT = new Companion.DefaultLogger();

        /* compiled from: MyApplication */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            /* compiled from: MyApplication */
            public static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(String str) {
                    i.f(str, "message");
                    Platform.log$default(Platform.Companion.get(), str, 0, null, 6, null);
                }
            }

            private Companion() {
            }
        }

        void log(String str);
    }

    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || str.equalsIgnoreCase("identity") || str.equalsIgnoreCase("gzip")) ? false : true;
    }

    private final void logHeader(Headers headers, int i6) {
        String strValue = this.headersToRedact.contains(headers.name(i6)) ? "██" : headers.value(i6);
        this.logger.log(headers.name(i6) + ": " + strValue);
    }

    /* renamed from: -deprecated_level, reason: not valid java name */
    public final Level m139deprecated_level() {
        return this.level;
    }

    public final Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        boolean z7;
        String str;
        Charset charset;
        Long lValueOf;
        i.f(chain, "chain");
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z10 = true;
        boolean z11 = level == Level.BODY;
        if (!z11 && level != Level.HEADERS) {
            z10 = false;
        }
        RequestBody requestBodyBody = request.body();
        Connection connection = chain.connection();
        StringBuilder sb = new StringBuilder("--> ");
        sb.append(request.method());
        sb.append(' ');
        sb.append(request.url());
        sb.append(connection != null ? i.k(connection.protocol(), " ") : "");
        String string = sb.toString();
        if (!z10 && requestBodyBody != null) {
            StringBuilder sbW = e.w(string, " (");
            sbW.append(requestBodyBody.contentLength());
            sbW.append("-byte body)");
            string = sbW.toString();
        }
        this.logger.log(string);
        if (z10) {
            Headers headers = request.headers();
            if (requestBodyBody != null) {
                MediaType mediaTypeContentType = requestBodyBody.contentType();
                if (mediaTypeContentType != null && headers.get("Content-Type") == null) {
                    this.logger.log(i.k(mediaTypeContentType, "Content-Type: "));
                }
                if (requestBodyBody.contentLength() != -1 && headers.get("Content-Length") == null) {
                    this.logger.log(i.k(Long.valueOf(requestBodyBody.contentLength()), "Content-Length: "));
                }
            }
            int size = headers.size();
            for (int i6 = 0; i6 < size; i6++) {
                logHeader(headers, i6);
            }
            if (!z11 || requestBodyBody == null) {
                z7 = z11;
                str = "UTF_8";
                this.logger.log(i.k(request.method(), "--> END "));
            } else {
                if (bodyHasUnknownEncoding(request.headers())) {
                    this.logger.log("--> END " + request.method() + " (encoded body omitted)");
                } else if (requestBodyBody.isDuplex()) {
                    this.logger.log("--> END " + request.method() + " (duplex request body omitted)");
                } else if (requestBodyBody.isOneShot()) {
                    this.logger.log("--> END " + request.method() + " (one-shot body omitted)");
                } else {
                    Buffer buffer = new Buffer();
                    requestBodyBody.writeTo(buffer);
                    MediaType mediaTypeContentType2 = requestBodyBody.contentType();
                    Charset charset2 = mediaTypeContentType2 == null ? null : mediaTypeContentType2.charset(StandardCharsets.UTF_8);
                    if (charset2 == null) {
                        charset2 = StandardCharsets.UTF_8;
                        i.e(charset2, "UTF_8");
                    }
                    this.logger.log("");
                    if (Utf8Kt.isProbablyUtf8(buffer)) {
                        this.logger.log(buffer.readString(charset2));
                        Logger logger = this.logger;
                        StringBuilder sb2 = new StringBuilder("--> END ");
                        sb2.append(request.method());
                        sb2.append(" (");
                        z7 = z11;
                        sb2.append(requestBodyBody.contentLength());
                        sb2.append("-byte body)");
                        logger.log(sb2.toString());
                        str = "UTF_8";
                    } else {
                        z7 = z11;
                        Logger logger2 = this.logger;
                        StringBuilder sb3 = new StringBuilder("--> END ");
                        sb3.append(request.method());
                        sb3.append(" (binary ");
                        str = "UTF_8";
                        sb3.append(requestBodyBody.contentLength());
                        sb3.append("-byte body omitted)");
                        logger2.log(sb3.toString());
                    }
                }
                z7 = z11;
                str = "UTF_8";
            }
        } else {
            z7 = z11;
            str = "UTF_8";
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ResponseBody responseBodyBody = responseProceed.body();
            i.c(responseBodyBody);
            long jContentLength = responseBodyBody.contentLength();
            String str2 = jContentLength != -1 ? jContentLength + "-byte" : "unknown-length";
            Logger logger3 = this.logger;
            StringBuilder sb4 = new StringBuilder("<-- ");
            sb4.append(responseProceed.code());
            sb4.append(responseProceed.message().length() == 0 ? "" : q.p(" ", responseProceed.message()));
            sb4.append(' ');
            sb4.append(responseProceed.request().url());
            sb4.append(" (");
            sb4.append(millis);
            sb4.append("ms");
            sb4.append(!z10 ? e.r(", ", str2, " body") : "");
            sb4.append(')');
            logger3.log(sb4.toString());
            if (z10) {
                Headers headers2 = responseProceed.headers();
                int size2 = headers2.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    logHeader(headers2, i10);
                }
                if (!z7 || !HttpHeaders.promisesBody(responseProceed)) {
                    this.logger.log("<-- END HTTP");
                } else if (bodyHasUnknownEncoding(responseProceed.headers())) {
                    this.logger.log("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource bufferedSourceSource = responseBodyBody.source();
                    bufferedSourceSource.request(Long.MAX_VALUE);
                    Buffer buffer2 = bufferedSourceSource.getBuffer();
                    if ("gzip".equalsIgnoreCase(headers2.get("Content-Encoding"))) {
                        lValueOf = Long.valueOf(buffer2.size());
                        GzipSource gzipSource = new GzipSource(buffer2.clone());
                        try {
                            buffer2 = new Buffer();
                            buffer2.writeAll(gzipSource);
                            charset = null;
                            a.r(gzipSource, null);
                        } finally {
                        }
                    } else {
                        charset = null;
                        lValueOf = null;
                    }
                    MediaType mediaTypeContentType3 = responseBodyBody.contentType();
                    Charset charset3 = mediaTypeContentType3 == null ? charset : mediaTypeContentType3.charset(StandardCharsets.UTF_8);
                    if (charset3 == null) {
                        charset3 = StandardCharsets.UTF_8;
                        i.e(charset3, str);
                    }
                    if (!Utf8Kt.isProbablyUtf8(buffer2)) {
                        this.logger.log("");
                        this.logger.log("<-- END HTTP (binary " + buffer2.size() + "-byte body omitted)");
                        return responseProceed;
                    }
                    if (jContentLength != 0) {
                        this.logger.log("");
                        this.logger.log(buffer2.clone().readString(charset3));
                    }
                    if (lValueOf != null) {
                        this.logger.log("<-- END HTTP (" + buffer2.size() + "-byte, " + lValueOf + "-gzipped-byte body)");
                    } else {
                        this.logger.log("<-- END HTTP (" + buffer2.size() + "-byte body)");
                    }
                }
            }
            return responseProceed;
        } catch (Exception e5) {
            this.logger.log(i.k(e5, "<-- HTTP FAILED: "));
            throw e5;
        }
    }

    public final void level(Level level) {
        i.f(level, "<set-?>");
        this.level = level;
    }

    public final void redactHeader(String str) {
        i.f(str, SerializableCookie.NAME);
        TreeSet treeSet = new TreeSet(n.Q());
        p.S(treeSet, this.headersToRedact);
        treeSet.add(str);
        this.headersToRedact = treeSet;
    }

    public final HttpLoggingInterceptor setLevel(Level level) {
        i.f(level, "level");
        level(level);
        return this;
    }

    public HttpLoggingInterceptor(Logger logger) {
        i.f(logger, "logger");
        this.logger = logger;
        this.headersToRedact = t.f11100a;
        this.level = Level.NONE;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i6, f fVar) {
        this((i6 & 1) != 0 ? Logger.DEFAULT : logger);
    }
}
