.class public final Lp8/c;
.super Lo9/d;
.source "MyApplication"


# instance fields
.field public final j:Li8/b;


# direct methods
.method public constructor <init>(Li8/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp8/c;->j:Li8/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G(Li8/c;)V
    .locals 2

    .line 1
    new-instance v0, Lp8/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lp8/b;-><init>(Li8/c;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Li8/c;->c(Lj8/b;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lp8/c;->j:Li8/b;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Li8/b;->a(Lp8/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/bumptech/glide/d;->G(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lp8/b;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    :try_start_1
    iget-object v1, v0, Lp8/b;->a:Li8/c;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Li8/c;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-static {v0}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/d;->y(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method
