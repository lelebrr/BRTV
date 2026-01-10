.class public Lcom/lzy/okgo/OkGo;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/OkGo$OkGoHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:J = 0xea60L

.field public static REFRESH_TIME:J = 0x12cL


# instance fields
.field private context:Landroid/app/Application;

.field private mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

.field private mCommonParams:Lcom/lzy/okgo/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private mRetryCount:I

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 6
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 7
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 8
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 10
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 11
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    invoke-static {}, Lcom/lzy/okgo/https/HttpsUtils;->getSslSocketFactory()Lcom/lzy/okgo/https/HttpsUtils$SSLParams;

    move-result-object v1

    .line 16
    iget-object v2, v1, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    sget-object v1, Lcom/lzy/okgo/https/HttpsUtils;->UnSafeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lzy/okgo/OkGo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/lzy/okgo/OkGo;-><init>()V

    return-void
.end method

.method public static cancelAll(Lokhttp3/OkHttpClient;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 6
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 8
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static cancelTag(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 8
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 11
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/lzy/okgo/request/DeleteRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/DeleteRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/DeleteRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/GetRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static getInstance()Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/lzy/okgo/OkGo$OkGoHolder;->access$000()Lcom/lzy/okgo/OkGo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcom/lzy/okgo/request/HeadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/HeadRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/HeadRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lcom/lzy/okgo/request/OptionsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/OptionsRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/OptionsRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lcom/lzy/okgo/request/PatchRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PatchRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/PatchRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PatchRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/PostRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/lzy/okgo/request/PutRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PutRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/PutRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lcom/lzy/okgo/request/TraceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/TraceRequest<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/request/TraceRequest;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/TraceRequest;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public addCommonParams(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 2
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 4
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 2
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 5
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonHeaders:Lcom/lzy/okgo/model/HttpHeaders;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommonParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mCommonParams:Lcom/lzy/okgo/model/HttpParams;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    .line 2
    .line 3
    const-string v1, "please call OkGo.getInstance().init() first in application!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    .line 9
    .line 10
    return-object v0
.end method

.method public getCookieJar()Lcom/lzy/okgo/cookie/CookieJarImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/lzy/okgo/cookie/CookieJarImpl;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->context:Landroid/app/Application;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/OkGo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->mCacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCacheTime(J)Lcom/lzy/okgo/OkGo;
    .locals 3

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
    iput-wide p1, p0, Lcom/lzy/okgo/OkGo;->mCacheTime:J

    .line 9
    .line 10
    return-object p0
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 1
    const-string v0, "okHttpClient == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/lzy/okgo/OkGo;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 7
    .line 8
    return-object p0
.end method

.method public setRetryCount(I)Lcom/lzy/okgo/OkGo;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/lzy/okgo/OkGo;->mRetryCount:I

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
