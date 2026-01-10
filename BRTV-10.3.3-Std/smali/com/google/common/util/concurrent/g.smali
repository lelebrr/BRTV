.class public final synthetic Lcom/google/common/util/concurrent/g;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/util/concurrent/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/g;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/util/concurrent/g;->b:I

    iput-object p3, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Ld7/c5;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/util/concurrent/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ld7/c5;

    .line 13
    .line 14
    iget v2, p0, Lcom/google/common/util/concurrent/g;->b:I

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Ld7/c5;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/common/util/concurrent/g;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/google/common/util/concurrent/AggregateFuture;

    .line 27
    .line 28
    iget v2, p0, Lcom/google/common/util/concurrent/g;->b:I

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->b(Lcom/google/common/util/concurrent/AggregateFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
