.class public final synthetic Lcom/google/common/util/concurrent/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/util/concurrent/Service;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Service;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/util/concurrent/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/Service;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/Service;

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/util/concurrent/AbstractIdleService;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AbstractIdleService;->a(Lcom/google/common/util/concurrent/AbstractIdleService;Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/Service;

    .line 15
    .line 16
    check-cast v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->a(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
