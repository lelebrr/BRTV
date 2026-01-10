.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field protected transient cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected cacheTime:J

.field protected transient call:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient callback:Lcom/lzy/okgo/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected transient converter:Lcom/lzy/okgo/convert/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected headers:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient mRequest:Lokhttp3/Request;

.field protected params:Lcom/lzy/okgo/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected transient uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 10
    .line 11
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v1, "Accept-Language"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const-string v1, "User-Agent"

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getRetryCount()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->getCacheTime()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public adapt()Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    return-object v0
.end method

.method public adapt(Lcom/lzy/okgo/adapter/AdapterParam;Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 8
    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    const-string v0, "cacheKey == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "cachePolicy == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 7
    .line 8
    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okgo/request/base/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 9
    .line 10
    return-object p0
.end method

.method public call(Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "call == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    .line 7
    .line 8
    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    .line 1
    const-string v0, "OkHttpClient == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    return-object p0
.end method

.method public converter(Lcom/lzy/okgo/convert/Converter;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "converter == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 7
    .line 8
    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 4
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/lzy/okgo/adapter/Call;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method public abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getConverter()Lcom/lzy/okgo/convert/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 10
    .line 11
    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 17
    .line 18
    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpParams$FileWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/lzy/okgo/model/HttpParams$FileWrapper;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getMethod()Lcom/lzy/okgo/model/HttpMethod;
.end method

.method public getParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->generateRequestBody()Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lcom/lzy/okgo/request/base/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/callback/Callback;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->setInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    return-object p0
.end method

.method public removeAllHeaders()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpHeaders;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public removeAllParams()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpParams;->clear()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public retryCount(I)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "retryCount must > 0"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setCallback(Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 2
    .line 3
    return-void
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;",
            ")TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    .line 2
    .line 3
    return-object p0
.end method
