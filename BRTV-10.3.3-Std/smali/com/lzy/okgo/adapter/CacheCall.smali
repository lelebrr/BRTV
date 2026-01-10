.class public Lcom/lzy/okgo/adapter/CacheCall;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/lzy/okgo/adapter/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/adapter/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private policy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/lzy/okgo/adapter/CacheCall;->preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 14
    .line 15
    return-void
.end method

.method private preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/lzy/okgo/adapter/CacheCall$1;->$SwitchMap$com$lzy$okgo$cache$CacheMode:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 79
    .line 80
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 95
    .line 96
    :cond_5
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 97
    .line 98
    const-string v1, "policy == null"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 104
    .line 105
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clone()Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/lzy/okgo/adapter/CacheCall;->clone()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/lzy/okgo/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public getRequest()Lcom/lzy/okgo/request/base/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isExecuted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
