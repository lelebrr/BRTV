.class Lcom/lzy/okgo/convert/FileConvert$1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/convert/FileConvert;->convertResponse(Lokhttp3/Response;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/convert/FileConvert;


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/convert/FileConvert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/convert/FileConvert$1;->this$0:Lcom/lzy/okgo/convert/FileConvert;

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
    iget-object v0, p0, Lcom/lzy/okgo/convert/FileConvert$1;->this$0:Lcom/lzy/okgo/convert/FileConvert;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/lzy/okgo/convert/FileConvert;->access$000(Lcom/lzy/okgo/convert/FileConvert;Lcom/lzy/okgo/model/Progress;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
