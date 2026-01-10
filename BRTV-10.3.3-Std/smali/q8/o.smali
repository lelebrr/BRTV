.class public final Lq8/o;
.super Li8/e;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lj8/a;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq8/o;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    new-instance p1, Lj8/a;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lj8/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lq8/o;->b:Lj8/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq8/o;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lq8/o;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Lq8/o;->b:Lj8/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj8/a;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lj8/b;
    .locals 2

    .line 1
    iget-boolean p2, p0, Lq8/o;->c:Z

    .line 2
    .line 3
    sget-object v0, Lm8/b;->a:Lm8/b;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance p2, Lq8/m;

    .line 9
    .line 10
    iget-object v1, p0, Lq8/o;->b:Lj8/a;

    .line 11
    .line 12
    invoke-direct {p2, p1, v1}, Lq8/m;-><init>(Ljava/lang/Runnable;Lj8/a;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lq8/o;->b:Lj8/a;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lj8/a;->b(Lj8/b;)Z

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lq8/o;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Lq8/m;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p0}, Lq8/o;->a()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/d;->y(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
