.class Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/net/http/UrlRequest$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;->getStatus()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

.field final synthetic val$conditionVariable:Landroidx/media3/common/util/ConditionVariable;

.field final synthetic val$statusHolder:[I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;[ILandroidx/media3/common/util/ConditionVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->this$0:Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$statusHolder:[I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onStatus(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$statusHolder:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/datasource/HttpEngineDataSource$UrlRequestWrapper$1;->val$conditionVariable:Landroidx/media3/common/util/ConditionVariable;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
