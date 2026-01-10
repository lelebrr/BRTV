.class public Lcom/lzy/okgo/exception/HttpException;
.super Ljava/lang/RuntimeException;
.source "MyApplication"


# static fields
.field private static final serialVersionUID:J = 0x79c2914329144639L


# instance fields
.field private code:I

.field private message:Ljava/lang/String;

.field private transient response:Lcom/lzy/okgo/model/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/model/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/lzy/okgo/exception/HttpException;->getMessage(Lcom/lzy/okgo/model/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    .line 4
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lcom/lzy/okgo/model/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static COMMON(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;
    .locals 1

    .line 1
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static NET_ERROR()Lcom/lzy/okgo/exception/HttpException;
    .locals 2

    .line 1
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    .line 2
    .line 3
    const-string v1, "network error! http response code is 404 or 5xx!"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static getMessage(Lcom/lzy/okgo/model/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "response == null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "HTTP "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/lzy/okgo/model/Response;->code()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/lzy/okgo/exception/HttpException;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public response()Lcom/lzy/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/Response<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/exception/HttpException;->response:Lcom/lzy/okgo/model/Response;

    .line 2
    .line 3
    return-object v0
.end method
