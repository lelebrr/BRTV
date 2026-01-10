.class Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->onError(Lcom/lzy/okgo/model/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

.field final synthetic val$error:Lcom/lzy/okgo/model/Response;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->val$error:Lcom/lzy/okgo/model/Response;

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
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->val$error:Lcom/lzy/okgo/model/Response;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;->this$0:Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/lzy/okgo/callback/Callback;->onFinish()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
