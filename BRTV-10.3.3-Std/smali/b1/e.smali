.class public final Lb1/e;
.super La2/a;
.source "MyApplication"


# instance fields
.field public final synthetic b:Lb1/f;


# direct methods
.method public constructor <init>(Lb1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/e;->b:Lb1/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/e;->b:Lb1/f;

    .line 2
    .line 3
    iget-object v0, v0, Lb1/f;->a:Lb1/i;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lb1/i;->d(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I(La0/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/e;->b:Lb1/f;

    .line 2
    .line 3
    iput-object p1, v0, Lb1/f;->c:La0/f;

    .line 4
    .line 5
    new-instance p1, La7/f;

    .line 6
    .line 7
    iget-object v1, v0, Lb1/f;->c:La0/f;

    .line 8
    .line 9
    new-instance v2, Lu6/e;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v2, v3}, Lu6/e;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lb1/f;->a:Lb1/i;

    .line 16
    .line 17
    iget-object v3, v3, Lb1/i;->h:Lb1/d;

    .line 18
    .line 19
    invoke-direct {p1, v1, v2, v3}, La7/f;-><init>(La0/f;Lu6/e;Lb1/d;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, Lb1/f;->b:La7/f;

    .line 23
    .line 24
    iget-object p1, v0, Lb1/f;->a:Lb1/i;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lb1/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :try_start_0
    iput v1, p1, Lb1/i;->c:I

    .line 45
    .line 46
    iget-object v1, p1, Lb1/i;->b:Lp/f;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lb1/i;->b:Lp/f;

    .line 52
    .line 53
    invoke-virtual {v1}, Lp/f;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lb1/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p1, Lb1/i;->d:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v2, Landroidx/leanback/widget/n0;

    .line 68
    .line 69
    iget p1, p1, Lb1/i;->c:I

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-direct {v2, v0, p1, v3}, Landroidx/leanback/widget/n0;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    iget-object p1, p1, Lb1/i;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    .line 88
    .line 89
    throw v0
.end method
