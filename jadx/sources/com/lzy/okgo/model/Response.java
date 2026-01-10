package com.lzy.okgo.model;

import okhttp3.Call;
import okhttp3.Headers;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Response<T> {
    private T body;
    private boolean isFromCache;
    private Call rawCall;
    private okhttp3.Response rawResponse;
    private Throwable throwable;

    public static <T> Response<T> error(boolean z7, Call call, okhttp3.Response response, Throwable th) {
        Response<T> response2 = new Response<>();
        response2.setFromCache(z7);
        response2.setRawCall(call);
        response2.setRawResponse(response);
        response2.setException(th);
        return response2;
    }

    public static <T> Response<T> success(boolean z7, T t5, Call call, okhttp3.Response response) {
        Response<T> response2 = new Response<>();
        response2.setFromCache(z7);
        response2.setBody(t5);
        response2.setRawCall(call);
        response2.setRawResponse(response);
        return response2;
    }

    public T body() {
        return this.body;
    }

    public int code() {
        okhttp3.Response response = this.rawResponse;
        if (response == null) {
            return -1;
        }
        return response.code();
    }

    public Throwable getException() {
        return this.throwable;
    }

    public Call getRawCall() {
        return this.rawCall;
    }

    public okhttp3.Response getRawResponse() {
        return this.rawResponse;
    }

    public Headers headers() {
        okhttp3.Response response = this.rawResponse;
        if (response == null) {
            return null;
        }
        return response.headers();
    }

    public boolean isFromCache() {
        return this.isFromCache;
    }

    public boolean isSuccessful() {
        return this.throwable == null;
    }

    public String message() {
        okhttp3.Response response = this.rawResponse;
        if (response == null) {
            return null;
        }
        return response.message();
    }

    public void setBody(T t5) {
        this.body = t5;
    }

    public void setException(Throwable th) {
        this.throwable = th;
    }

    public void setFromCache(boolean z7) {
        this.isFromCache = z7;
    }

    public void setRawCall(Call call) {
        this.rawCall = call;
    }

    public void setRawResponse(okhttp3.Response response) {
        this.rawResponse = response;
    }
}
