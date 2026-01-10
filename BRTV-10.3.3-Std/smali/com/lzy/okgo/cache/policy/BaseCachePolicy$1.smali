.class Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->requestNetworkAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cache/policy/BaseCachePolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 6
    .line 7
    iget v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getRetryCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 20
    .line 21
    iget p2, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    iput p2, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 38
    .line 39
    iget-boolean p1, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->canceled:Z

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 46
    .line 47
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 54
    .line 55
    invoke-interface {p1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {v0, p1, v1, p2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 72
    .line 73
    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x194

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v1, 0x1f4

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getConverter()Lcom/lzy/okgo/convert/Converter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p2}, Lcom/lzy/okgo/convert/Converter;->convertResponse(Lokhttp3/Response;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v1, v3, v0}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->access$000(Lcom/lzy/okgo/cache/policy/BaseCachePolicy;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0, p1, p2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->onSuccess(Lcom/lzy/okgo/model/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    invoke-static {v2, p1, p2, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 61
    .line 62
    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR()Lcom/lzy/okgo/exception/HttpException;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, p1, p2, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
