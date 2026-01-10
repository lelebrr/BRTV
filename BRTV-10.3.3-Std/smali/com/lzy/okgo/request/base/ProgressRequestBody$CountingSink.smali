.class final Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountingSink"
.end annotation


# instance fields
.field private progress:Lcom/lzy/okgo/model/Progress;

.field final synthetic this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/lzy/okgo/model/Progress;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/lzy/okgo/model/Progress;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->contentLength()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p2, Lcom/lzy/okgo/model/Progress;->totalSize:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->progress:Lcom/lzy/okgo/model/Progress;

    .line 5
    .line 6
    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p3, v0}, Lcom/lzy/okgo/model/Progress;->changeProgress(Lcom/lzy/okgo/model/Progress;JLcom/lzy/okgo/model/Progress$Action;)Lcom/lzy/okgo/model/Progress;

    .line 12
    .line 13
    .line 14
    return-void
.end method
