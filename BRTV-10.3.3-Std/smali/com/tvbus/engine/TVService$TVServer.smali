.class Lcom/tvbus/engine/TVService$TVServer;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbus/engine/TVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TVServer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TVBusServer"


# instance fields
.field final synthetic this$0:Lcom/tvbus/engine/TVService;

.field tvcore:Lcom/tvbus/engine/TVCore;


# direct methods
.method private constructor <init>(Lcom/tvbus/engine/TVService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tvbus/engine/TVService$TVServer;->this$0:Lcom/tvbus/engine/TVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tvbus/engine/TVCore;->getInstance()Lcom/tvbus/engine/TVCore;

    move-result-object p1

    iput-object p1, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tvbus/engine/TVService;Lcom/tvbus/engine/TVService$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/tvbus/engine/TVService$TVServer;-><init>(Lcom/tvbus/engine/TVService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 2
    .line 3
    const/16 v1, 0x22c6

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tvbus/engine/TVCore;->setPlayPort(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/tvbus/engine/TVCore;->setServPort(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/tvbus/engine/TVCore;->setRunningMode(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/tvbus/engine/TVService$TVServer;->this$0:Lcom/tvbus/engine/TVService;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/tvbus/engine/TVCore;->init(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sput-boolean v1, Lcom/tvbus/engine/TVService;->bInited:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/tvbus/engine/TVService$TVServer;->tvcore:Lcom/tvbus/engine/TVCore;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/tvbus/engine/TVCore;->run()I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
