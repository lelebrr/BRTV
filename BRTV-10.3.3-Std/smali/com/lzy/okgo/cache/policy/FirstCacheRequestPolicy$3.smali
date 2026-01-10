.class Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

.field final synthetic val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->val$cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v3, v1, v2, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->requestNetworkAsync()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v3, v2, v0, v1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy$3;->this$0:Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 59
    .line 60
    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
