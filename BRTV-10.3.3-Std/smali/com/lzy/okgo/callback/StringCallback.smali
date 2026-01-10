.class public abstract Lcom/lzy/okgo/callback/StringCallback;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/lzy/okgo/convert/StringConvert;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/lzy/okgo/convert/StringConvert;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/lzy/okgo/convert/StringConvert;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/lzy/okgo/callback/StringCallback;->convert:Lcom/lzy/okgo/convert/StringConvert;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/callback/StringCallback;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/callback/StringCallback;->convert:Lcom/lzy/okgo/convert/StringConvert;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/convert/StringConvert;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v0
.end method
