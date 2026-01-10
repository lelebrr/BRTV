.class public final Lna/a;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    new-instance v2, Landroidx/appcompat/widget/r0;

    .line 12
    .line 13
    const/16 p3, 0x9

    .line 14
    .line 15
    invoke-direct {v2, p0, p2, p1, p3}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const-wide/16 v5, 0x32

    .line 23
    .line 24
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, v0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, v0, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->m:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
