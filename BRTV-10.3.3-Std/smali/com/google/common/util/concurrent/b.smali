.class public final synthetic Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/e0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/util/concurrent/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/AbstractService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/AbstractService;

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/util/concurrent/AbstractService;

    .line 16
    .line 17
    check-cast v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->a(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
