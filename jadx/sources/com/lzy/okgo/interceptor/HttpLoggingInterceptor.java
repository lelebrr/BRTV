package com.lzy.okgo.interceptor;

import com.lzy.okgo.utils.IOUtils;
import com.lzy.okgo.utils.OkLogger;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class HttpLoggingInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private java.util.logging.Level colorLevel;
    private Logger logger;
    private volatile Level printLevel = Level.NONE;

    /* compiled from: MyApplication */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public HttpLoggingInterceptor(String str) {
        this.logger = Logger.getLogger(str);
    }

    private void bodyToString(Request request) {
        try {
            RequestBody requestBodyBody = request.newBuilder().build().body();
            if (requestBodyBody == null) {
                return;
            }
            Buffer buffer = new Buffer();
            requestBodyBody.writeTo(buffer);
            log("\tbody:" + buffer.readString(getCharset(requestBodyBody.contentType())));
        } catch (Exception e5) {
            OkLogger.printStackTrace(e5);
        }
    }

    private static Charset getCharset(MediaType mediaType) {
        Charset charset = mediaType != null ? mediaType.charset(UTF8) : UTF8;
        return charset == null ? UTF8 : charset;
    }

    private static boolean isPlaintext(MediaType mediaType) {
        if (mediaType == null) {
            return false;
        }
        if (mediaType.type() != null && mediaType.type().equals("text")) {
            return true;
        }
        String strSubtype = mediaType.subtype();
        if (strSubtype != null) {
            String lowerCase = strSubtype.toLowerCase();
            if (lowerCase.contains("x-www-form-urlencoded") || lowerCase.contains("json") || lowerCase.contains("xml") || lowerCase.contains("html")) {
                return true;
            }
        }
        return false;
    }

    private void log(String str) {
        this.logger.log(this.colorLevel, str);
    }

    private void logForRequest(Request request, Connection connection) throws IOException {
        StringBuilder sb;
        Level level = this.printLevel;
        Level level2 = Level.BODY;
        boolean z7 = level == level2;
        boolean z10 = this.printLevel == level2 || this.printLevel == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        boolean z11 = requestBodyBody != null;
        try {
            try {
                log("--> " + request.method() + ' ' + request.url() + ' ' + (connection != null ? connection.protocol() : Protocol.HTTP_1_1));
                if (z10) {
                    if (z11) {
                        if (requestBodyBody.contentType() != null) {
                            log("\tContent-Type: " + requestBodyBody.contentType());
                        }
                        if (requestBodyBody.contentLength() != -1) {
                            log("\tContent-Length: " + requestBodyBody.contentLength());
                        }
                    }
                    Headers headers = request.headers();
                    int size = headers.size();
                    for (int i6 = 0; i6 < size; i6++) {
                        String strName = headers.name(i6);
                        if (!"Content-Type".equalsIgnoreCase(strName) && !"Content-Length".equalsIgnoreCase(strName)) {
                            log("\t" + strName + ": " + headers.value(i6));
                        }
                    }
                    log(" ");
                    if (z7 && z11) {
                        if (isPlaintext(requestBodyBody.contentType())) {
                            bodyToString(request);
                        } else {
                            log("\tbody: maybe [binary body], omitted!");
                        }
                    }
                }
                sb = new StringBuilder("--> END ");
            } catch (Exception e5) {
                OkLogger.printStackTrace(e5);
                sb = new StringBuilder("--> END ");
            }
            sb.append(request.method());
            log(sb.toString());
        } catch (Throwable th) {
            log("--> END " + request.method());
            throw th;
        }
    }

    private Response logForResponse(Response response, long j10) {
        Response responseBuild = response.newBuilder().build();
        ResponseBody responseBodyBody = responseBuild.body();
        Level level = this.printLevel;
        Level level2 = Level.BODY;
        boolean z7 = true;
        boolean z10 = level == level2;
        if (this.printLevel != level2 && this.printLevel != Level.HEADERS) {
            z7 = false;
        }
        try {
            try {
                log("<-- " + responseBuild.code() + ' ' + responseBuild.message() + ' ' + responseBuild.request().url() + " (" + j10 + "ms）");
                if (z7) {
                    Headers headers = responseBuild.headers();
                    int size = headers.size();
                    for (int i6 = 0; i6 < size; i6++) {
                        log("\t" + headers.name(i6) + ": " + headers.value(i6));
                    }
                    log(" ");
                    if (z10 && HttpHeaders.hasBody(responseBuild)) {
                        if (responseBodyBody == null) {
                            log("<-- END HTTP");
                            return response;
                        }
                        if (isPlaintext(responseBodyBody.contentType())) {
                            byte[] byteArray = IOUtils.toByteArray(responseBodyBody.byteStream());
                            log("\tbody:" + new String(byteArray, getCharset(responseBodyBody.contentType())));
                            Response responseBuild2 = response.newBuilder().body(ResponseBody.create(responseBodyBody.contentType(), byteArray)).build();
                            log("<-- END HTTP");
                            return responseBuild2;
                        }
                        log("\tbody: maybe [binary body], omitted!");
                    }
                }
            } catch (Exception e5) {
                OkLogger.printStackTrace(e5);
            }
            log("<-- END HTTP");
            return response;
        } catch (Throwable th) {
            log("<-- END HTTP");
            throw th;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Request request = chain.request();
        if (this.printLevel == Level.NONE) {
            return chain.proceed(request);
        }
        logForRequest(request, chain.connection());
        try {
            return logForResponse(chain.proceed(request), TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - System.nanoTime()));
        } catch (Exception e5) {
            log("<-- HTTP FAILED: " + e5);
            throw e5;
        }
    }

    public void setColorLevel(java.util.logging.Level level) {
        this.colorLevel = level;
    }

    public void setPrintLevel(Level level) {
        if (this.printLevel == null) {
            throw new NullPointerException("printLevel == null. Use Level.NONE instead.");
        }
        this.printLevel = level;
    }
}
