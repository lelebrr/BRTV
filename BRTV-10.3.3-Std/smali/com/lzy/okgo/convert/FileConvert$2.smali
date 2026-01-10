.class Lcom/lzy/okgo/convert/FileConvert$2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/convert/FileConvert;->onProgress(Lcom/lzy/okgo/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/convert/FileConvert;

.field final synthetic val$progress:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/convert/FileConvert;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/convert/FileConvert$2;->this$0:Lcom/lzy/okgo/convert/FileConvert;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/lzy/okgo/convert/FileConvert$2;->val$progress:Lcom/lzy/okgo/model/Progress;

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
    iget-object v0, p0, Lcom/lzy/okgo/convert/FileConvert$2;->this$0:Lcom/lzy/okgo/convert/FileConvert;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lzy/okgo/convert/FileConvert;->access$100(Lcom/lzy/okgo/convert/FileConvert;)Lcom/lzy/okgo/callback/Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/lzy/okgo/convert/FileConvert$2;->val$progress:Lcom/lzy/okgo/model/Progress;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->downloadProgress(Lcom/lzy/okgo/model/Progress;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
