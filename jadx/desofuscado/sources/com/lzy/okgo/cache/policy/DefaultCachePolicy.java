package com.lzy.okgo.cache.policy;

import com.lzy.okgo.cache.CacheEntity;
import com.lzy.okgo.callback.Callback;
import com.lzy.okgo.exception.CacheException;
import com.lzy.okgo.request.base.Request;
import okhttp3.Call;
import okhttp3.Response;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DefaultCachePolicy<T> extends BaseCachePolicy<T> {
    public DefaultCachePolicy(Request<T, ? extends Request> request) {
        super(request);
    }

    @Override // com.lzy.okgo.cache.policy.BaseCachePolicy, com.lzy.okgo.cache.policy.CachePolicy
    public boolean onAnalysisResponse(Call call, Response response) {
        if (response.code() != 304) {
            return false;
        }
        CacheEntity<T> cacheEntity = this.cacheEntity;
        if (cacheEntity == null) {
            final com.lzy.okgo.model.Response responseError = com.lzy.okgo.model.Response.error(true, call, response, CacheException.NON_AND_304(this.request.getCacheKey()));
            runOnUiThread(new Runnable() { // from class: com.lzy.okgo.cache.policy.DefaultCachePolicy.3
                @Override // java.lang.Runnable
                public void run() {
                    DefaultCachePolicy.this.mCallback.onError(responseError);
                    DefaultCachePolicy.this.mCallback.onFinish();
                }
            });
        } else {
            final com.lzy.okgo.model.Response responseSuccess = com.lzy.okgo.model.Response.success(true, cacheEntity.getData(), call, response);
            runOnUiThread(new Runnable() { // from class: com.lzy.okgo.cache.policy.DefaultCachePolicy.4
                @Override // java.lang.Runnable
                public void run() {
                    DefaultCachePolicy.this.mCallback.onCacheSuccess(responseSuccess);
                    DefaultCachePolicy.this.mCallback.onFinish();
                }
            });
        }
        return true;
    }

    @Override // com.lzy.okgo.cache.policy.CachePolicy
    public void onError(final com.lzy.okgo.model.Response<T> response) {
        runOnUiThread(new Runnable() { // from class: com.lzy.okgo.cache.policy.DefaultCachePolicy.2
            @Override // java.lang.Runnable
            public void run() {
                DefaultCachePolicy.this.mCallback.onError(response);
                DefaultCachePolicy.this.mCallback.onFinish();
            }
        });
    }

    @Override // com.lzy.okgo.cache.policy.CachePolicy
    public void onSuccess(final com.lzy.okgo.model.Response<T> response) {
        runOnUiThread(new Runnable() { // from class: com.lzy.okgo.cache.policy.DefaultCachePolicy.1
            @Override // java.lang.Runnable
            public void run() {
                DefaultCachePolicy.this.mCallback.onSuccess(response);
                DefaultCachePolicy.this.mCallback.onFinish();
            }
        });
    }

    @Override // com.lzy.okgo.cache.policy.CachePolicy
    public void requestAsync(CacheEntity<T> cacheEntity, Callback<T> callback) {
        this.mCallback = callback;
        runOnUiThread(new Runnable() { // from class: com.lzy.okgo.cache.policy.DefaultCachePolicy.5
            @Override // java.lang.Runnable
            public void run() {
                DefaultCachePolicy defaultCachePolicy = DefaultCachePolicy.this;
                defaultCachePolicy.mCallback.onStart(defaultCachePolicy.request);
                try {
                    DefaultCachePolicy.this.prepareRawCall();
                    DefaultCachePolicy.this.requestNetworkAsync();
                } catch (Throwable th) {
                    DefaultCachePolicy.this.mCallback.onError(com.lzy.okgo.model.Response.error(false, DefaultCachePolicy.this.rawCall, null, th));
                }
            }
        });
    }

    @Override // com.lzy.okgo.cache.policy.CachePolicy
    public com.lzy.okgo.model.Response<T> requestSync(CacheEntity<T> cacheEntity) {
        try {
            prepareRawCall();
            com.lzy.okgo.model.Response<T> responseRequestNetworkSync = requestNetworkSync();
            return (responseRequestNetworkSync.isSuccessful() && responseRequestNetworkSync.code() == 304) ? cacheEntity == null ? com.lzy.okgo.model.Response.error(true, this.rawCall, responseRequestNetworkSync.getRawResponse(), CacheException.NON_AND_304(this.request.getCacheKey())) : com.lzy.okgo.model.Response.success(true, cacheEntity.getData(), this.rawCall, responseRequestNetworkSync.getRawResponse()) : responseRequestNetworkSync;
        } catch (Throwable th) {
            return com.lzy.okgo.model.Response.error(false, this.rawCall, null, th);
        }
    }
}
