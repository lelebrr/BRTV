.class Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;->this$1:Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;->this$1:Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->access$000(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;->this$1:Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->access$000(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;->uploadProgress(Lcom/lzy/okgo/model/Progress;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink$1;->this$1:Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->access$100(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
