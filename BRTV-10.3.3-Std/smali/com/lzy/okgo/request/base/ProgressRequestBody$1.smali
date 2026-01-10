.class Lcom/lzy/okgo/request/base/ProgressRequestBody$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/ProgressRequestBody;->onProgress(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->val$progress:Lcom/lzy/okgo/model/Progress;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->access$200(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/callback/Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->this$0:Lcom/lzy/okgo/request/base/ProgressRequestBody;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->access$200(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/callback/Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;->val$progress:Lcom/lzy/okgo/model/Progress;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->uploadProgress(Lcom/lzy/okgo/model/Progress;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
