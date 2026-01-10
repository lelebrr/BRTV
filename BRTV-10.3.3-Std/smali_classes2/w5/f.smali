.class public final Lw5/f;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La4/r;Lw5/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw5/f;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lw5/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La4/r;Lw5/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lw5/f;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lw5/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lw5/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw5/f;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    iput-object p1, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lw5/f;->d:Ljava/lang/Object;

    return-void
.end method

.method private final b(Lw5/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v1, Lua/a;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, v2, p0, p1, v3}, Lua/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method private final c(Lw5/g;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lw5/g;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    check-cast v0, La4/r;

    .line 14
    .line 15
    new-instance v1, Lua/a;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v1, v2, p0, p1, v3}, Lua/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, La4/r;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lw5/g;)V
    .locals 4

    .line 1
    iget v0, p0, Lw5/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lw5/g;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lw5/f;->c:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    check-cast v0, La4/r;

    .line 19
    .line 20
    new-instance v1, Lua/a;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v1, v2, p0, p1, v3}, Lua/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, La4/r;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0, p1}, Lw5/f;->c(Lw5/g;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    invoke-direct {p0, p1}, Lw5/f;->b(Lw5/g;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
