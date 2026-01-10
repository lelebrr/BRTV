.class public final Landroidx/media3/datasource/HttpEngineDataSource$Factory;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpEngineDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private connectTimeoutMs:I

.field private contentTypePredicate:Lb7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/n;"
        }
    .end annotation
.end field

.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field private final executor:Ljava/util/concurrent/Executor;

.field private handleSetCookieRequests:Z

.field private final httpEngine:Landroid/net/http/HttpEngine;

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private requestPriority:I

.field private resetTimeoutOnRedirects:Z

.field private transferListener:Landroidx/media3/datasource/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/media3/datasource/b;->e(Ljava/lang/Object;)Landroid/net/http/HttpEngine;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->httpEngine:Landroid/net/http/HttpEngine;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->requestPriority:I

    .line 25
    .line 26
    const/16 p1, 0x1f40

    .line 27
    .line 28
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->connectTimeoutMs:I

    .line 29
    .line 30
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->readTimeoutMs:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 13
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 2
    new-instance v12, Landroidx/media3/datasource/HttpEngineDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->httpEngine:Landroid/net/http/HttpEngine;

    iget-object v2, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->executor:Ljava/util/concurrent/Executor;

    iget v3, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->requestPriority:I

    iget v4, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->connectTimeoutMs:I

    iget v5, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->readTimeoutMs:I

    iget-boolean v6, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->resetTimeoutOnRedirects:Z

    iget-boolean v7, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->handleSetCookieRequests:Z

    iget-object v8, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->userAgent:Ljava/lang/String;

    iget-object v9, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    iget-object v10, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->contentTypePredicate:Lb7/n;

    iget-boolean v11, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->keepPostFor302Redirects:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media3/datasource/HttpEngineDataSource;-><init>(Landroid/net/http/HttpEngine;Ljava/util/concurrent/Executor;IIIZZLjava/lang/String;Landroidx/media3/datasource/HttpDataSource$RequestProperties;Lb7/n;Z)V

    .line 3
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v12, v0}, Landroidx/media3/datasource/BaseDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v12
.end method

.method public setConnectionTimeoutMs(I)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->connectTimeoutMs:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentTypePredicate(Lb7/n;)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/n;",
            ")",
            "Landroidx/media3/datasource/HttpEngineDataSource$Factory;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->contentTypePredicate:Lb7/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpEngineDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/datasource/HttpEngineDataSource$Factory;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method

.method public setHandleSetCookieRequests(Z)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->handleSetCookieRequests:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setKeepPostFor302Redirects(Z)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->keepPostFor302Redirects:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setReadTimeoutMs(I)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->readTimeoutMs:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestPriority(I)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->requestPriority:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setResetTimeoutOnRedirects(Z)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->resetTimeoutOnRedirects:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTransferListener(Landroidx/media3/datasource/TransferListener;)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/HttpEngineDataSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$Factory;->userAgent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
