.class public abstract Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile unsubscribed:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    const-class v0, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;

    .line 11
    .line 12
    const-string v1, "unsubscribed"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
