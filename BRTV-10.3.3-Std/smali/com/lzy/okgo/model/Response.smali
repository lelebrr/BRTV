.class public final Lcom/lzy/okgo/model/Response;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isFromCache:Z

.field private rawCall:Lokhttp3/Call;

.field private rawResponse:Lokhttp3/Response;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/Response;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/lzy/okgo/model/Response;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/Response;->setFromCache(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Response;->setRawCall(Lokhttp3/Call;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/Response;->setRawResponse(Lokhttp3/Response;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/Response;->setException(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/lzy/okgo/model/Response;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/lzy/okgo/model/Response;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/model/Response;->setFromCache(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/Response;->setBody(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/lzy/okgo/model/Response;->setRawCall(Lokhttp3/Call;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/lzy/okgo/model/Response;->setRawResponse(Lokhttp3/Response;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->body:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public code()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawCall:Lokhttp3/Call;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawResponse()Lokhttp3/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public headers()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/lzy/okgo/model/Response;->isFromCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->body:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setFromCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lzy/okgo/model/Response;->isFromCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRawCall(Lokhttp3/Call;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->rawCall:Lokhttp3/Call;

    .line 2
    .line 3
    return-void
.end method

.method public setRawResponse(Lokhttp3/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/model/Response;->rawResponse:Lokhttp3/Response;

    .line 2
    .line 3
    return-void
.end method
